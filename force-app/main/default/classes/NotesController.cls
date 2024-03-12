public class NotesController {
    @AuraEnabled
    //fetchNotes() method simply queries the Tasks.
    public static list<Notes__c> fetchNotes(){
        return [SELECT Id, Title__c, Status__c FROM Notes__c LIMIT 10];
    }
    
    @AuraEnabled
    //completeTask(Id recordId) method marks the Task as completed based on the recordId parameter.
    public static Boolean completeTask(Id recordId){
        list<Notes__c> lstNotes = [SELECT Status__c FROM Notes__c WHERE Id = :recordId];
        
        if(lstNotes != null && !lstNotes.isEmpty()){
            for(Notes__c note : lstNotes){
                note.Status__c = 'Completed';
            }
        }
        
        try{
            update lstNotes;
            return true;
        }catch(DMLException e){
            System.debug(e);
            return false;
        }
    }
    
    
    @AuraEnabled
    //createNoteRecord(String strTitle) method creates a New Task.
    public static Notes__c createNoteRecord(String strTitle){
        Notes__c note = new Notes__c();
        note.Title__c = strTitle;
        note.Status__c = 'To Do';
        insert note;
        return note; 
    }
}