public class MyContactListController {
@AuraEnabled

public static List<contact> getContacts(Id recordId){
      return[select id,firstname,lastname,email,phone from contact where Id=:recordId];
}
}