system.debug('tesla created');
Car tesla=new car();
tesla.carName='model S';
tesla.carColor='Black';

tesla.switchOn();
system.debug('tesla->' +tesla);
system.debug('tesla done');
tesla.drive();
tesla.driveAtMaxSpeed();


system.debug('bmw created');
car bmw = new car();
bmw.carName='xyz';
bmw.carColor = 'white';
bmw.switchOn();
system.debug('bmw car color -> ' + bmw.carColor);
system.debug('bmw  -> ' + bmw);
bmw.drive();
system.debug('tesla done');

car toyota=new car();
toyota.switchOn();
toyota.carName='corolla';
toyota.drive();


