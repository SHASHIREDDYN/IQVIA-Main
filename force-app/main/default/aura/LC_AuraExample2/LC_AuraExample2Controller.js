({
	invoke : function(component, event, helper) {
        // Read the value of firstname and lastname
		var lname=component.find('lname').get('v.value');
        var fname=component.find('fname').get('v.value');
        // Invoke the method from Apex class
        var action=component.get("c.getName");
        // Pass the parameters in the form key pair
        action.setParams({"lastname":lname,"firstname":fname});
        //Define callback
        action.setCallback(this,function(response){
            var state =response.getState();
            if(state === "SUCCESS"){
                var result=response.getReturnValue();
                component.set('v.empname',result);
                console.log(result);
            }
            
        });
        $A.enqueueAction(action);
	}
})