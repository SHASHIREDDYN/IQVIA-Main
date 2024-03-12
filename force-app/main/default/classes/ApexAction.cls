public class ApexAction {
    @AuraEnabled
    public static string create(string name,string rating,string industry){
        Account acc= new Account();
            acc.Name=name;
            acc.Rating=rating;
            acc.Industry=industry;
        insert acc;
        return ''+acc.Id;
        
    }
}