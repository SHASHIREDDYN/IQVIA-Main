@istest
public class AutoLeadConvertTriggerTest 
{
    static testmethod void TestAutoLeadConversion()
    {
        //Creating a Lead Record.
        
        Lead ldRecord = new Lead();
            
            ldRecord.FirstName = 'Test';
            ldRecord.LastName = 'Lead Rec';
            ldRecord.AnnualRevenue = 25000;
        ldRecord.Company = 'nnn';
            ldRecord.Phone = '9989737244';
        ldRecord.Industry = 'Banking';
        ldRecord.Email = 'Shashi@gmail.com';
        
  insert ldRecord;
        //Update Record
        
        ldRecord.Status= 'Closed - Converted';
        
        update ldRecord;
            
    }
    

}