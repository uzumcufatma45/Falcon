public class ContactTriggerHandler11 {
    public static void otherPhoneOfContact(List<Contact> trgNew, Map<Id,Contact> trgNewMap) {
         //insert edilen tum contactlardan accounta bagli olanlari secelim..
         set<id> conIds = new set<id>();
         for (contact con : trgNew) {
             if (con.AccountId != null) {
                 conIds.add(con.id);
             }
         }
         //Accounta bagli olan tum Contactlari accountun(parent) phone ile beraber SOQL yapiyoruz..
         List<Contact> conList = [select id, otherPhone, account.phone from Contact where id IN :conIds];
 
         //Bu listeyi bir for each dongusunun icine alip otherPhone guncellemesini yapalim..
         for (Contact cn : conList) {
             cn.OtherPhone = cn.account.phone;
         }
         update conList;
    }
    public static void otherPhoneOfContact2(List<Contact> triggerNew, Map<Id, Contact> triggerNewMap) {
     //Account idlerin key oldugu ilgili accountun recordunun da value oldugu bir map olusturup. contactlarin bagli oldugu accountlarin recordlarini burada toplarim..
     Map<Id, Account> AccMap = new Map<Id, Account>();
     set<id> accIds = new Set<id>();
     List<Contact> conList = new List<Contact>();
     for (contact con : triggerNew) {
         if (con.AccountId != null) {
             accIds.add(con.AccountId);
             //accounta bagli contactlari bir listeye koyduk
             conList.add(con);
         }
     }
     //SOQL ile bu accountlarin recordlarini getirelim..
     List<Account> accList = [select id, name, phone from account where id IN :accIds];
 
     //Mapi dolduruyoruz..
     for (account acc : accList) {
         AccMap.put(acc.id, acc);
     }
 
     //Accounta bagli olan create edilmis contaclari for dongusune alip otherPhone guncelliyoruz..
     for (contact con : conList) {
         con.OtherPhone = AccMap.get(con.accountId).phone;
     }
     
     
 
    }
 }
