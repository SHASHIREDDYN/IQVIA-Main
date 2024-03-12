public class Messanger 
{         
    public static void CreateLeadRecords()
    {
        List<Lead> lstleads = new List<lead>();
        
 // First lead Reccord...
            Lead ld=new Lead();
              
                ld.firstname ='Bulk name Test';
                ld.lastname ='record';
                ld.status='Closed';
                ld.rating='warm';
                ld.industry='Technology';
                ld.email='shashireddy7it@gmail.com';
                ld.company='TCS';
            
            lstleads.add(ld);
              
          // Second lead records..
           
              Lead ld1 = new Lead();
              
                ld1.firstname ='Bulk name Test1';
                ld1.lastname ='record';
                ld1.status='Closed';
                ld1.rating='warm';
                ld1.industry='Technology';
                ld1.email='shashireddy6it@gmail.com';
                ld1.Company='Wipro';
              
              lstleads.add(ld1);
            
            if(!lstleads.isempty())
            {
                insert lstleads;
            
         //Invoke the Method to Send the Email Alerts.
         
         SendEmailNotification(lstleads);
            }
     
        
    }

    
    public static void SendEmailNotification(List<Lead> lstLeads)
    {
       
        if(! lstLeads.isEmpty())
        {
           List<Messaging.SingleEmailMessage> lstEmailAlerts = new List<Messaging.SingleEmailMessage>();
            
            for(Lead ldRecord : lstLeads)
            {
                //Preapare the Email Notifiacation..
                
                Messaging.SingleEmailMessage email = new  Messaging.SingleEmailMessage();
 
                string[] toAddresses = new string[]{ldRecord.Email,'shashireddy5it@gmail.com'};
                email.SetToAddresses(toAddresses);
                
                email.SetReplyTo('support@alert.icicibank.com');
                
                email.setSenderDisplayName('ICICI Bank Credit Card.');
                
                string emailSubject = 'Congrats'+ ldRecord.FirstName+''+ldRecord.LastName+'....!! Your Credit Card Statement for the Month Of August,2020';
                email.setSubject(emailSubject);
                
                string emailContent = 'Dear' + ldRecord.FirstName+''+ ldRecord.LastName+ ',<br/><br/>'+
                                       'We are Please to Infrom you, that your Credit card statements for the month of the August,2020'+
                                       'Here your customer Deatails....:<br/><br/>'+
                                       'Lead Record Id :'+ ldRecord.Id+
                                       '<br/> Lead Person Name... '+ldRecord.FirstName+ldRecord.LastName+
                                       '<br/> Lead Rating...:'+ldRecord.Rating+
                                       '<br/> Lead Company...:'+ldRecord.Company+
                                       '<br/> Lead AnnualRevenue..:'+ldRecord.AnnualRevenue+
                                       '<br/> Lead Contact Number..:'+ldRecord.Phone+
                                       '<br/> Lead Fax Number..:'+ldRecord.Fax+
                                       '<br/> Lead Email...:'+ldRecord.Email+
                                       '<br/> Lead Status ...'+ldRecord.Status+
                                       '<br/>< Lead City...:'+ldRecord.City+
                                       '<br/><br/> Please go through the Attached Credit Card Statement And Make the Payment On or Before '+system.today().AddDays(15)+
                                       '<br/><br/> This is a System-Generated Email. Please Do Not Reply.<br/><br/>'+
                                       'Please contact on the below address, if any quries .<br/><br/>'+
                                       'Thanks & Regards, <br/><br/> Credit Card Department, <br/> ICICI Bank';
                    
                email.setHtmlBody(emailContent);
                
                //Prepare the Attachment..
                
                Messaging.EmailFileAttachment attach = new Messaging.EmailFileAttachment();
                   attach.setFileName(ldRecord.FirstName +''+ ldRecord.LastName +'.pdf');
                   attach.setContentType('Application/pdf');
                   attach.body = Blob.topdf(emailContent);
                
                List<Messaging.EmailFileAttachment> lstAttachments = new List<Messaging.EmailFileAttachment>();
                lstAttachments.Add(attach);
                
                //Add the Attachments to the Email.
                
                email.setFileAttachments(lstAttachments);
                      
                
                //Add the Email ALert to the Collection
                
                lstEmailAlerts.Add(email);
               
            }
            
            if(! lstEmailAlerts.isempty())
            {
            Messaging.SendEmailResult[] results = Messaging.sendEmail(lstEmailAlerts, false);
                }
        }
    }
}