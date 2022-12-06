public class Calculater {
    public void welcomeMessage(){
        system.debug('welcome to apex calc,updated');

    }
    public void printNewMessages(string msg){
        System.debug(msg);
    }
    public string printAndReturnMessage(string msg){
        string returnString=msg +'...Ok cool';
        return returnString;
    }
    public integer add(integer a,integer b){
        integer sum=a+b;
        return sum;
    }


    
}
