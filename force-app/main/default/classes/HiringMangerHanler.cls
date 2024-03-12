public class HiringMangerHanler 
{
    @InvocableMethod (Label ='Creatd New Position Record' Description = 'This method will create a Related position for  a Hiring Manager ')
    Public static void CreateRelatedPositionRecord(List<Hiring_Team__c> hrrecords)
    
     {
         if(! hrrecords.isEmpty())
         {
            for(Hiring_Team__c hr : hrrecords) 
            {
                // Write the Code Create A Related Position Record.
                
                Postionn__c pos = new Postionn__c();
             
             pos.Name = 'Java Consultant';
             pos.HR_Contact__c = hr.Contact_number__c;
             pos.HR_Email_Id__c = hr.Emai_Address__c;
             pos.Position_Satus__c = 'New Position';
             pos.Number_Of_Positions__c= 2;
             pos.Milestone_Date__c =system.today().AddDays(15);
             pos.Open_Date__c = system.today();
             pos.Location_Name__c = hr.Location_Name__c;
             
             pos.Hiring_Team__c = hr.id;
              
             
             Insert pos;
            
         }
             
             
     }
    }

}