Global class NewBatchClass implements database.Batchable<sobject> {
    
    Global database.QueryLocator start(database.BatchableContext bc){
        return database.getQueryLocator('select id from opportunity');
    }
    Global void execute(database.BatchableContext bc, List<sobject> records){
        delete records;
    }
    Global void finish(database.BatchableContext bc){
        
    }

}