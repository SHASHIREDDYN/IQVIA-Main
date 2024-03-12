({
     CalculateSimpleInterest : function(component, event, helper) 
    {
		var principleAmount = component.find("pAmount").get("v.value");
        var interestRate = component.find("rate").get("v.value");
        var timePeriod = component.find("tenure").get("v.value");
        
        var interestAmount = (principleAmount * interestRate * timePeriod) / 100;
        component.find("interestAmount").set("v.value",interestAmount);
        
        var totalOutstanding = parseInt(principleAmount) + parseInt(interestAmount);
        component.find("totalAmount").set("v.value",totalOutstanding);
        
	}
})