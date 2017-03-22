package com.treelogic.proteus.kafka.producer;

import org.apache.htrace.fasterxml.jackson.databind.ObjectMapper;
import org.apache.kafka.clients.producer.ProducerConfig;
import org.apache.kafka.clients.producer.KafkaProducer;
import org.apache.kafka.clients.producer.Producer;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;


import org.apache.hadoop.fs.Path;
import org.apache.hadoop.conf.Configuration;
import org.apache.hadoop.fs.FileSystem;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.URI;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Properties;

public class ProteusKafkaProducer {

	public static String PROTEUS_KAFKA_TOPIC = "proteus";
	public static Double COIL_SPEED = 120000.0;
	public static String LOCAL_PATH = "/opt/proteus-dataset/PROTEUS.csv";

	private static final Logger logger = LoggerFactory.getLogger(ProteusKafkaProducer.class);
	private static Producer<String, String> producer;

	public static void main(String[] args) throws IOException {

		try {
			if ( !args[0].isEmpty() ) PROTEUS_KAFKA_TOPIC = args[0];
			if ( !args[1].isEmpty() ) COIL_SPEED = Double.parseDouble(args[1]) * 1000;
		} catch (Exception e){
		}

		logger.info("Starting Proteus Kafka producer...");
		logger.info("Kafka Topic: " + PROTEUS_KAFKA_TOPIC);
		logger.info("Coil production speed: " + COIL_SPEED);


		int loopIteration = 1;
		Properties properties = new Properties();
		properties.put(ProducerConfig.BOOTSTRAP_SERVERS_CONFIG,
				"localhost:9092");
		properties.put(ProducerConfig.KEY_SERIALIZER_CLASS_CONFIG,
				"org.apache.kafka.common.serialization.StringSerializer");
		properties.put(ProducerConfig.VALUE_SERIALIZER_CLASS_CONFIG,
				"org.apache.kafka.common.serialization.StringSerializer");
		properties.put(ProducerConfig.ACKS_CONFIG, "all");
		properties.put(ProducerConfig.REQUEST_TIMEOUT_MS_CONFIG, 100);

		producer = new KafkaProducer<>(properties);

		ObjectMapper mapper = new ObjectMapper();
		
		DateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss a z");
		mapper.setDateFormat(df);

		ProducerLogic logic = new ProducerLogic();

		// Read line by line HDFS

		while (true) {
			logger.info("Starting a new kafka iteration over the HDFS: ", (loopIteration++));
			
			BufferedReader br = new BufferedReader(
					new FileReader(LOCAL_PATH));

			try {
				// La primera línea del CSV es una cabecera
				String line = br.readLine();

				// Primera linea a procesar
				line = br.readLine();
				while (line != null) {
					String [] mensaje = line.split(",");
					Coil coil = new Coil().generateCoilObject(mensaje);
					logic.buffer(coil, producer, PROTEUS_KAFKA_TOPIC, COIL_SPEED);
					line = br.readLine();

				}
			} catch (Exception e) {
				logger.error("Error in the Proteus Kafka producer", e);
			}
		}
	}



}
