 /*MyCity mc=new  MyCity();
// mc.cityInformation();
 //mc.stringMethod();
 mc.dateMethod();*/
//MyCity mc=new MyCity();
//mc.cityInformation();

/*MyCity mc=new MyCity();


date myBirthDate=date.newInstance(1984, 12, 6);
system.debug('my birthdate is:' +myBirthDate);

integer gun=6;
integer ay=12;
integer yil=1984;
integer sum=gun+ay+yil;
system.debug('dogum tarihimin rakamlarinin toplami:'  +sum );*/

MyCity mc=new MyCity();
date mariaCurie=date.newInstance(1987, 11, 7);
System.debug('Maria Curienin dogum tarihi: ' +mariaCurie);
date bugun=date.today();
system.debug('bugunun tarihi: '+bugun);
integer gunFarki=mariaCurie.daysBetween( bugun);
system.debug('iki tarih arasindaki gun farki '+gunFarki);
integer ayFarki=mariaCurie.monthsBetween(bugun);
system.debug('iki tarih arasindaki ay farki '+ayFarki);
integer seneFarki=gunFarki/365;
system.debug('iki tarih arasindaki yil farki ' +seneFarki);
boolean artikYil=date.isLeapyear(1867);
system.debug('Maria Curienin dogum yili artik ilmidir?: '+artikYil);






