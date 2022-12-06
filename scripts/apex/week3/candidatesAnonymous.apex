Candidates.CompanyName='SoftInnovas';
Candidates.printCandidateInfo();
system.debug('START count of candidates= '+Candidates.countCandidates);

Candidates c1=new Candidates();


c1.Name='Jerry';
c1.Gender='Male';
c1.printCandidate();

Candidates c5=new Candidates('Newman ','Male');
c5.printCandidate();
Candidates c2=new Candidates();
c2.Name='Elaine';
c2.Gender='Female';
c2.printCandidate();


Candidates.CompanyName='Vandelay Industries';

Candidates c3=new Candidates();
c3.Name='George';
c3.Gender='Male';
c3.printCandidate();


system.debug('------');
c1.printCandidate();
system.debug('------');
c2.printCandidate();

Candidates c4=new Candidates();
c4.Name='Krame';
c4.Gender='Male';
c4.printCandidate();


Candidates.printCandidateInfo();
system.debug('END count of candidates= '+Candidates.countCandidates);


