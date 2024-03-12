({
	calculate : function(component, event, helper) {
        
        var amount=component.get('v.amount');
        var rate=component.get('v.rate');
        var year=component.get('v.year');
        
        var aval=parseInt(amount);
        var bval=parseInt(rate);
        var cval=parseInt(year);
        
        var action=component.get('c.calculate');
        action.setParams({"amount":aval,"rate":bval,"year":cval});
        action.setCallback(this ,function(response){
           var state=response.getState();
            if(state === "SUCCESS"){
                var result=response.getReturnValue();
                component.find('interest').set('v.value',result);
                console.log(interest);
            }else{
                console.log('Error');
            }
            $A.enqueueAction(action);
        });
        
        //var interest=(amount*rate*year)/100;
        
        //component.set("v.interest",interest);
        //console.log('interest'+interest);
		
	},
    
    reset : function(component, event, helper) {
    
    component.set('v.amount','');
    component.set('v.year','');
    component.set('v.rate','');
    component.set('v.interest','');
}
    
})