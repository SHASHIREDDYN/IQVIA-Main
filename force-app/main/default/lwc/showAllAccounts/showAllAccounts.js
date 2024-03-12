import { LightningElement, track, wire } from 'lwc';
import GetAllAccounts from '@salesforce/apex/LWCAccountHelper.GetAllAccounts';

export default class ShowAllAccounts extends LightningElement 
{
   @track allAccountRecords;

   @wire  (GetAllAccounts) allAccountRecords;
}