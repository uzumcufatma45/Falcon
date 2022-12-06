public class MapDemo {
    public static string retrieveMonth (integer m) {
string monthName='';
//new map
map<integer, string> monthmap=new map<integer, string>();
monthmap.put(1,'January');
monthmap.put(2,'February');
monthmap.put(3,'March');
monthmap.put(4,'April');
monthmap.put(5,'May');
monthmap.put(6,'June');
monthmap.put(7,'JUly');
monthmap.put(8,'August');
monthmap.put(9,'September');
monthmap.put(10,'november');
monthmap.put(11,'october');
monthmap.put(12,'december');

boolean keyExist=monthmap.containsKey(m);
if(keyExist){
    monthName=monthmap.get(m)
}else{
    monthName='No such month exist.please behave!';
}

monthName=monthmap.get(m);

return monthName;
    }
}
