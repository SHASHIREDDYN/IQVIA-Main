public class showContactHelper {
    @AuraEnabled(cacheable=true)
    public static List<Contact> GetContactRecords () 
    {
       List<Contact> con=[select Id,FirstName,LastName,Email,Fax,Phone from Contact order by LastName];

       return con;
    }
}