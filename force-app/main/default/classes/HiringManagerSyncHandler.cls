public class HiringManagerSyncHandler 
{
    public static void Afterinsert(List<Hiring_Manager__c> lstHRrecords)
    {
        if(!lstHRrecords.isempty())
        {
            List<Recruiter__c> lstrec= new List<Recruiter__c>();
            
            for(Hiring_Manager__c hr:lstHRrecords)
            {
                //Create HR records...
                
                Recruiter__c rec= new Recruiter__c();
                 
                rec.name=hr.Name;
                rec.location__c = hr.Namespace0207__Location__c;
                rec.contact_number__c=hr.Namespace0207__Contact_Numbe__c;
                
                rec.Hiring_Manager_Id__c=hr.Id;
                
                // Add the record the collection..
                
                lstrec.add(rec);
               
            }
            
            //insert the records.
            
             if(!lstrec.isempty())
             {
                 insert lstrec;
             }
        }
    }

}