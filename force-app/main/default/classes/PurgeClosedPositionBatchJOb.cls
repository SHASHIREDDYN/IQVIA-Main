Global class PurgeClosedPositionBatchJOb implements Database.Batchable <Sobject> {
    
    Global Database.QueryLocator Start(Database.BatchableContext bcontext)
    {
        String positionQuery='Selecct id,name,Namespace0207__Position_record_can_delete__c from Position__C where Namespace0207__Position_record_can_delete__c="true';
        return Database.getQueryLocator(positionQuery);
    }
    
    Global void Execute(Database.BatchableContext bcontext,List<Sobject> recordsprocess)
    {
        if(!recordsprocess.isempty())
        {
        List<Position__c> positionsTodelete  =(List<Position__c>) recordsprocess;
        
        Database.DeleteResult[] results=Database.delete(positionsTodelete,false);
        
          
        }
    }
    
    Global void Finish(Database.BatchableContext bcontext)
    {
       system.debug('Batch Job Id is....'+ bcontext.getJobId());
        
        AsyncApexJob jobDetails =[SELECT  id,JobItemsProcessed, Status, ExtendedStatus, NumberOfErrors, CompletedDate, TotalJobItems, Createdby.email FROM AsyncApexJob where id = : bcontext.getJobId()];
    }

}