public  class MyCity {
    public void cityInformation(){
        date kurulusYili=date.newInstance(18677, 7, 1);
        system.debug('Kanadanin kurulusu is: '+kurulusYili);

        time gunDogumSaati=time.newInstance(8, 2, 0, 0);
        system.debug('Edmonton gun dogum saati: ' +gunDogumSaati);

        date bugun=date.today();
        system.debug('bugunun tarihi: '+ bugun);

        date ucSeneOnceBugun=bugun.addmonths(-36);
        system.debug('uc sene once bugunun tarihi: ' +ucSeneOnceBugun);
        }




    /*public void cityInformation(){

        string istedigimUlke='Turkiye';
        string istedigimSehir='Mardin';
        
        system.debug('Gezmek istedigim ulke'+' '+istedigimUlke+' '+'sehir'+' '+istedigimSehir);


        }*/
    /*public void stringMethod(){
        string cumle1 = 'I am a Salesforce Developer';
        boolean kontrol1 = cumle1.contains('force');
        System.debug('contains metodu; force '+ cumle1 + ' icinde var mı? = ' + kontrol1);
        System.debug(cumle1  + ' cumlesinde ' + cumle1.length() + ' karakter vardır');
        
        string  stringMethod='I am a Salesforce Developer'.toUpperCase();
        system.debug(stringMethod);



        

        }*/
        /*public void dateMethod(){
            Date todayDate = date.today();
            system.debug('today\'s date is ' + todayDate);      
            DateTime myDateTime = DateTime.now();
            system.debug('Bugunun tarihi ve saati: ' + myDateTime);
            DateTime newDateTime = myDateTime.addHours(50);
            system.debug('50 saat sonrasinin tarihi ve saati: ' + newDateTime);
           
         

        }*/

    
}
