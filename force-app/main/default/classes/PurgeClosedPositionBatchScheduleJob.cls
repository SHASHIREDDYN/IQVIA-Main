Global class PurgeClosedPositionBatchScheduleJob implements system.Schedulable
{
    Global void Execute(system.SchedulableContext sContext)
    {
        //Write the Code to Invoke the Batch Class.
        
        PurgeClosedPositionBatchJOb pBatch = new PurgeClosedPositionBatchJOb();
        
        Database.executeBatch(pBatch,5);
    }
}