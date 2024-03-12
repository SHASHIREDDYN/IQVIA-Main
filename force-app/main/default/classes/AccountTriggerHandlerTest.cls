@isTest
public class AccountTriggerHandlerTest {
    @isTest
    
    public static void updateRatingTest()
    {
        //Create Sample Data
        
        List<Account> acclst=new List<Account>();
        
        for(integer i=1;i<5;i++)
        {
            Account acc=new Account();
            acc.Name='Test'+i;
            acc.Industry='Banking';
            acclst.add(acc);
        }
        //insert Data
        
        Test.startTest();
        insert acclst;
        Test.stopTest();
        
        List<Account> Updatedacclist=[select Id,Rating from Account where Id=:acclst[0].id];
        
        // Apply assert condition
        System.assertEquals('Hot',Updatedacclist[0].Rating);
           
        
    }

}