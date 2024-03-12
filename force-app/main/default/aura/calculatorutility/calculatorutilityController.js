({
	doadd : function(component, event, helper) {
        var number1=component.find("ip1").get("v.value");
        var number2=component.find("ip2").get("v.value");
                var result=number1+number2;
        component.find("output").set("v.value",result);
		
	},
    
	dosub : function(component, event, helper) {
    var number1=component.get('v.input1');
    var number2=component.get('v.input2');
        var result=number1-number2;
    component.find("output").set("v.value",result);
		
	},
 
	domul : function(component, event, helper) {
    var number1=component.get('v.input1');
    var number2=component.get('v.input2');
        var result=number1*number2;
        component.find("output").set("v.value",result);
		
	},

	dodiv : function(component, event, helper) {
    var number1=component.get('v.input1');
    var number2=component.get('v.input2');
       var result=number1/number2;
    component.find("output").set("v.value",result);
		
	},
    Reset : function(component, event, helper) {
    var number1=component.get('v.input1');
    var number2=component.get('v.input2');
    component.set('v.output',parseInt(number1)|parseInt(number2));
		
	}
})