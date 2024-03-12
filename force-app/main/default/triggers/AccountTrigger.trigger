trigger AccountTrigger on Account (before insert, before Update,before delete,After Update ) 
{
    if(Trigger.IsBefore && Trigger.IsInsert)
    {
        AccountTriggerHandler.UpdateRatings(Trigger.New);
    }

    if(Trigger.IsAfter && Trigger.IsInsert)
    {
        AccountTriggerHandler.createdRelatedOpp(Trigger.New);
    }

    if(Trigger.IsUpdate){
        if(Trigger.IsBefore){
            AccountTriggerHandler.UpdatePhoneDescription(Trigger.New,Trigger.oldMap);
        } else if(Trigger.IsAfter){
            AccountTriggerHandler.UpdateRelatedType(Trigger.New,Trigger.oldMap);

        }
    }
    if(Trigger.IsBefore && (Trigger.IsInsert || Trigger.IsUpdate))
    {
        for(Account acc : Trigger.New)
        
        {
            if(acc.Industry == '' || acc.Industry == null)
            {
                acc.Industry.AddError('Please Select the Industry Value.');
            }
            else if(acc.Fax ==''|| acc.Fax == null)
            {
                acc.Fax.AddError('Please Enter the Fax Number.');
            }
            else if(acc.Website == '' || acc.Website == null)
            {
                acc.Website.AddError('Please Enter the Customer Name.');
            }
    }
    }
    if(Trigger.IsBefore && (Trigger.IsInsert || Trigger.IsUpdate))
    {
        for(Account acc:Trigger.New)
        {
            if(acc.Industry == '' || acc.Industry == null)
            {
                acc.Industry.Adderror('Please Enter the Industry Name');
            }
            else if(acc.Fax =='' || acc.Fax == null)
            {
                acc.Fax.Adderror('Please Enter the Fax');
            }
            else if(acc.Phone =='' || acc.Phone == null)
            {
                acc.Phone.AddError('Please enter a Phone Number');
            }
        }
    }
    
 
    // Prevent the delete an  Account Record 
    
    if(Trigger.IsBefore && Trigger.IsDelete)
    {
       for(Account acc : Trigger.Old)
       {
           if(acc.Active__c =='yes')
           {
               acc.AddError('You Are Not Authorized to delete an Active Accoint record');
           }
       }
    }
  
   // Create a Trigger to Prvent the deletion of the Related Contact Records , Upon removing the Accont Record from the Object.
    
    if(Trigger.IsBefore && Trigger.Isdelete)
     {
         List<Contact> lstcontacts=[Select id,firstname,lastname,accountid from contact where accountid IN: Trigger.oldMap.Keyset()];
        
        
        if(! lstcontacts.isempty())
           {
            for(Contact con : lstcontacts)
            {
                con.AccountId = null;
                }
        Update lstcontacts;
           }
    }
    
 
    
    // Get the Related Contact based on the Updated Account object....
    
    
    if(Trigger.IsAfter && Trigger.IsUpdate)
    
    {
        List <Contact> lstcontacts = [Select id,firstname,lastname,accountid,fax,phone,mailingcity,
                                      mailingCountry,mailingstreet,mailingpostalcode,mailingstate 
                                     from Contact where AccountID IN : Trigger.NewMap.Keyset()];
       
      if(! lstcontacts.isempty())
      {
          for(Contact con: lstcontacts)
          {
              Account acc = Trigger.NewMap.Get(con.AccountId);
              
              con.Phone = acc.Phone;
              con.Fax = acc.Fax;
              con.MailingCity = acc.BillingCity;
              con.MailingCountry = acc.BillingCountry;
              con.MailingState = acc.BillingState;
              con.MailingStreet = acc.BillingStreet;
              con.MailingPostalCode = acc.BillingPostalCode;
              
          }
          
          Update lstcontacts;
                  
          }    
}
}

/* trigger Accont on Apexbasic (before insert, before Update,After insert)
{
    if(Trigger.IsInsert){
         if(Trigger.IsBefore)
   {
          AccountHabdler.beforeinsert(Trigger.New);
   } else if (Trigger.IsAfter)
   {
    // Write the code here.....
   }
} 

   else if(Trigger.IsUpdate){
    
   }
} */