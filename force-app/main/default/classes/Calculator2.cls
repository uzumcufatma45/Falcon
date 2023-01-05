public class Calculator2 {
    public static void welcomeMessage(){
        system.debug('welcome to apex calc');

    }
    public static void printNewMessages(string msg){
        System.debug(msg);
    }
    public static integer add(integer a, integer b){
        integer sum = a + b;
        return sum;
      }
   
      public static integer add(integer x, integer y, integer z){
             integer sum = x + y + z;
             return sum;
      }
}
