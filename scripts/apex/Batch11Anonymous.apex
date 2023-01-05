List<Contact> conList = new List<Contact>();
contact cn1 = new contact();
cn1.FirstName = 'Jack';
cn1.LastName = 'Fire';
conList.add(cn1);

contact cn2 = new contact();
cn2.FirstName = 'Marry';
cn2.LastName = 'Fire';
conList.add(cn2);

insert conList;

for (contact c : conList) {
    c.FirstName += ' Update 2';
    c.LastName += ' Update 2';
}
update conList;







