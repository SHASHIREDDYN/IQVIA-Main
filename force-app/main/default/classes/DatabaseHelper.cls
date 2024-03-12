public class DatabaseHelper 
{
   public static void Dynamiccase(String Casestatus)
   {
    if( casestatus !=null && casestatus !='')
    {
        string casesQuery='Select id,status,origin,reason,type from case where status=:casestatus';
         List<case> lstcases =Database.query(casesquery);  
             for(case cs:lstcases)
         {
             system.debug('case record is'+cs);
         }
    
    }
   }
    
    public static void GetPriority()
     {
           List<Case> lstcases= [Select id,type,reason,origin,Priority from Case Where priority In ('High','Low','Medium') ];
       for(case cs:lstcases)
       {
           system.debug('case records'+cs);
       }
     }
   
    public static void GetAccountsBySearchText(string startingChars)
    { 
        if(startingChars != null && startingChars !='')
    {
        startingChars += '%';
        
      List<Account> lstaccounts =  [Select id,name,industry,rating from Account Where Name like :startingChars]; 
         
    for(Account acc:lstAccounts)
           
        {
      system.debug('Account Record is..'+acc);
        }
        }
    }
    public static void GetIn()
    {
        List<Account> lstAccounts = [Select id,name,industry,rating from Account Where Industry in ('Banking','Insurance','Technology')];

        for(Account acc:lstAccounts)
            
        {
      system.debug('Account Record is..'+acc);
        }
        }
 
    public static void GetRecordscount()
        
    {
        //Static SOQL Query..
        integer recordsCount = [Select count () from Lead];
        system.debug('Lead records Count is..'+recordsCount);
        
          //Dynamic SOQL Query..
       string leadsCountQuery = 'Select count() from Lead';
       integer leadscount = Database.countQuery(leadscountQuery);
       system.debug('Record Count is..'+leadscount);
    }
    public static void GetcaseBystatus(string casestatus)
    {
        if(casestatus !=null && casestatus !='')
        {
            string caseQuery ='Select id,status,priority,type,origin,reason from Case where status=:casestatus';
            List<Case> lstCases = Database.query(caseQuery);
            for(Case cs: lstCases)
            {
                system.debug('Case record is..'+cs);
            }
        }
    }
    
   public static void GetAccountWhere(String industryname)
    {
        if(industryname != null && industryname !='')
        {
        List<Account> lstAccounts = [Select id,name,industry,rating from Account Where Industry =:industryname];

        for(Account acc:lstAccounts)
            
        {
      system.debug('Account Record is..'+acc);
        }
        }
    }
    public static void GetAccoutWhere()
    {
        List<Account> lstAccounts = [Select id,name,industry,rating,annualrevenue from Account Where Industry in ('Banking','Energy','Electrical') and annualrevenue >20000  ];
      

        system.debug('Collection size is..'+lstAccounts.size());
        for(Account acc:lstAccounts)
            
        {
      system.debug('Account Record is..'+acc);
        }

    }
    public static void offSet()
    {
        List<Contact> lstcon = [Select id,firstname,lastname,email,title from Contact Order by lastname Limit 50 Offset 5];
    
        for(Contact con:lstcon)
    {
      system.debug('Contact Record is'+con);  
    }
    }
    public static void GetallDate()
    {
        List<Position__C> lstpositions = [Select id,name,Location__c,Open_Date__c from position__c Order By Open_Date__c  Desc ] ;
        
        for(Position__C pos: lstpositions)
        {
            system.debug('Position date '+pos);
        }
    }
     public static void GetAccountInsorted()
    {
        List<Account> lstAccounts = [Select id,AnnualRevenue,name from Account Order by AnnualRevenue Desc Limit 5];

          for(Account acc:lstAccounts)
            
        {
            system.debug('Account Record is..'+acc);
        }
    }
    Public Static void GetaccoutByLimit()
    {
        List<Account> lstaccounts = [Select id,name,industry,rating from Account Limit 10];
    for(Account acc : lstaccounts)
    {
        system.debug('Account Record is '+ acc);
    }
    }
    public static void Getsllcase()
    { 
        Map<Id,Case> mapCases = new Map<ID,Case>([Select id,casenumber,priority,status,origin,reason,type from Case]);
      
        for(Case cs:mapCases.values())
        {
            system.debug('Case Record Detail..'+cs);
        }
    }
    
    public static void GetallLeads()
    { 
        
            for(Lead ld: [Select firstname,Lastname,rating,industry,Age__c,	PAN_NUMBER__c from Lead] )
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

    public static void GetallRecords()
    { 
        List<Account> lstaccounts =[Select id,name,rating,industry from Account];
    
            for(Account acc: lstaccounts )
            {   
            system.debug('Account Name is..'+acc.Name);
            system.debug('Rating value is'+acc.Rating);
            system.debug('Industry is'+acc.Industry);
            
            system.debug('-------------------------');
        }
        }

    Public static void GetAllaccounts()
    {
      
        List<Account> lstaccount= [select id,name,rating,industry ,fax from Account];
     
        system.debug('Number of Records are'+lstaccount.size());
     for(Account acc: lstaccount)
       
        
     {
    system.debug('Account name is'+acc.name);
    system.debug('Accoint rating'+acc.rating);
    system.debug('Account industry'+acc.industry);
    system.debug('Accont fax'+acc.fax);
    
     system.debug('---------------------');
         

}
    }
    
    Public static void GetLimitLead()
    {
       List<lead> ldcon=[select id,firstname,lastname,industry,rating,fax from Lead Limit 5];
    
    for(Lead ld:ldcon)
    {
        System.debug('Account record '+ld);
    }
    } 
       
    public static void GetUser()
    {
        user userrecord=[Select id,firstname,lastname,title,username,email from User Limit 1];
        
       if(userrecord.id!=null)
        {
            system.debug('User records are'+userrecord);
        }
    }
    
    public static void GetDel()
    {
        list<Postionn__c>  lstpos= [select 	Name,	Hiring_Team__c,	HR_Email_Id__c,	HR_Contact__c from Postionn__c All Rows ];
            system.debug('Size is'+lstpos.size());
        for(Postionn__c pos:lstpos )
        {
            system.debug('Records are'+pos);
        }
    }
}