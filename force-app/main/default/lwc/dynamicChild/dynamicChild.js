import { LightningElement, api } from 'lwc';

export default class DynamicChild extends LightningElement 
{
  @api childProperty='This is child Property value';
}