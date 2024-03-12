import { LightningElement, api, track, wire } from 'lwc';
import { getRecord } from 'lightning/uiRecordApi';

const FIELDS=['Account.Name','Account.Industry','Account.Rating','Account.Fax','Account.Phone',
       'Account.Website','Account.AnnualRevenue','Account.Type'];

export default class GetAccontDetailsUIMethod extends LightningElement 
{
   @api recordId;
   @api objectApiName;

   @track accountRecord;

   accName;
   accIndustry;
   accRating;
   accFax;
   accPhone;
   accWebsite;
   accAnnualRevenue;
   accType;
   accActive

   @wire (getRecord, {recordId:'$recordId',fields:FIELDS}) wiredFunction({data,error})
   {
       if(data)
       {
        this.accountRecord=data;

         this.accName=this.accountRecord.fields.Name.value;
         this.accIndustry=this.accountRecord.fields.Industry.value;
         this.accRating=this.accountRecord.fields.Rating.value;
         this.accFax=this.accountRecord.fields.Fax.value;
         this.accPhone=this.accountRecord.fields.Phone.value;
         this.accWebsite=this.accountRecord.fields.Website.value;
         this.accAnnualRevenue=this.accountRecord.fields.AnnualRevenue.value;
         this.accType=this.accountRecord.fields.Type.value;
         this.accActive=this.accountRecord.fields.Active.value;
       }

       else if(error)
       {
        console.log('erros occred while fetching the record'+JSON.stringify(error));
       }
   }
}