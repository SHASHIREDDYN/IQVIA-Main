import { LightningElement, track } from 'lwc';
import SearchAccountRecords from '@salesforce/apex/LWCAccountHelper.SearchAccountRecords'

const columns=[
                     {lable:'Account Name',fieldName:'Name'},
                     {lable:'Rating',fieldName:'Rating'},
                     {lable:'Industry',fieldName:'Industry'},
                     {lable:'Company',fifieldNameeld:'Company'},
                     {lable:'Fax',fieldName:'Fax'},
                     {lable:'Type',fieldName:'Tyep'},
                     {lable:'ownership',fieldName:'ownership'}


                   ];

export default class WiredImperativeMethod extends LightningElement 
{
   @track SearchContent;

   @track resultAccountRecords;

   @track tablecolumns=columns;

   handleOnChange(event)
   {
         this.SearchContent=event.target.value;
   }
   handleSerchRecords()
   {
       SearchAccountRecords({stringChars:this.SearchContent}).then(result =>{
                            this.resultAccountRecords=result;

       }).catch(error =>{
        console.log('Error has been occured...'+error)
       });
   }
}