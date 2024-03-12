public class LeadHelper 
{
    Public void CreateNewLeadRecord()
        
    {
        Lead ld= new Lead();
        
        ld.FirstName= 'Testing';
        ld.LastName = 'Lead Record';
   
        ld.Status = 'Open-Not Connected';
        ld.Industry = 'Rating';
        ld.Rating = 'Hot';
        ld.AnnualRevenue = 500000;
        ld.Website = 'sfdc.com';
        ld.City = 'Hyderabad';
        ld.Phone = '9989737244';
        ld.Fax = '465658';
        ld.Company ='TRR';
        ld.Email = 'Shashi@gmail.com';
        
        
        insert ld;
        
        if(ld.id !=null)
            system.debug('Lead Record Inserted With id...'+ld.id);
        
            
            }
      
}