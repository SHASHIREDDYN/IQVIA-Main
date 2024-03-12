public class HiringManagerHelper 
{
    
   public static void CreateRecord(string hrname,string phone,string emial)
    
{
    Hiring_manager__c hr = new Hiring_manager__c ();
    
    hr.Name= 'sarayu';
    hr.Contact_Numbe__c='9989737244';
    hr.Emai_id__c ='Shashi@gmail.com';
    

 insert hr;
 if(hr.id != null)
 
   system.debug('Name '+hr.id); 
 }
}