public class LeadHandler
{
    @InvocableMethod(Label='Auto Lead Convert'Description = 'This method will create Automatic Lead Record' )

    public static void afterUpdate(List<Lead> lstLeads)
    {
         LeadStatus lStatus = [Select Id,MasterLabel , isconverted from LeadStatus Where isconverted = true];
        
        List <Database.LeadConvert> lstConvert = new List<Database.Leadconvert>();
        
        for(Lead ldRecord : lstLeads)
        {
            if(ldRecord.Status =='Closed - Converted' && ldRecord.isconverted == false)
            {
                Database.LeadConvert lconvert = new Database.LeadConvert();
                
                lconvert.setLeadId(ldRecord.Id) ;  
                lconvert.setDoNotCreateOpportunity(ldRecord.Do_Not_Create_Oportunity__c);
                lconvert.setSendNotificationEmail(True);
                lconvert.setConvertedStatus(lStatus.MasterLabel);
                
                // Add the Record to collection 
              
                lstConvert.Add(lConvert);
            }
        }
    if(! lstConvert.isempty())
    {
        Database.LeadConvertResult[] result = Database.convertLead(lstConvert,false);
        }
    }
    
}