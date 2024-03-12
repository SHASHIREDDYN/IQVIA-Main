public class LeadHelp
{
     public static void GetallLeads()
    { 
        List<Lead> ldHelp =[Select firstname,Lastname,rating,industry,Age__c,	PAN_NUMBER__c from Lead];
    
    system.debug('Number of Records are'+ldHelp.size());
        
        if(! ldHelp.isEmpty())
        {
            for(Lead ld: ldHelp )
            {   
            system.debug('Lead FirstName is..'+ld.firstName);
                system.debug('Lead LastName is..'+ld.lastName);
            system.debug('Rating value is'+ld.Rating);
            system.debug('Industry is'+ld.Industry);
            system.debug('Age'+ld.Age__c);
            system.debug('Pan Number is'+ld.PAN_NUMBER__c);
            
            system.debug('-------------------------');
        }
        }
}

}