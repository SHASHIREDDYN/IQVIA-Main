({
	forwardLPComplint : function(component, event, helper) {
		// fire the component evnent,below are the steps invloved
		// 1.Get a reference to our component.
	  var LPCEvent=component.getEvent("LowPriorityComplaintFromTownship1");
        // 2.Set the attribute value
        LPCEvent.setParams({"CompliantMessage":"Township 2 is not behaving properly"});
        // fire the event
        LPCEvent.fire();
	},
   
    forwardMPComplint : function(component, event, helper) {
		// fire the component evnent,below are the steps invloved
		// 1.Get a reference to our component.
	  var MPCEvent=component.getEvent("MediumPriorityComplaintFromTownship1");
        // 2.Set the attribute value
        MPCEvent.setParams({"CompliantMessage":"Township 2 is not maintaning properly"});
        // fire the event
        MPCEvent.fire();
	},
    forwardHPComplint : function(component, event, helper) {
		// fire the component evnent,below are the steps invloved
		// 1.Get a reference to our component. 
	  var HPCEvent=component.getEvent("HighPriorityComplaintFromTownship1");
        // 2.Set the attribute value
        HPCEvent.setParams({"CompliantMessage":"Township 2 is not behaviour is not good with us"});
        // fire the event
        HPCEvent.fire();
	}
})