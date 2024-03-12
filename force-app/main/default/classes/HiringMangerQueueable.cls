Global class HiringMangerQueueable   implements System.Queueable
{
    Global void Execute (System.QueueableContext qContext)
    {
        //Write the Business Logic To Insert the Hiring Manager record.
        
        Hiring_Team__c hr = new Hiring_Team__c();

        hr.Name='Shashidhar Nagavelli';
        hr.Emai_Address__c='shshi@gmail.com';
        hr.Contact_number__c='9989721788';
        hr.Location_Name__c= 'Hyderabad';

insert hr;
        if(hr.id != null)
        {
            System.debug('Hiring Manager Recordm Id is...:'+hr.Id);
        }
    }

}