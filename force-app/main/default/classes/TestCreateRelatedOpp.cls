@isTest
public class TestCreateRelatedOpp {

    @isTest
    static void testCreateRelatedOpp() {
        // Create test data (accounts)
        List<Account> testAccounts = new List<Account>();
        for (Integer i = 0; i < 5; i++) 
        {
            testAccounts.add(new Account(Name = 'Test Account ' + i));
        }
        insert testAccounts;

        // Call the method to be tested
        Test.startTest();
        AccountTriggerHandler.createRelatedOpp(testAccounts);
        Test.stopTest();

        // Verify that opportunities were created
        List<Opportunity> createdOpps = [SELECT Id, Name, AccountId, StageName FROM Opportunity WHERE AccountId IN :testAccounts];
        System.assertEquals(testAccounts.size(), createdOpps.size(), 'Number of opportunities created should match the number of accounts');
        
        for (Opportunity opp : createdOpps) {
            System.assertEquals('Prospecting', opp.StageName, 'StageName should be set to "Prospecting"');
            // You can add more assertions based on your specific requirements
        }
    }
}