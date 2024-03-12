({
	handlingLowComplaints : function(component, event, helper) {
		console.log();
      //Read the attribute value in the component event.
      var messageReceived=event.getParam("CompliantMessage");
        console.log("messageReceived");
	}
})