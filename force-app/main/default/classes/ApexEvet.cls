public class ApexEvet {
    @AuraEnabled
    public static List<Contact> getCall(string accName){
        Account acc=[select id from Account where name=:accName];
        List<Contact> con=[select id,Firstname,Lastname,Phone from Contact where AccountId=:acc.Id];
        return con;
        
    } 

}