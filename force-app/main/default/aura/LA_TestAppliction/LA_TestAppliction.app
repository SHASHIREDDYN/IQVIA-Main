<aura:application extends='force:slds'>
    
  <div class="Box">
   
    <lightning:recordEditform objectApiName="Contact">
      <div class="slds-page-header slds-text-heading--large slds-align--absolute-center ">
          
       Contact Record Form
      </div>
             
        <lightning:messages></lightning:messages>
      <lightning:accordion AllowmultipleSectionsopen="true">
          <lightning:accordionsection label='ContactDetails'>
              
              <table>
                <tr>
                  <td><lightning:inputField fieldName="FirstName"/></td>
                  <td><lightning:inputField fieldName="LastName"/></td>
                </tr>
                <tr>
                  <td><lightning:inputField fieldName="Phone"/> </td>
                  <td><lightning:inputField fieldName="Email"/> </td>
                </tr>
              </table>
             
              
          </lightning:accordionsection>
          
     </lightning:accordion>
        <lightning:button label="Create a record" variant="brand" class="slds-m-top_small"  type="Submit"/>
                                                                                      
  </lightning:recordEditform>  
   </div> 
    
    
</aura:application>