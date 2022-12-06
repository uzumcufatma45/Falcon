public class Dog {
    public string name;
    public string color;
    public integer age;
    public static integer count=0;

    public Dog(){
        count++;
        age=2;

    }
    public void checkAge(){
    if(age>0 && age<=1){
        system.debug('puppy dog');
    }
    else if (age>1 && age<=3){
        system.debug('young dog');
    }
    else if (age>3 && age<=5){
        system.debug('adult dog');
      
    }else if (age>=5  ){
        system.debug('old dog');
      
    }

    }
    public Dog(string name1,string color1,integer age1){
        name=name1;
        color=color1;
        age=age1;
        count++;


    }
    public void showDogCount(){
        system.debug('The number of dogs: '+count);
    }
    
}
