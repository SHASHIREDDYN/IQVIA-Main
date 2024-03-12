import { LightningElement, track, wire } from 'lwc';
import GetAllLeadRecords from '@salesforce/apex/LWCAccountHelper.GetAllLeadRecords';

const tableColumns=[
                {label:'First Name',fieldName:'FirstName',type:'text'},
                {label:'LastName',fieldName:'LastName',type:'text'},
                {label:'Company',fieldName:'Company',type:'text'},
                {label:'Phone',fieldName:'Phone',type:'text'},
                {label:'Rating',fieldName:'Rating',type:'text'},
                {label:'City',fieldName:'City',type:'text'},
                {label:'Email',fieldName:'Email',type:'text'},
                {label:'State',fieldName:'State',type:'text'},

                   ];
export default class ShowAllLeads extends LightningElement
 {
    @track allLeads;

    @track columns=tableColumns;

    @wire (GetAllLeadRecords) allLeads;
 }