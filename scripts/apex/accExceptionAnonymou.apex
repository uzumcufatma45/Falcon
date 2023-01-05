try{
    string s;
    s.toLowerCase();
Account acc=new Account();
insert acc;

}catch (Exception Ex){
System.debug('Something went wrong buddy');
system.debug('ex---> '+ex.getMessage());
system.debug('ex line number---> '+ex.getLineNumber());

}
system.debug('Apex is SIMPLE');
