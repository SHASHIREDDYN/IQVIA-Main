({
	invoke : function(component, event, helper) {
	var action=component.get("c.GetAccounts");	
        action.setCallback(this,function(response){
            var state=response.getState();
            if(state==="SUCCESS"){
                component.set("v.myaccounts",response.getReturnValue());
            }else{
                      console.log('Failed');        
                 }
        });
        $A.enqueueAction(action);
	}
})