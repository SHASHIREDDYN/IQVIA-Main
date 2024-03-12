trigger CustomerTrigger on Customer__c (before insert,before update) 
{
    if(Trigger.IsBefore && (Trigger.IsInsert || Trigger.IsUpdate))
    {
        for(Customer__c cust : Trigger.New)
        {
        if(cust.RegionName__c !=null && cust.RegionName__c !='')
          
           {
               cust.Region_Manager_Name__c= RegionDetails__c.GetValues(cust.RegionName__c).Region_Manager_Name__c;
           }
           }    
        
              
        }
    }