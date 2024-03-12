({
	handler : function(component, event, helper) {
        var sum = parseInt(component.get("v.firstnumber"))+parseInt(component.get("v.secondnumber"));
        var eventobj = $A.get("e.c:CalculatorAppEvent");
        eventobj.setParams({"sumresult":sum});
        eventobj.fire();
		
	}
})