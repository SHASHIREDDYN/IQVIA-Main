({
	show : function(cmp, event, helper) {
		// Fetch the event
		var evt=cmp.getEvent("firstCall");
        // set the attribute values
        evt.setParams({"empname":"sathis myla"});
        //Fire the event
        evt.fire();
	}
})