package com.treelogic.proteus.kafka.producer;

/**
 * created by pablo.mesa on 2/02/17.
 */
public class Coil {


    public Double positionX;
    public Double positionY;
    public Integer id;

    public Double c0001, c0002, c0003, c0004, c0005, c0006, c0007, c0008, c0009, c0010;
    public Double c0011, c0012, c0013, c0014, c0015, c0016, c0017, c0018, c0019, c0020;
    public Double c0021, c0022, c0023, c0024, c0025, c0026, c0027, c0028, c0029, c0030;
    public Double c0031, c0032, c0033, c0034, c0035, c0036, c0037, c0038, c0039, c0040;
    public Double c0041, c0042, c0043, c0044, c0045, c0046, c0047, c0048, c0049, c0050;
    public Double c0051, c0052, c0053, c0054, c0055, c0056;

    public String timeStamp;


    public Coil(){};

    public Coil(int id, Double positionX, Double positionY){
        this.id = id;
        this.positionX = positionX;
        this.positionY = positionY;
    }

    public Coil(Double positionX, Double positionY, int id, Double c0001, Double c0002, Double c0003, Double c0004, Double c0005, Double c0006, Double c0007, Double c0008, Double c0009, Double c0010, Double c0011, Double c0012, Double c0013, Double c0014, Double c0015, Double c0016, Double c0017, Double c0018, Double c0019, Double c0020, Double c0021, Double c0022, Double c0023, Double c0024, Double c0025, Double c0026, Double c0027, Double c0028, Double c0029, Double c0030, Double c0031, Double c0032, Double c0033, Double c0034, Double c0035, Double c0036, Double c0037, Double c0038, Double c0039, Double c0040, Double c0041, Double c0042, Double c0043, Double c0044, Double c0045, Double c0046, Double c0047, Double c0048, Double c0049, Double c0050, Double c0051, Double c0052, Double c0053, Double c0054, Double c0055, Double c0056){
        this.id = id;
        this.positionX = positionX;
        this.positionY = positionY;
        this.c0001 = c0001;
        this.c0002 = c0002;
        this.c0003 = c0003;
        this.c0004 = c0004;
        this.c0005 = c0005;
        this.c0006 = c0006;
        this.c0007 = c0007;
        this.c0008 = c0008;
        this.c0009 = c0009;
        this.c0010 = c0010;
        this.c0011 = c0011;
        this.c0012 = c0012;
        this.c0013 = c0013;
        this.c0014 = c0014;
        this.c0015 = c0015;
        this.c0016 = c0016;
        this.c0017 = c0017;
        this.c0018 = c0018;
        this.c0019 = c0019;
        this.c0020 = c0020;
        this.c0021 = c0021;
        this.c0022 = c0022;
        this.c0023 = c0023;
        this.c0024 = c0024;
        this.c0025 = c0025;
        this.c0026 = c0026;
        this.c0027 = c0027;
        this.c0028 = c0028;
        this.c0029 = c0029;
        this.c0030 = c0030;
        this.c0031 = c0031;
        this.c0032 = c0032;
        this.c0033 = c0033;
        this.c0034 = c0034;
        this.c0035 = c0035;
        this.c0036 = c0036;
        this.c0037 = c0037;
        this.c0038 = c0038;
        this.c0039 = c0039;
        this.c0040 = c0040;
        this.c0041 = c0041;
        this.c0042 = c0042;
        this.c0043 = c0043;
        this.c0044 = c0044;
        this.c0045 = c0045;
        this.c0046 = c0046;
        this.c0047 = c0047;
        this.c0048 = c0048;
        this.c0049 = c0049;
        this.c0050 = c0050;
        this.c0051 = c0051;
        this.c0052 = c0052;
        this.c0053 = c0053;
        this.c0054 = c0054;
        this.c0055 = c0055;
        this.c0056 = c0056;

        this.timeStamp = null;
    }

    // Getters

    public int getID(){return id;}
    public Double getPositionX(){ return positionX;}
    public Double getPositionY(){ return positionY;}

    public Double getc0001(){ return c0001;}
    public Double getc0002(){ return c0002;}
    public Double getc0003(){ return c0003;}
    public Double getc0004(){ return c0004;}
    public Double getc0005(){ return c0005;}
    public Double getc0006(){ return c0006;}
    public Double getc0007(){ return c0007;}
    public Double getc0008(){ return c0008;}
    public Double getc0009(){ return c0009;}
    public Double getc0010(){ return c0010;}

