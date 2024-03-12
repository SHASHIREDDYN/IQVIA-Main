@isTest
private class CaseTriggerHandlerTest {

    @isTest
    static void testHandleBeforeInsert() {
        // Positive scenario: Case with AccountId and ContactId
        Case testCase1 = new Case(
            Subject = 'Test Case 1',
            AccountId = '0012y000007McJrAAK', // Replace with a valid AccountId
            ContactId = '0032y00000MqSpCAAV' // Replace with a valid ContactId
        );

        // Negative scenario: Case without AccountId
        Case testCase2 = new Case(
            Subject = 'Test Case 2',
            ContactId = '0032y00000MqSpCAAV' // Replace with a valid ContactId
        );

        // Negative scenario: Case without ContactId
        Case testCase3 = new Case(
            Subject = 'Test Case 3',
            AccountId = '0012y000007McJrAAK' // Replace with a valid AccountId
        );

        Test.startTest();
        // Call the handleBeforeInsert method
        CaseTriggerHandler.handleBeforeInsert(new List<Case>{testCase1, testCase2, testCase3});
        Test.stopTest();

       
    }
}