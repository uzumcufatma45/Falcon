public  class CaseHandler {
    public static void updateCase(list<case> caseTriggerNew, map<id,case> CaseTriggerOldMap){
         // 2. Show the message as 'Case origin is changed for [Case Number]' whenever case origin
   // field value is changed.

        
            for(case eachCase : caseTriggerNew){
                case oldcase = CaseTriggerOldMap.get(eachCase.id);
                //new case origin != Old case origin
               if(eachCase.Origin != oldcase.Origin){
                System.debug('Case origin is changed for =>' + eachCase.CaseNumber);
               }

            }
        
    }

    public static void CaseOriginMethod(list<case> caseTriggerNew2){
        if(Trigger.isInsert){
            for(case eachCase1 : caseTriggerNew2){
                if(eachCase1.Origin == 'Email'){
                    eachCase1.Status = 'New';
                    eachCase1.Priority ='Medium';
                }
            }
        }
    }


       // 1. When a case is created, check the description field of the newly created case - if the description
   // field contains the word 'password', then create a child case with the following field values
   // - subject = 'Parent Case may contain secret info, do something NOW'
   // - parentId = _______ (newly create case id)
   // - priority = 'High'
   // - Description = 'Secret info not allowed in case
    public static void caseCreated(list<case> newCaseTrigger){

        set<id> caseListId =new set<id>();
        string keyword ='PassWord';
        for(case eachCase : newCaseTrigger){
            
            if(eachCase.Description.containsIgnoreCase(keyword)){
                caseListId.add(eachCase.id);
            }
        list<case> childCase = new list<case>();
            for(id eachId : caseListId){
                case c = new case();
                c.subject ='parent case may contain secret info, do something now';
                c.ParentId = eachId;
                c.Priority ='High';
                c.Description ='Secret info not allowed in case';
                childCase.add(c);

            }
        }    
    }


}
   