    public Double getc0011(){ return c0011;}
    public Double getc0012(){ return c0012;}
    public Double getc0013(){ return c0013;}
    public Double getc0014(){ return c0014;}
    public Double getc0015(){ return c0015;}
    public Double getc0016(){ return c0016;}
    public Double getc0017(){ return c0017;}
    public Double getc0018(){ return c0018;}
    public Double getc0019(){ return c0019;}
    public Double getc0020(){ return c0020;}

    public Double getc0021(){ return c0021;}
    public Double getc0022(){ return c0022;}
    public Double getc0023(){ return c0023;}
    public Double getc0024(){ return c0024;}
    public Double getc0025(){ return c0025;}
    public Double getc0026(){ return c0026;}
    public Double getc0027(){ return c0027;}
    public Double getc0028(){ return c0028;}
    public Double getc0029(){ return c0029;}
    public Double getc0030(){ return c0030;}

    public Double getc0031(){ return c0031;}
    public Double getc0032(){ return c0032;}
    public Double getc0033(){ return c0033;}
    public Double getc0034(){ return c0034;}
    public Double getc0035(){ return c0035;}
    public Double getc0036(){ return c0036;}
    public Double getc0037(){ return c0037;}
    public Double getc0038(){ return c0038;}
    public Double getc0039(){ return c0039;}
    public Double getc0040(){ return c0040;}

    public Double getc0041(){ return c0041;}
    public Double getc0042(){ return c0042;}
    public Double getc0043(){ return c0043;}
    public Double getc0044(){ return c0044;}
    public Double getc0045(){ return c0045;}
    public Double getc0046(){ return c0046;}
    public Double getc0047(){ return c0047;}
    public Double getc0048(){ return c0048;}
    public Double getc0049(){ return c0049;}
    public Double getc0050(){ return c0050;}

    public Double getc0051(){ return c0051;}
    public Double getc0052(){ return c0052;}
    public Double getc0053(){ return c0053;}
    public Double getc0054(){ return c0054;}
    public Double getc0055(){ return c0055;}
    public Double getc0056(){ return c0056;}

    public String getTimeStamp(){ return timeStamp;}

    // Setters

    public void setID(int id){ this.id = id;}
    public void setPositionX(Double positionX){ this.positionX = positionX;}
    public void setPositionY(Double positionY){ this.positionY = positionY;}

    public void setc0001(Double c0001){ this.c0001 = c0001;}
    public void setc0002(Double c0002){ this.c0002 = c0002;}
    public void setc0003(Double c0003){ this.c0003 = c0003;}
    public void setc0004(Double c0004){ this.c0004 = c0004;}
    public void setc0005(Double c0005){ this.c0005 = c0005;}
    public void setc0006(Double c0006){ this.c0006 = c0006;}
    public void setc0007(Double c0007){ this.c0007 = c0007;}
    public void setc0008(Double c0008){ this.c0008 = c0008;}
    public void setc0009(Double c0009){ this.c0009 = c0009;}
    public void setc0010(Double c0010){ this.c0010 = c0010;}

    public void setc0011(Double c0011){ this.c0011 = c0011;}
    public void setc0012(Double c0012){ this.c0012 = c0012;}
    public void setc0013(Double c0013){ this.c0013 = c0013;}
    public void setc0014(Double c0014){ this.c0014 = c0014;}
    public void setc0015(Double c0015){ this.c0015 = c0015;}
    public void setc0016(Double c0016){ this.c0016 = c0016;}
    public void setc0017(Double c0017){ this.c0017 = c0017;}
    public void setc0018(Double c0018){ this.c0018 = c0018;}
    public void setc0019(Double c0019){ this.c0019 = c0019;}
    public void setc0020(Double c0020){ this.c0020 = c0020;}

