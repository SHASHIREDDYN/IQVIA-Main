({
	Showme : function(component, event, helper) {
		 var abc=component.get("c.CallMe");// Callme method from Apex class.
        abc.setCallback(this,function(response){
            var state=response.getState();
            //Get the state of the response
            if(state ==='SUCCESS'){
             //If the state is success then get the return value.
            var result=response.getReturnValue();
            component.set('v.result',result);
            console.log('Result'+result) 
            }else{
                console.log('status fialed');
            }
                
        });
         $A.enqueueAction(abc);// We are adding the action to the queue.
	}
})