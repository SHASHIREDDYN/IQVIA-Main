import { LightningElement, api, track } from 'lwc';

export default class DecoratorChild extends LightningElement 
{
   @track studentName='Avinash Reddy';
   @api studentSchool='VijayaRatnaSchool';
   studentId='12345';
}