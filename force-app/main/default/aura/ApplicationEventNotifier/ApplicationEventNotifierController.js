({
	fireAppEvent : function(component, event, helper) {
        
        var appEvent =$A.get("e.c:ApplicationEvent");
        
        appEvent.setParams({
            "message":"value form Application Event Notifier"
        });
        appEvent.fire();
	}
})