public class CaseHelper
{

    public void insert100Records()
    {
        for(integer counter=1; counter <=100;counter++)
    {
       Account acc = new Account();

   acc.Name = 'Sashidhar Rao'+counter;
   acc.Rating = 'HOt';
   acc.Type = 'Prospect';
   acc.Fax = '99875';
   acc.Industry = 'Bamking';
   acc.Annualrevenue = 45621;

insert acc;
   
    

    
    if(acc.id != null)
    
{
    system.debug('Account Record Id id..'+ acc.id);
        case cs= new case();
      
        cs.Priority = 'Low';
        cs.Type = 'Other';
        cs.Status ='New';
        cs.Origin = 'Web';
       
       
        cs.AccountId = Acc.id;
        
        insert cs;
        
        if(cs.id !=null)
            
            system.debug('Case record has been created'+cs.id);
        
          
        }
}
}
    
     
}