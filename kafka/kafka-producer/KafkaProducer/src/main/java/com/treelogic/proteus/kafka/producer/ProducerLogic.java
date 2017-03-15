package com.treelogic.proteus.kafka.producer;

import org.apache.kafka.clients.producer.Producer;
import org.apache.kafka.clients.producer.ProducerRecord;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Random;

/**
 * Created by pablo.mesa on 13/03/17.
 */
public class ProducerLogic {

    ArrayList<Coil> coilsbuffer = new ArrayList<>();
    ArrayList<Double> xpositionsbuffer = new ArrayList<>();
    Integer identificadorbobina = Integer.MIN_VALUE;
    ArrayList<Double> stoptimers = new ArrayList<>();
    Double tiempogeneracionbobina = 0.0;
    Double COIL_SPEED = 120000.0;
    Integer contadorestimestamp;
    public Producer<String, String> productor;
    public String PROTEUS_KAFKA_TOPIC = "";
    private static ObjectMapper mapper = new ObjectMapper();
    String timeStampInicioBobina;
    String timeStampFinBobina;
    Random randomize;



    ProducerLogic(){}

    public void setTopic(String topic){ this.PROTEUS_KAFKA_TOPIC = topic; }

    public void buffer(Coil coil, Producer<String,String> producer, String topic, Double COIL_SPEED) throws InterruptedException {

        this.COIL_SPEED = COIL_SPEED;
        setTopic(topic);
        this.productor = producer;
        Integer idcoil = coil.getID();

        Double valor = coil.getPositionX();
        //System.out.println("Valor: " + valor);
        //System.out.println("Valor Gaussiano: " + randomize.nextGaussian());


        if ( identificadorbobina.equals(idcoil)){
            generarBufferBobinas(coil);
        } else {
            if ( !coilsbuffer.isEmpty()) imprimirBufferBobinas();
            identificadorbobina = idcoil;
        }
    }

    public void generarBufferBobinas(Coil coil){
        coilsbuffer.add(coil);
        xpositionsbuffer.add(coil.getPositionX());
    }

    public void imprimirBufferBobinas() throws InterruptedException {
        getProductionTimeDelays();
        publishCoilsKafka();
        this.tiempogeneracionbobina = 0.0;

        stoptimers.clear();
        coilsbuffer.clear();
        xpositionsbuffer.clear();
    }

    public void getProductionTimeDelays(){
        int i = 0;
        double delay = 0.0;
        while ( i < xpositionsbuffer.size()-1){

            delay = xpositionsbuffer.get(i+1) - xpositionsbuffer.get(i);
            this.stoptimers.add(delay);
            this.tiempogeneracionbobina += delay;
            i++;
        }

    }

    public void publishCoilsKafka() throws InterruptedException {

        contadorestimestamp = 0;
        int i = 0;
        int j = 0;

        timeStampInicioBobina = new SimpleDateFormat("yyyy.MM.dd.HH.mm.ss").format(new java.util.Date());

        String timeStamp = new SimpleDateFormat("yyyy.MM.dd.HH.mm.ss").format(new java.util.Date());

        coilsbuffer.get(i).setTimeStamp(timeStamp);
        String message = null;
        try {
            message = mapper.writeValueAsString(coilsbuffer.get(i));
        } catch (JsonProcessingException e) {
            e.printStackTrace();
        }

        productor.send(new ProducerRecord<String, String>(PROTEUS_KAFKA_TOPIC, message));

        contadorestimestamp++;
        i++;

        while ( i < coilsbuffer.size()){
            Thread.sleep((long) (stoptimers.get(j) * (COIL_SPEED/tiempogeneracionbobina)));
            timeStamp = new SimpleDateFormat("yyyy.MM.dd.HH.mm.ss").format(new java.util.Date());
            coilsbuffer.get(i-1).setTimeStamp(timeStamp);
            try {
                message = mapper.writeValueAsString(coilsbuffer.get(i-1));
            } catch (JsonProcessingException e) {
                e.printStackTrace();
            }
            productor.send(new ProducerRecord<String, String>(PROTEUS_KAFKA_TOPIC, message));
            contadorestimestamp++;
            i++;
            j++;
        }

        timeStampFinBobina = new SimpleDateFormat("yyyy.MM.dd.HH.mm.ss").format(new java.util.Date());

        System.out.println("Inicio: " + timeStampInicioBobina + ", Fin: " + timeStampFinBobina);



    }

    public void printInfo(){
        System.out.println("Variables globales");
        System.out.println("COIL SPEED: " + this.COIL_SPEED);
        System.out.println("TOPIC: " + this.PROTEUS_KAFKA_TOPIC);
        System.out.println("Info Bobina");
        System.out.println("Tamaño Buffer de la bobina: " + coilsbuffer.size());
        System.out.println("Tamaño Posiciones X de la bobina: " + xpositionsbuffer.size());
        System.out.println("Tiempo generación de la bobina: " + tiempogeneracionbobina);
        System.out.println("Tamaño vector delays (buffer - 1): " + stoptimers.size());
        System.out.println("Factor delay a multiplicar por vector_delay[i]: " + (COIL_SPEED/tiempogeneracionbobina));
        System.out.println("timeStamps Asignados: " + contadorestimestamp);
        System.out.println("timeStampInicioBobina: " + timeStampInicioBobina);
        System.out.println("timeStampFinBobina: " + timeStampFinBobina);
    }


}
