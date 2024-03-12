trigger PosTrigger on Postionn__c (before insert,before update) 
{
    if(Trigger.IsBefore &&( Trigger.isupdate || Trigger.Isinsert))
    {
        For(Postionn__c pos : Trigger.New)
        {
           if(  pos.Hiring_Team__c == null)
              {
                  pos.Hiring_Team__c.AddError('Hiring Manager shoulb be selected.');
              }
            
        }
    }

}