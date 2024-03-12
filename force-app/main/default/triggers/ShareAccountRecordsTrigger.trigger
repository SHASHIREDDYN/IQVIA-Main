trigger ShareAccountRecordsTrigger on Account (After insert)
{
    if(Trigger.IsAfter && Trigger.IsInsert)
    {
        AccountsShareHandler.AfterInsert(Trigger.New);
    }
  
}