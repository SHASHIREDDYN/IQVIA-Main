import { LightningElement, track, wire } from 'lwc';
import  GetAllAccounts from  '@salesforce/apex/LWCAccountHelper.GetAllAccounts';

const tablecolmns= 
[
    {label:'Account Name', fieldName:'Name',type:'text'},
    {label:'Account Industry',fieldName:'Industry',type:'text' },
    {label:'Account Phone', fieldName:'Phone', type:'text'},
    {label:'Account Fax', fieldName:'Fax', type:'text'},
    {label:'Account type', fieldName:'Type', type:'text'},
    {label:'Account AnnualRevemue', fieldName:'Annual Revenue', type:'text'},
    {label:'Account Ownership', fieldName:'ownersihp', type:'text'}
]

export default class ShowWireMethod extends LightningElement 
{
 
   /*  @track allRecords;

    @track columns= tablecolmns;

    @wire (GetAllAccounts) allRecords; */

    @track allRecords;

    @track columns=tablecolmns;

    @wire (GetAllAccounts) GetallRecords ({data,error}){
        if(data)
        {
           this.allRecords=data;
        }
        else if(error)
        {
            this.allRecords=error;
            console.log('something went wwrong...'+error);
        }
    };
}