({
	invoke : function(component, event) {
        var Amount=component.get("v.Amount");
        console.log('Amount:'+Amount);
        
        var Rate=component.get("v.Rate")
        console.log('Rate:'+Rate);
        
        var years=component.get("v.years");
        console.log('years:'+years);
       // var interest=(Amount*years*Rate)/100;
        
        component.set("v.interest",parseInt(Amount*years*Rate)/100);
        console.log('interest:'+interest);
		
	}
})