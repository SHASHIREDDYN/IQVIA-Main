({
	Cal : function(component, event, helper) {
        var Amount=component.get("v.Amount");
        var Year=component.get("v.Year");
        var Rate=component.get("v.Rate");
        var Intrest=(Amount*Year*Rate)/100;
        component.set("v.Intrest",Intrest);

	},
    Reset : function(component, event, helper) {
        component.set("v.Amount",'');
        component.set("v.Year",'');
        component.set("v.Rate",'');
        component.set("v.Intrest",'');
    }
})