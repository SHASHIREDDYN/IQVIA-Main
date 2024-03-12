public with sharing class ContactController1 {
    @AuraEnabled
    public static Contact getContact() {
        return [select Id, FirstName, LastName from Contact Limit 10];
    }
}