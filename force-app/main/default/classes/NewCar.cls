public class NewCar {
    public integer currentSpeed=0;
    public string carType='';
    public string carName='';
    
        public string startCar(string carName,string carType){
        string startingDescription=carName+' ' +carType;
        system.debug(startingDescription);
        return startingDescription;
        }
        public integer Accelerate(integer x){
        currentSpeed +=x;
        system.debug('Speed: ' +currentSpeed);
        return currentSpeed;

        }
        public integer Brake(integer y){
            currentSpeed -=y;
            system.debug('Speed: ' +currentSpeed);
            return currentSpeed;
        }
        public integer stopCar(){
            currentSpeed=0;
            system.debug('Current Speed is : ' +currentSpeed);
            return currentSpeed;
        }
        public string checkSpeed(){
            string mode='';
            if(currentSpeed>0 && currentSpeed<=30){
                mode='city mode';
                system.debug(mode);
            }else if (currentSpeed<=60 && currentSpeed>31){
                mode='economy mode';
                system.debug(mode);

            }else if(currentSpeed>60){
                mode='sport mode';
                system.debug(mode);

            }
            return mode;

        }



}