    public void setc0021(Double c0011){ this.c0011 = c0011;}
    public void setc0022(Double c0012){ this.c0012 = c0012;}
    public void setc0023(Double c0013){ this.c0013 = c0013;}
    public void setc0024(Double c0014){ this.c0014 = c0014;}
    public void setc0025(Double c0015){ this.c0015 = c0015;}
    public void setc0026(Double c0016){ this.c0016 = c0016;}
    public void setc0027(Double c0017){ this.c0017 = c0017;}
    public void setc0028(Double c0018){ this.c0018 = c0018;}
    public void setc0029(Double c0019){ this.c0019 = c0019;}
    public void setc0030(Double c0020){ this.c0020 = c0020;}

    public void setc0031(Double c0031){ this.c0031 = c0031;}
    public void setc0032(Double c0032){ this.c0032 = c0032;}
    public void setc0033(Double c0033){ this.c0033 = c0033;}
    public void setc0034(Double c0034){ this.c0034 = c0034;}
    public void setc0035(Double c0035){ this.c0035 = c0035;}
    public void setc0036(Double c0036){ this.c0036 = c0036;}
    public void setc0037(Double c0037){ this.c0037 = c0037;}
    public void setc0038(Double c0038){ this.c0038 = c0038;}
    public void setc0039(Double c0039){ this.c0039 = c0039;}
    public void setc0040(Double c0040){ this.c0040 = c0040;}

    public void setc0041(Double c0041){ this.c0011 = c0041;}
    public void setc0042(Double c0042){ this.c0012 = c0042;}
    public void setc0043(Double c0043){ this.c0013 = c0043;}
    public void setc0044(Double c0044){ this.c0014 = c0044;}
    public void setc0045(Double c0045){ this.c0015 = c0045;}
    public void setc0046(Double c0046){ this.c0016 = c0046;}
    public void setc0047(Double c0047){ this.c0017 = c0047;}
    public void setc0048(Double c0048){ this.c0018 = c0048;}
    public void setc0049(Double c0049){ this.c0019 = c0049;}
    public void setc0050(Double c0050){ this.c0020 = c0050;}

    public void setc0051(Double c0051){ this.c0051 = c0051;}
    public void setc0052(Double c0052){ this.c0052 = c0052;}
    public void setc0053(Double c0053){ this.c0053 = c0053;}
    public void setc0054(Double c0054){ this.c0054 = c0054;}
    public void setc0055(Double c0055){ this.c0055 = c0055;}
    public void setc0056(Double c0056){ this.c0056 = c0056;}

    public void setTimeStamp(String timeStamp){ this.timeStamp = timeStamp;}


    public Coil generateCoilObject(String[] mensaje){

        int k = 0;
        Double[] valores = new Double[59];

        while ( k < 59){
            try {
                if (mensaje[k].isEmpty() || mensaje[k].equals("null")) valores[k] = Double.NaN;
                if (!mensaje[k].isEmpty()) valores[k] = Double.parseDouble(mensaje[k]);
                k++;
            } catch ( IndexOutOfBoundsException e){
                valores[k] = Double.NaN;
                k++;
            }
            catch ( NumberFormatException ex){
                valores[k] = Double.NaN;
                k++;
            }
        }

        Coil bobina = new Coil(
                (valores[0]),
                (valores[1]),
                (valores[2].intValue()),
                (valores[3]),
                (valores[4]),
                (valores[5]),
                (valores[6]),
                (valores[7]),
                (valores[8]),
                (valores[9]),
                (valores[10]),
                (valores[11]),
                (valores[12]),
                (valores[13]),
                (valores[14]),
                (valores[15]),
                (valores[16]),
                (valores[17]),
                (valores[18]),
                (valores[19]),
                (valores[20]),
                (valores[21]),
                (valores[22]),
                (valores[23]),
                (valores[24]),
                (valores[25]),
                (valores[26]),
                (valores[27]),
                (valores[28]),
                (valores[29]),
                (valores[30]),
                (valores[31]),
                (valores[32]),
                (valores[33]),
                (valores[34]),
                (valores[35]),
                (valores[36]),
                (valores[37]),
                (valores[38]),
                (valores[39]),
                (valores[40]),
                (valores[41]),
                (valores[42]),
                (valores[43]),
                (valores[44]),
                (valores[45]),
                (valores[46]),
                (valores[47]),
                (valores[48]),
                (valores[49]),
                (valores[50]),
                (valores[51]),
                (valores[52]),
                (valores[53]),
                (valores[54]),
                (valores[55]),
                (valores[56]),
                (valores[57]),
                (valores[58])
        );

        return bobina;
    }



}