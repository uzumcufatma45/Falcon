public class Car {
    public string carColor='';
    public string carName;



    private integer maxSpeed=150;
    public void switchOn(){
    
    system.debug('  Starting the car  ');
    return switchOnTime();
    }
    public void drive(){
       
        system.debug('driving' + carName + 'of color' + carColor);
    }
    public void driveAtMaxSpeed(){
        string drivingDescription='Driving' + carName + 'at' + maxSpeed + 'km/hr';
        system.debug(drivingDescription);
    }
}

//SAVE CLASS.
//right click.-sfdx deploy

//class.we deploy
//anonymous apexx,we execute
