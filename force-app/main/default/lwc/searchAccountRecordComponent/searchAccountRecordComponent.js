import { LightningElement, track } from 'lwc';

import SearchAccountRecords from '@salesforce/apex/LWCAccountHelper.SearchAccountRecords';


const tablecolums=[
                    {label:'Account Name',fieldName:'Name'},
                    {label:'Account Rating',fieldName:'Rating'},
                    {label:'Account Industry',fieldName:'Industry'},
                    {label:'Account Phone',fieldName:'Phnoe'},
                    {label:'Account Fax',fieldName:'Fax'},
                    {label:'Account Type',filedName:'Type'},
                    {label:'Account Ownership',fieldName:'Ownership'}
                   ]
export default class SearchAccountRecordComponent extends LightningElement 
{
   
    @track searchContext;

    @track recordResult;

    @track columns=tablecolums;

    handleOnChange(event)
    {
        this.searchContext=event.target.value;

    }
    

    handleClick()
    {
        SearchAccountRecords({stringChars:this.searchContext}).then(result=>{
                                                                this.recordResult=result;
                                                    }).catch(error=>{
                                                              console.log('Error has been Occured..:'+error);
                                                     });
    }
}