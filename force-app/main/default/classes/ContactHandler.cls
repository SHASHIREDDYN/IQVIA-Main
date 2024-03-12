public class ContactHandler {

    public static void beforeInsert(List<Contact> newContacts) {
        for(Contact con : newContacts) {
            if(con.AccountId == null) {
                con.AccountId.addError('Account name Should Be Entered');
            }
        }
    }
}