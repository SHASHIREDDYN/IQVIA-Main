({
	handleReset : function(component, event, helper) {
		 
        component.find("field").forEach(function(f){
            
           f.reset(); 
        });
    }
})