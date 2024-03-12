({
	helperMethod : function(helper) {
		helper.onsearchhelper(helper)
	},
    
    getcarType : function (component, helper){
                           
        var action  = component.get("c.getCarTypes");
           action.setCallback(this,function(data){
           var state = response.getState();
        if(state === "SUCCESS"){
            component.set("v.carType",data.getReturnValue());
        }
               else if(state = "Error"){
        alert('Unknown Error');
       }
            
        });  
            $A.enqueueAction(action);
        
    }

    
})