({
	invoke : function(component, event, helper) 
    {
		var amount =component.get("v.amount");
        console.log('Amount:s'+amount);
        var rate =component.get("v.rate");
        console.log('Rate:'+rate);
        var year =component.get("v.year");
        console.log('Year:'+year);
        var interest =(amount*rate*year)/100;
        console.log('Interest'+interest);
        component.set("v.interest",interest);

	}
})