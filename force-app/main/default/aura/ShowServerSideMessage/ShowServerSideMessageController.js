({
	ShowCallMessage : function(component, event, helper) {
        
	//Call the APex class	
        var show=component.get("c.GetMessage");
    //Prepare the callback function.
        show.setCallback(this,function(response)
                         {
    // Get the status of the Method.                     
        var state=response.getState();
        if(state === "SUCCESS")
        {
           console.log("Operation completed successfully");

           var showresult=response.getReturnValue();
           component.find("result").set("v.value",showresult);
        } else
        {
            console.log("Opreation has failed");
        }
                         });
                 $A.enqueueAction(show);
	}
})