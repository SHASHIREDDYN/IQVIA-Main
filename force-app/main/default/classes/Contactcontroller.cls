public with sharing class Contactcontroller {
    @AuraEnabled
    public static list<contact> searchcontacts(){
        return [select id,name,phone from contact Limit 30];
    }
    @AuraEnabled
    public static list<contact> searchbyquery (string searchquery){
        
        string name='%'+ searchquery+'%';
        
        return [select id,name,phone from contact where name LIKE:name LIMIT 30];
    }

}