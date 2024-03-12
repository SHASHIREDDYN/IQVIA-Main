trigger PositionTrigger on Position__c (before insert,before update) 
{
    if(Trigger.IsBefore && (Trigger.IsInsert || Trigger.IsUpdate))
    {
        for(Position__c pos : Trigger.New)
        {
            if(pos.Minimum_Pay__c == null)
                
            {
                pos.Minimum_Pay__c.AddError('Please enter the Minimam Pay Value.');
            }
                
           else if(pos.Contact_number__c == '' || pos.Contact_number__c == null)
            {
                pos.Contact_number__c.AddError('Please Enter the Contact Number.');
            }
                }
            }
        }