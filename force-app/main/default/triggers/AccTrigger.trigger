trigger AccTrigger on Account (before insert,before update,After insert) 
{
   if(Trigger.isbefore && (Trigger.isupdate || Trigger.Isinsert))
   {
       For(Account acc: Trigger.New)
       {
           if(acc.industry == '' || acc.industry == null)
           {
               acc.industry.Adderror('Please select the industry value.');
           }
           else if(acc.fax =='' || acc.Fax ==null)
           {
               acc.fax.adderror('Please enter the fax Number.');
           }
       }
   }

   if(Trigger.isbefore && (Trigger.isupdate|| Trigger.IsInsert))
   {
       for(Account acc:Trigger.new)
       {
           integer recordscount=[select count() from account where name =:acc.Name and phone=:acc.Phone ];
      
       if(recordscount >0)
       {
           acc.Adderror('Duplicate record found with the same details');
       }
       }
   }

   if(Trigger.isbefore && Trigger.isinsert)
   {
    AccountTriggerHandler.UpdateRating(Trigger.New);
   }

   if(Trigger.isAfter && Trigger.IsInsert)
   {
      AccountTriggerHandler.createRelatedOpp(Trigger.New);
   }

   if(Trigger.isupdate &&(Trigger.isAfter || Trigger.isbefore))
   {
    AccountTriggerHandler.UpdatePhoneDescription(Trigger.New, Trigger.OldMap);
   }
}