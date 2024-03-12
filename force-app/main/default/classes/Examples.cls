public class Examples
{
    public static void UserDelete(string Uname)
    {
        if( Uname != null && Uname !='')
        {
         User Useracc=[select id,firstname,lastname,isactive,UserName from User where Username=:Uname Limit 1 ];
            if(Useracc.id !=null)
            {
                Useracc.IsActive=false;
                
                Update Useracc; 
            }
        }
    }
    public static void UpdateBanking()
    {
    List<Account> lstacc=[select id,name,fax,industry,phone from Account where industry='Banking'];
    
       if(!lstacc.isempty())
       {
           for(Account acc:lstacc)
           {
               acc.Rating='Cold';
           }
           update lstacc;
       }
        
            
    }
    public static void DeleteLaedRec(string startingchars)
    {
        if(startingchars !=null && startingchars !='')
        {
            delete[select id,firstname,lastname from contact where Lastname Like : startingchars +'%'];
            system.debug('Deleted rec'+Limits.getDmlRows());
        }
    }
    public static void CreateBulklead()
    {
        List<Lead> lstleads =new List<Lead>();
        
        for(integer counter=5; counter <=10; counter++ )
        {
            Lead ld =new Lead();
            ld.FirstName ='shaski';
            ld.LastName='reddy'+counter;
            ld.Phone='949499670';
            ld.Company='HCL1';
            ld.Status='closed';
            
            
            lstleads.Add(ld);
            }
        if(!lstleads.isEmpty())
        {
            insert lstleads;
            
            system.debug('Number of DML Sts Used'+Limits.getDmlStatements());
            system.debug('Number of DML Sts Used'+Limits.getLimitDmlStatements());
            system.debug('Number of DML Sts Used'+Limits.getDmlRows());
            system.debug('Number of DML Sts Used'+Limits.getLimitDmlRows());



        }
    }
    public static void Getcount()
    {
        integer recordcount=[select count() from Account];
        system.debug('Record count'+recordcount);
    }       
    public static void GerCaseStatius(string casestatus)
    {
        if(casestatus !=null && casestatus !='')
        {
            string lstcase='select id, status,reason,type,origin from case where status =:casestatus';
            List<case> cs=Database.Query(lstcase);
            
            for(case cas:cs )
            {
                system.debug('Cases are'+cs);
            }
        }
    }
    public static void GetAccbyIndu(string industryName)
    {
        if(industryName !=null && industryName !='')
        {
            list<Account> lstacc=[select id,name,fax,phone,industry from account where industry =:industryName];
            
            for(Account acc:lstacc)
            {
                system.debug('Account Record id'+acc);

            }
        }
    }
    public static void GetAlFindbamking()
    {
        List<Account> lstaccounts=[select id,name,fax,phone from Account where industry='Banking'];
        for(Account acc: lstaccounts)
        {
            system.debug('Account Record is'+acc.id);
        }
    }
    public static void GetAllRec()
    {
        List<account> lstacc=[select id,name,fax,phone,industry from Account order by name  Limit 10];
        system.debug('Total Records'+lstacc.size());
        
        if(! lstacc.isEmpty())
        {
            for(Account acc:lstacc)
            {
                system.debug('Accout id'+acc.id);
            }
        }
    }
    public static void GetAllcon()
    {
        list<Contact> lstcon=[select id,firstname,lastname,fax,phone from contact];
        
        {
            for(contact con:lstcon)
                {
                    system.debug('Contact'+con.Id);
                }
        }
    }
    public static void GetAllCase()
    {
    Map<ID,Case> mapCases =new Map<ID,Case>([select id,casenumber,type,status,origin from case]);
          
    for(Case cs:mapCases.values())
    {
        system.debug('Case record'+cs.id);
    }
}    
}