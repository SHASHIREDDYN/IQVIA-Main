({
	doSubmit : function(cmp, evt, hlpr) {
        // acccessing the value in attribute abc
        
        var intialABCValue= cmp.get("v.abc");
        if(initialABCValue == "true"){
            
            alert("Value is True");
            // setting value of abc to false
            cmp.set("v.abc","false");
        }
        
        else{
            alert("Value is False");
            // setting value of abc to true
            cmp.set("v.abc","true");
        }
		
	}
})