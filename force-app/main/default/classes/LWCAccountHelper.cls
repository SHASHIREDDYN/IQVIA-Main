public class LWCAccountHelper {

    @AuraEnabled(cacheable= true)
    
    public  static List<Account> GetAllAccounts()
    {
        List<Account> lstaccounts=[Select ID,name,Rating,Industry,Phone, Fax,Type,Ownership,AnnualRevenue from Account Order by name];
        
        return lstaccounts;
    }
 
    @AuraEnabled(cacheable= true)

    public static List<Lead> GetAllLeadRecords()
    {
       List<Lead> lstLeads=[Select ID,Industry,Rating,company,Fax,Email,city,State from Lead Order by LastName];
    
       return lstLeads;
    }

    @AuraEnabled(cacheable=true)
    public static List<Account> SearchAccountRecords(String stringChars)
    {
        List<Account> lstaccount=[Select ID,name,Rating,Industry,Phone,Fax,Type,Ownership from Account
         where name Like :stringChars+'%'];
        return lstaccount;
    }
}