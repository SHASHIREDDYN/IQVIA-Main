trigger ContactTrigger on Contact (before insert) 
{

    if(Trigger.IsBefore && Trigger.IsInsert)
    {
        ContactHandler.beforeInsert(Trigger.new);
    }
     
}