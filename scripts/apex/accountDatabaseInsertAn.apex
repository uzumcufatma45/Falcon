Account ac1=new account();
ac1.Name='abc test';
ac1.Industry='Energy';

Account ac2=new account();
ac2.Name='xyx test';

account ac3=new account();
account ac4=new account();

list<account> listAcc=new list<account>{ac1,ac2,ac3,ac4};
List<Database.SaveResult> results=Database.insert(listAcc,false);

for(Database.SaveResult r:results){
    if(r.isSuccess()){
        system.debug('inserted successfully ,record id is '+ r.getId());
    }else{
        system.debug('error out.errors aren '+ r.getErrors());
    }
}
