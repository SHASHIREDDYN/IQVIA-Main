import { LightningElement,api } from 'lwc';

export default class ChildDynamicPropertyComponent extends LightningElement 
{
  @api childProperty ='This is child component property Value';  
}