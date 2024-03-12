public class AccHandler {

    public static void updateContactFields() {
       List <Contact> lstcontacts = [SELECT Id, FirstName, LastName, AccountId, Fax, Phone, MailingCity,
                                      MailingCountry, MailingStreet, MailingPostalCode, MailingState 
                                     FROM Contact WHERE AccountID IN :Trigger.NewMap.keySet()];

        if (!lstcontacts.isEmpty()) {
            List<Contact> contactsToUpdate = new List<Contact>();

            for (Contact con : lstcontacts) {
                // Use the AccountId from the Contact to get the corresponding Account
                Account acc = Trigger.NewMap.get(con.AccountId) instanceof Account ? (Account)Trigger.NewMap.get(con.AccountId) : null;

                if (acc != null) {
                    con.Phone = acc.Phone;
                    con.Fax = acc.Fax;
                    con.MailingCity = acc.BillingCity;
                    con.MailingCountry = acc.BillingCountry;
                    con.MailingState = acc.BillingState;
                    con.MailingStreet = acc.BillingStreet;
                    con.MailingPostalCode = acc.BillingPostalCode;

                    contactsToUpdate.add(con);
                }
            }

            if (!contactsToUpdate.isEmpty()) {
                update contactsToUpdate;
            }
        }
    }

}