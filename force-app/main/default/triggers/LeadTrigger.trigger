trigger LeadTrigger on Lead (before insert,before Update,After Update) 
{
 if(Trigger.IsBefore && (Trigger.IsInsert || Trigger.IsUpdate))
 {
     for(Lead ldRecord : Trigger.New)
     {
         Switch On ldRecord.industry
         {
         When   'Banking'      
         {
             ldRecord.AnnualRevenue=90000;
             ldrecord.rating = 'Hot';
         }
         when 'Finance'
         {
              ldRecord.AnnualRevenue=80000;
              ldrecord.rating ='warm';
 
         }
         
         when 'Energy'
         {
                ldRecord.AnnualRevenue=70000;
                ldrecord.Rating='hot';

         }
         
         When 'insurance'
         {
                ldRecord.AnnualRevenue=60000;
                 ldrecord.Rating ='cold';

         }
         
     }
 }
 }
 
    if(Trigger.IsAfter && Trigger.IsUpdate)
    {
       LeadHandler.AfterUpdate(Trigger.New);
    }
    
    if(Trigger.isbefore &&(Trigger.isinsert || Trigger.isupdate))
    {
        for(Lead cs:Trigger.New)
        {
            if(cs.country== ''|| cs.country == null)
            {
                cs.country.adderror('Please enter the Country');
            }
            else if(cs.state==null || cs.state=='')
            {
                cs.state.adderror('Please enter the state');
            }
            else if(cs.city == null || cs.city=='')
                    {
                        cs.city.adderror('Please enter the City');
                    }
        }
    }
}