<aura:application extends="force:slds" >
	<lightning:layout multipleRows="true">
        <lightning:layoutItem size="12" padding="around-medium" flexibility="auto">
            <lightning:card title="Block1">
               <aura:set attribute="title">
                   <lightning:avatar fallbackIconName="standard:account" alternativeText="abc" />
                  
                   &nbsp;&nbsp;<b>Account</b>
               </aura:set>
               <aura:set attribute="actions">
                   <lightning:button label="Save" variant="brand"/>
                   <lightning:button label="Cancel" variant="success"/>
               </aura:set>
                <div>
              <table class="slds-p-around-medium">
                  <tr>
                  <td class="slds-p-around_xx_small">Name:Wipro</td>
                  <td class="slds-p-around_xx_small">Industry:Banking</td>
                  <td class="slds-p-">Banking</td>
                   </tr>
                </table>
              </div>
            </lightning:card>
        </lightning:layoutItem>
        
        <lightning:layoutItem size="3" padding="horizontal-small" flexibility="auto">
            <lightning:card title="Block2">
                <lightning:tile label="Name:shashidhar" />
                <lightning:tile label="Name:shashidhar" />
                <lightning:tile label="Name:shashidhar" />
            </lightning:card>
        </lightning:layoutItem>
        <lightning:layoutItem size="5" padding="horizontal-small" flexibility="auto">
            <lightning:card title="Block3">
                <lightning:input label="First Name"/>
                <lightning:input label="Last Name"/>
                <lightning:input label="Email"/>
            </lightning:card>
        </lightning:layoutItem>
        
        <lightning:layoutItem size="3" padding="horizontal-small" flexibility="auto">
            <lightning:card title="Block4"> 
                <p>lineone</p>
            </lightning:card>
        </lightning:layoutItem>
    </lightning:layout>
</aura:application>