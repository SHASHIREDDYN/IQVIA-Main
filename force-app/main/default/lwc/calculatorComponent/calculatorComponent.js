import { LightningElement } from 'lwc';

export default class CalculatorComponent extends LightningElement
{
    firstNumber;
    secondNumber;
    operationResult;

    handleOnChange(event)
    {
        const elementName = event.target.name;
        const elementValue = event.target.value;

        if(elementName === 'lblFirstNumber')
            this.firstNumber = elementValue;
        else
            this.secondNumber = elementValue;
    }

    handleAddition()
    {
        this.operationResult = parseInt(this.firstNumber) + parseInt(this.secondNumber);
    }

    handleSubtraction()
    {
        this.operationResult = parseInt(this.firstNumber) - parseInt(this.secondNumber);
    }
}