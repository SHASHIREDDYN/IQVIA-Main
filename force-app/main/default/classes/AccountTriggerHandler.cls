public class AccountTriggerHandler 
{
   


  public static void UpdatePhoneDescription(List<Account> newlist,Map<Id,Account> oldmap )
  {
      for(Account acc:newlist)
      {
         if(oldmap !=null && acc.Phone !=oldmap.get(acc.Id).Phone)
         {
            acc.Description='Phone is Modified';
         }
         
      }
  }

  public static void UpdateRatings( List<Account> newList)
  {
     
    for(Account acc:newList)
    if(acc.Industry != null && acc.Industry =='media')
    {
      acc.Rating='Hot';
    }
  }

  public static void createdRelatedOpp(List<Account> newlist) {
    List<Opportunity> oppToBeInserted = new List<Opportunity>();
    
    for(Account acc : newlist) {
        Opportunity opp = new Opportunity();
        opp.Name = acc.Name;
        opp.AccountID = acc.Id;
        opp.CloseDate	=system.Today();
        opp.StageName = 'Prospecting'; // 'stagename' should be 'StageName' and use single quotes for string literals
        
        oppToBeInserted.add(opp);
    }
    
    if(!oppToBeInserted.isEmpty()) { // Added parentheses for the isEmpty method call
        insert oppToBeInserted;
    }
}

  /*    public static void UpdateRelatedType(List<Account> newlist, Map <Id,Account> oldMap){
                    Map<Id, Account> accIdTOAccontMap = new Map<Id, Account>();
                    List<Opportunity> oppList = new List<Opportunity>();
                    for(Account acc:newlist){
                      if(oldMap != null && acc.Type !=oldMap.get(acc.Id).Type){
                        accIdTOAccontMap.put(acc.id,acc);
                      }
                    }
                       for(Opportunity opp:[Select id,Type,AccountID from Opportunity where AccountId IN :accIdTOAccontMap.Keyset()]){
                           Opportunity oppor=new Opportunity();   
                              if(accIdTOAccontMap.containsKey(opp.AccountID)){
                                         oppor.id=opp.id;
                                         oppor.Type=accIdTOAccontMap.get(opp.accountid).Type;
                                         oppList.add(oppor);
                     }
                   }

                                if(!oppList.isEmpty()){
                                    Update oppList;
                  }
                } */

                public static void UpdateRelatedType(List<Account> newlist, Map<Id, Account> oldMap) {
                  Map<Id, Account> accIdToAccountMap = new Map<Id, Account>();
                  List<Opportunity> oppList = new List<Opportunity>();
                  
                  for (Account acc : newlist) {
                      if (oldMap != null && acc.Type != oldMap.get(acc.Id).Type) {
                          accIdToAccountMap.put(acc.Id, acc);
                      }
                  }
                  
                  for (Opportunity opp : [SELECT Id, Type, AccountId FROM Opportunity WHERE AccountId IN :accIdToAccountMap.keySet()]) {
                      if (accIdToAccountMap.containsKey(opp.AccountId)) {
                          opp.Type = accIdToAccountMap.get(opp.AccountId).Type;
                          oppList.add(opp);
                      }
                  }
                  
                  if (!oppList.isEmpty()) {
                      update oppList;
                  }
              }
              


}