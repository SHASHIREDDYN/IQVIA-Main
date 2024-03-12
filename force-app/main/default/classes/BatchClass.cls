Global class BatchClass implements Database.Batchable<sobject>
{
  Global Database.QueryLocator start(Database.BatchableContext bc)
  {
      string query ='Select id,name,rating,ownership,type from Account';
          return database.getQueryLocator(query);
  }
     global void execute (Database.BatchableContext bc, List<Account> scope)
     {
         for(Account a:scope)
         {
             a.ownership='Public';
             a.rating='HOT';
         }
         update scope;
         
        }
      global void finish(Database.BatchableContext bc)
      {
        AsyncApexjob jb=[select id,Jobtype,Totaljobitems,jobitemsProcessed,NumberOfErrors from AsyncApexjob where id =:bc.getJobId()];
        /*Messaging.SingleEmailMessage msg= new Messaging.SingleEmailMessage();
        String[] toadd= new String[]{'shashireddyuae@gmail.com'};
        msg.setToAddresses(toadd);
        
        string body= 'Dear Admin,<br/> Batch operation with Jobid :<b>'+jb.id;
         body =body+'</b><br/><br/> Processed Successfully <br/> Total JObItems:<b>'+jb.TotalJobItems;
         body =body+'</b> <br/><br/>No of Errors :<b>'+jb.NumberofErrors+'</b>';
             msg.setSubject('Batch status');
             msg.setHtmlBody(body);
        Messaging.Email[] emails = new Messaging.Email[] {msg};
        Messaging.sendEmail(emails);
             
    }*/
      }
}