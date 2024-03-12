Global class ClosedBatchSchedukleJob implements system.Schedulable {
    
    Global void Execute(system.SchedulableContext scontext)
    {
        PurgeClosedPositionBatchJOb pbatch =new PurgeClosedPositionBatchJOb();
        Database.executeBatch(pbatch, 5);
    }

}