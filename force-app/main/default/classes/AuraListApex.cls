public class AuraListApex {
  @AuraEnabled
  public static List<Account> GetAccounts(){
        List<Account> acc=[select id,name,phone,rating from Account Limit 10];
        return acc;
    }
}