import { LightningElement,api } from 'lwc';

export default class getSetChild extends LightningElement 
{
 
   /*  // Getter Setter method  
   Uppercase='default value';

    @api
    get itemName(){
        return this.Uppercase;
    }

    set itemName(value){
      this.Uppercase=value.toUpperCase();
    } */

    // Message passing through child to parent method
    @api firstName='Shashi';
}