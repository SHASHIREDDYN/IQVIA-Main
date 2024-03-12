<aura:application extends="force:slds">
	<lightning:card >
        <aura:set attribute="title">
          <lightning:avatar size="x-small"  initials="JD" fallbackIconName="standard:person_account" alternativeText="Search" class="slds-m-right_small"/>
        New Account
        </aura:set>
        <aura:set attribute="actions">
            <lightning:button label="Save"/>
            <lightning:button label="Cancel"/>
        </aura:set>
        <aura:set attribute="footer">
            Account is Created with above Details
        </aura:set>
        <div>
            <lightning:input label="Account name"/>
            <lightning:input label="Account Phone"/>
            <lightning:input label="Account Ratintg"/>
            
        </div>
    </lightning:card>
</aura:application>