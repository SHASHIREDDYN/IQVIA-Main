({
	invoke : function(component, event, helper) {
        
        var amount =component.get("v.amount");
        console.log('amount'+amount);
        
        var rate=component.get("v.rate");
        console.log('Rate:'+rate);
        
        var year=component.get("v.year");
        console.log('Year'+year);

        var interest=(amount*rate*year)/100;
        
        component.set('v.ineterest',interest);
        console.log('Interest'+interest);
	}
})