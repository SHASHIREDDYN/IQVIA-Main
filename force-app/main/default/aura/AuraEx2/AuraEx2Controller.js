({
	showme : function(component, event, helper) {
        //Read the value from firstname and lastname
        var lname=component.find('lname').get("v.value");
        var fname=component.find("fname").get("v.value");
        //Invoke the method from apex class.
        var action=component.get("c.getName");
        //Pass the parameters in the form key value pair.
        action.setParams({"lastname":lname,"firstname":fname});
        //Define callback action
        action.setCallback(this,function(response){
            var state=response.getState();
            if(state==="SUCCESS"){
                var result=response.getReturnValue();
                component.set("v.empName",result);
                console.log(result);
            }else{
                consloe.log('error');
            }
        
		
	});
        $A.enqueueAction(action);
    }
})