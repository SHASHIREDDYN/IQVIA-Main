trigger SyncHiringMangerRecordsTrigger on Hiring_Manager__c (before insert,before Update,after Delete,after insert)
{
    // De Duplication for Name and Contact Number.
    
    if(Trigger.IsBefore && (Trigger.IsInsert || Trigger.IsUpdate))
    {
     for(Hiring_Manager__c HrRecord : Trigger.New)  
     {
         integer recordCount = [Select count() from Hiring_Manager__c Where name =:HrRecord.Name and Contact_Numbe__c =:HrRecord.Contact_Numbe__c and Emai_id__c=:HrRecord.Emai_id__c];
    
         if(recordCount > 0)
    {
        HrRecord.AddError('Dupliacate Record Found With the Same Deails.Record Can not be Acceptable.');
    }
     }
     }

    if(Trigger.isinsert && Trigger.isafter)
    {
        HiringManagerSyncHandler.AfterInsert(Trigger.New);
    }
  
}