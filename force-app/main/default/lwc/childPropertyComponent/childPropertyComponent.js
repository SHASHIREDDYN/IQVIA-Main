import { LightningElement, track,api } from 'lwc';

export default class ChildPropertyComponent extends LightningElement 
{
    @track customerName='shashidhar';
    @api productName='Washing Machine';
    employeeName='Santosh';
}