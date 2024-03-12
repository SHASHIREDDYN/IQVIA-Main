({
	invoke : function(component, event, helper) {
        componenet.get("record").saveRecord($A.getCallback(function(saveResult){
            var state=saveResult.state;
            if(state==="SUCCESS" || state==="DRAFT"){
                console.log("Record Save Successfully");
            }else if(state==="INCOMPLETE"){
                console.log("Unable to changes in offlinre mode");
            }else if(state==="ERROR"){
                console.log("Error:"+saveResult.error);
            }else {
                console.log("Unkonown Error");
            }
                
            
        }));
	}
})