/**
 * Description: This trigger will create a primary contact when an account is created with annual revenue greater than 499999
 *
 * Created By: Siddharth Pandit
 * Created Date: July-10-2022
 **/
trigger InsertPrimaryContact on Account (after insert) {
    List<Contact> conListToInsert = new List<Contact> ();
    for (Account acct : Trigger.new) {
        if (acct.AnnualRevenue >= 500000) {
            Contact newContact = new Contact();
            newContact.FirstName = 'Primary - ' + acct.Name;
            newContact.LastName = 'Contact';
            newContact.AccountId = acct.Id;
            conListToInsert.add(newContact);
        }
    } // End for
    if (conListToInsert.size() > 0) {
        insert conListToInsert;
    }
}