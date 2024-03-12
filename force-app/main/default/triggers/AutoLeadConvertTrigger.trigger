trigger AutoLeadConvertTrigger on Lead (After Update) 
{ 
    if(Trigger.isAfter && Trigger.IsUpdate)
    {
     LeadHandler.AfterUpdate(Trigger.New);
    }
    
   /*if(Trigger.isbefore && Trigger.isinsert)
   {
       LeadHandler.beforeinsert(Trigger.New);
   }
*/
}