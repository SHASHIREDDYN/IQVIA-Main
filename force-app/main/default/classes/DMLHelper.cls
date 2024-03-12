public class DMLHelper
{
    public static void CreateBulkHRRecords()
    {
        List<Hiring_Manager__c> lsthrrecords = new  List<Hiring_Manager__c>();
        for(integer counter=1; counter <=10; counter++)
        {
         	Hiring_Manager__c   hr = new 	Hiring_Manager__c();
            
            hr.Name ='David';
            hr.Contact_Numbe__c = '9989737489';
            if(counter !=8)
                
            {
                           hr.Emai_id__c = 'sam'+counter+'@gmail.com';
 
            }
            hr.Location__c = 'Hyderabad';
            
            lsthrrecords.Add(hr);
        }
        if(! lsthrrecords.isEmpty())
        {
            Database.SaveResult[] results = Database.insert(lsthrrecords,false); //Allow the Partial processing..
            
            for(Database.SaveResult res : results)
            {
                if(res.isSuccess())
                {
                 system.debug('Record Inserted Successfully');
                    system.debug('Record ID is..:'+res.getId());
                    }
                else
                {
                    for(Database.Error err : res.getErrors())
                    {
                        system.debug('Error Message is..'+err.GetMessage());
                        system.debug('Get Error Statrus Code ...'+err.GetStatusCode());
                        system.debug('Get Affeted Fields...'+ err.GetFields());
                        
                    }
                        
                }
                system.debug('----------------------------------------');
            }
        }
    }
  
    public static void MergeDuplicateAccounts()
    {
        Account targetAccount = [Select Id,name,rating,industry ,fax from Account
                                Where name='Kruthi naidu'
                                Limit 1];
        Account SourceAccount = [Select Id,name,rating,industry ,fax from Account
                                Where name='Kruthi Reddy'
                                Limit 1];
    if(SourceAccount !=null && targetAccount !=null)
        Merge targetAccount SourceAccount;
    }
    public static void UpsertCaseRecords()
    {
         List<Case> caseToUpsert = new List<Case>();
        
         List <Case> lstcases = [Select id,status,priority,casenumber from Case Where status ='New'];
        
      system.debug('Number of records to Update...:'+lstcases.size());
        
            If(! lstcases.isempty())
        {
            for(Case cs: lstcases)
            {
            cs.Priority ='LOW';
            caseToUpsert.Add(cs);
        }
    }
        Case cs =new Case();
        cs.status= 'WORKING';
        cs.Priority='High';
        cs.Type='Mechanical';
        cs.Reason = 'Performance';
        cs.Origin ='Web';
        
             caseToUpsert.Add(cs);
        if(! caseToUpsert.isempty())
            Upsert caseToUpsert;
            
        system.debug('No of DML Statements used:'+system.Limits.getDmlStatements());
        system.debug('No of DML ROws Processed :'+ system.Limits.getDmlRows());
        system.debug('No of DML Records'+ system.Limits.getLimitDmlRows());
        system.debug('No of DML Records'+system.Limits.getLimitDmlStatements());
    }
    public static void AutoPopulateAnnualrevenue()
    {
        List <Account> lstAccounts = new List<Account>();
        
        for(Account acc : [Select id,name,industry,annualrevenue from Account ])
        {
            Switch ON acc.Industry
            {
              When 'Banking'  
              {
                  acc.AnnualRevenue = 50000;
                  
              }
                When 'Apparel'
                {
                    acc.AnnualRevenue =80000;
                }
                When 'Chemicals'
                {
                    acc.AnnualRevenue =90000;
                }
                When 'Energy'
                {
                    acc.AnnualRevenue = 700000;
                }
            }
        lstAccounts.Add(acc);
        }
        if(! lstAccounts.isEmpty())
        {
            Update lstAccounts;
        }
            }
    public static void DeActivateUser(string uName)
    {
        if(uName !=null && uName !='')
        {
         User userToDeativate = [Select id,firstname,lastname,userName,isActive from User Where userName=:uName Limit 1];
            
        if(userToDeativate.id !=null)
        {
            userToDeativate.IsActive = false;
            Update userToDeativate;
        }
        }
    }
    public static void UpdateBankingCustomers()
    {
        List<Account> lstaccounts = [Select id,name,industry,rating from Account where industry='Banking'];
        
        if(! lstaccounts.isempty())
        {
            for(Account acc: lstaccounts)
            {
                acc.Rating = 'Hot';
            }
            Update lstaccounts;
        }
            }  
    Public static void UndeleteLeadRecordsByStartingchars(String startingChars)
    {
        if(startingChars !=null && startingChars !='')
        {
          UnDelete [Select id,firstname,lastname,isdeleted from Lead Where lastname like:startingChars+'%' and isDeleted=true ALL Rows];
          system.debug('Number of Records to be Restored..:'+ Limits.getDmlRows());
          system.debug('Number of deletes statements:'+ Limits.getDmlStatements());
        }
    }
      
    Public static void DeleteLeadRecordBySratringChars(String startingChars)
    {
     if(startingChars !=null && startingChars !='')
    {
     /*
     statringChars += '%';
     List<Lead> lstLeads = [Select id,firstname,lastname  from Lead where LastName like:startingChars];
      
     if(! lstLeads.isempty())
         Delete.lstLeads;
        */
    Delete [Select id,firstname,lastname from Lead Where lastname like: startingChars+'%'];
          system.debug('Number of Records restored..:'+ Limits.getDmlRows());
         }
    }
      public static void DeleteHRTeam(string Startingchars)
      {
          if(Startingchars !=null && Startingchars !='')
          {
              delete[ select id,name,Contact_Numbe__c,Emai_id__c from Hiring_Manager__c where name like:Startingchars+'%'];
          system.debug('Number of Records restored..:'+ Limits.getDmlRows());
      }
      }
    public static void DeleteHR(string Startingchars)
      {
          if(Startingchars !=null && Startingchars !='')
          {
              delete[ select id, name,Contact_number__c,	Emai_Address__c from Hiring_Team__c where name like:Startingchars+'%'];
          system.debug('Number of Records restored..:'+ Limits.getDmlRows());
      }
      }
    public static void CreateBulkContactProspects() 
    {
        List<Contact> lscon = new List<Contact>();
    for(integer counter=1; counter <=50; counter ++)
    {
        Contact con = new Contact();
        
      con.FirstName ='Simple';
      con.LastName = 'Reddy -'+ counter;
      con.Title = 'sales manager';
      con.Fax ='1564';
      con.Phone = '9989764872';
      con.Email = 'shashi'+counter+'@gmail.com';
      con.PAN_NUMBER__c ='9899';
        
        lscon.Add(con);
    }
        if(! lscon.IsEmpty())
            insert lscon;
        
        system.debug('Number of DML Statements used..:'+Limits.getDmlStatements());
        system.debug('Number of DML Statements Limits:'+Limits.getLimitDmlStatements());
        system.debug('Number of Lead Records processed:'+Limits.getDmlRows());
        system.debug('Max .Number of DML Rows Limit:'+Limits.getLimitDmlRows());
    
    }
    Public static void CreateBulkProspects()
    {
        List<Lead> lstleads= new List<Lead>();
        for(integer counter=1; counter <=5; counter++)
        {
            Lead ld = new Lead();
            
            ld.FirstName = 'Samanta';
            ld.LastName = 'Lead Record-'+ counter;
            ld.Company = 'Salesforce';
           
            ld.PAN_NUMBER__c = '4565256';
            
          lstleads.Add(ld);
        }
            if(!lstleads.isempty())
            
                Insert lstleads;
            
            
        system.debug('Number of DML Statements used..:'+Limits.getDmlStatements());
        system.debug('Number of DML Statements Limits:'+Limits.getLimitDmlStatements());
        system.debug('Number of Lead Records processed:'+Limits.getDmlRows());
        system.debug('Max .Number of DML Rows Limit:'+Limits.getLimitDmlRows());
    }
     public static void UnDeleteHRTeam(string Startingchars)
      {
          if(Startingchars !=null && Startingchars !='')
          {
              unDelete [select id,name,Emai_id__c ,isdeleted from Hiring_Manager__c where name like:Startingchars +'%' and isdeleted=true All Rows];
          system.debug('Number of Records restored..:'+ Limits.getDmlRows());
                system.debug('Number of DML Statements used..:'+Limits.getDmlStatements());
      }
      }
    }