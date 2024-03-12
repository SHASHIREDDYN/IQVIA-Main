public with sharing class CarTypeSearch {
@AuraEnabled
  
    public static List<Namespace0207__CarType__c>  getCarTypes(){
        return [Select id,name from Namespace0207__CarType__c ];
    }
}