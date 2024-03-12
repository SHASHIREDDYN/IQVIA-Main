({
	invoke : function(component, event, helper) {
        component.find("record").saveRecord($A.getCallback(function(saveResult){
             if(saveResult.state ==="SUCCESS" || saveReult.state==="DRAFT")
             {
                 console.log("Record Saved sucessfully");
             }else if (saveResult.state ==="INCOMPLETE"){
                 console.log("Unable to save chages in offline mode");
             }
         else if(saveResult.state==="ERROR"){
                 console.log('Error:'+saveResult.error);                          
            }else
             {
              console.log('Unknownerror');                          

             }
    
        }));
        
	}
})