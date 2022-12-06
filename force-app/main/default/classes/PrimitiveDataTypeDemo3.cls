public  class PrimitiveDataTypeDemo3 {
    public void printNewDateTime() {
        Datetime dt3=Datetime.newInstance(2021,5,15,9,5,40);
        system.debug('dt3 is' + dt3);
        
        Datetime dt4_1=datetime.newInstance(300000);
        system.debug('dt4_1 ' +dt4_1);

        Long longtime=1487954621154L;
        datetime dt4=datetime.newInstance(longtime);
        system.debug('dt4 '+ dt4);

        datetime dt6=datetime.now();
        system.debug('dt 6 current time is'+ dt6);
        datetime dt5=datetime.newInstanceGMT(1998,8,4,5,1,4);
        system.debug('dt5 is '+ dt5);

    }
}
