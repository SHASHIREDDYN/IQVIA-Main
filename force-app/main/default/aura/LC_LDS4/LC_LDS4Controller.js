({
	invoke : function(component, event, helper) {
		var action=component.get("c.getAccounts");
        action.setParams({"accIndustry":"Energy"});
        action.setCallback(this, function(response){
              var state=response.getState();
              if(state == "SUCCESS"){
                console.log('Operation is sucess');    
                component.set("v.myaccounts",response.getReturnValue());
                console.log(response.getReturnValue());
                }
                         });
         $A.enqueueAction(action);
	}
})