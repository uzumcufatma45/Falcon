Dml11.createAccountsAndContacts(8);
List<Contact> conList = [select id, lastName from Contact where lastName like '%Contact%' limit 10];
System.debug(conList.size());

//delete accList;
///delete conList;

List<Account> accList = [select id, name from Account where name like '%Account%' limit 20];
System.debug(accList.size());

//delete accList;


//System.debug('delete sonrasi ' + accList.size());
//System.debug('delete sonrasi ' + conList.size());