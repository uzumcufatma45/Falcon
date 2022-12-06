public  class Candidates {
    public string Name;
    public string Gender;
    public static string CompanyName;
    public static integer countCandidates=0;

    public Candidates(){
        countCandidates++;

    }
    public Candidates(string n,string g){
        this();
        this.name=n;
        this.Gender=g;
        

    }

    public void printCandidate(){
        system.debug('Candidate Name is '+Name+'('+Gender+')');
        system.debug('Company name is '+CompanyName);

    }
    public static void printCandidateInfo(){
        //we can acces only static members inside static method'
        system.debug('company name is  '+CompanyName);
        //we cannot acces non-static members inside static method
        //system.debug('name is '+Name);
    }
    
} 
