trigger HrTeamTrigger on Hiring_Team__c (before Delete) 
{
    // Upon Deleting parent record child record shuld be deleted(Lookup )
       
        if(Trigger.Isbefore && Trigger.IsDelete)
    {
        List<Postionn__c> lstpos =[Select id,Hiring_Team__c from Postionn__c Where Hiring_Team__c IN: Trigger.oldMap.Keyset()];
        
        if(! lstpos.isempty())
        {
            for(Postionn__c pos : lstpos)
            {
                pos.Hiring_Team__c = null;
            }
            Delete lstpos;
        }
        
    }
    

}