({
  doInit: function(component, event, helper) {
         var accId=component.get("v.accountId");
         //alert("Id of Account from main comp"+accId);
        // getNewRecord loads a new record template that performs an insert when data is saved.
        component.find("creatingContactRecordOnAccount").getNewRecord(
            "Contact", // Specify Object (entityAPIName)
            null,      // recordTypeId
            false,     // skip cache?
            $A.getCallback(function() {
                var conRec = component.get("v.newContactRecord");
                var error = component.get("v.recordError");
                if(error || (conRec === null)) {
                   // alert("Error in initializing template");
                }
                else {
                    //alert("Template initialize succesfully");
                }
            })
        );
    },
    addContact: function(component, event, helper) {
        var lastName=component.get("v.conLastName");
        var firstName=component.get("v.conFirstName");
        var conTitle=component.get("v.conTitle");
        var conDepartment=component.get("v.conDepartment");
        //alert('Name is'+lastName);
        component.set("v.contactFieldsToQuery.AccountId", component.get("v.accountId"));
        component.set("v.contactFieldsToQuery.LastName",lastName);
        component.set("v.contactFieldsToQuery.Title",conTitle);
        component.set("v.contactFieldsToQuery.Department",conDepartment);
        component.find("creatingContactRecordOnAccount").saveRecord(function(saveResult) {
       
           // Handling state of response(SUCCESS,INCOMPLETE,ERROR)
       
             if (saveResult.state === "SUCCESS" || saveResult.state === "DRAFT") {
                var toastEvent = $A.get("e.force:showToast");
        toastEvent.setParams({
            title : 'Success',
            message: 'Contact Inserted Successfully',
            type: 'success'
        });
        toastEvent.fire();
            }
            else if (saveResult.state === "INCOMPLETE" ) {
                alert("Error in saving record");
            }
            else if (saveResult.state === "ERROR") {
               alert("Problem saving record, error:" +
                           JSON.stringify(saveResult.error));
            }
            else
            {
                 //alert('Unknown problem, state: ' + saveResult.state + ', error: ' + JSON.stringify(saveResult.error));
            }
       
         });
    }
})