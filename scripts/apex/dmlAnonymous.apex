account acc = new account();
acc.name = 'Salesforce';
insert acc;

account ac = [select id, name from Account where name = 'Salesforce' limit 1];
ac.name = 'Salesforce Inc.';
update ac;


/*List<Account> accList = new List<Account>();
account acc1 = new account();
acc1.name = 'Account Demo 1';
accList.add(acc1);
//insert acc1;

account acc2 = new account();
acc2.name = 'Account Demo 2';
accList.add(acc2);
//insert acc2;

account acc3 = new account();
acc3.name = 'Account Demo 3';
accList.add(acc3);
//insert acc3;

insert accList;*/

List<Account> accList = new List<Account>();
for(integer i=1 ; i<=3 ; i++){
    account acc = new account();
    acc.name = 'Account Demo '+ i;
    accList.add(acc);
}
insert accList;

integer a = 1;
List<contact> conList = new List<Contact>();
for(account acc : accList){
    contact con = new Contact();
    con.lastName = 'Contact '+ a;
    a++;
    con.AccountId = acc.id;
    conList.add(con);
}
insert conList;