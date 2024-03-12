import { LightningElement, track, wire } from 'lwc';
import GetContactRecords from '@salesforce/apex/showContactHelper.GetContactRecords';

const tablecolumns=[
     {label:'Firt Name',fieldName:'FirstName'},
     {label:'Last Name',fieldName:'LastName'},
     {label:'fax',fieldName:'Fax'},
     {label:'Phone',fieldName:'Phone'},
     {label:'Email',fieldName:'Email'}
     
                   ];

export default class ShowAllontacts extends LightningElement 
{
   @track allcontacts;

   @track columns=tablecolumns;
   
   @wire (GetContactRecords) allcontacts;
}