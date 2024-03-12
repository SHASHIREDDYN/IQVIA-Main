({
	fetchAllAcconts : function(component, event, helper) {
        var columns=[
             {label:"Account Name",fieldName:"Name",type:"text"},
             {label:"Rating", fieldName:"Rating",type:"text"},
             {label:"Industry" ,fieldName:"Industry",type:"text"},
             {label:"Annual Revenue", fieldName:"AnnualRevenue",type:"currency"},
             {label:"Contact Number",fieldName:"Phone",type:"Phone"},
             {label:"Fax",fieldName:"fax",type:"text"},
             {label:"Ownership",fieldName:"Ownership",type:"text"} 
         ];
        component.set("v.recordcolumns",columns);
        
		var action=component.get("c.GetAllAccounts");
        action.setParams({});
        
        action.setCallback(this,function(response){
            var state=response.getState();
            if(state === "SUCCESS")
            {
                component.set("v.lstAccounts",response.getReturnValue());
            }
        } );
        $A.enqueueAction(action);
	}
})