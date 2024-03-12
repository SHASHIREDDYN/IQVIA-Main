({
	show : function(component, event, helper) {
        var name=component.find("name").get("v.value");
        var evt=$A.get("e.c:Accevt");
        evt.setParams({"accnName":name});
        evt.fire();
	}
})