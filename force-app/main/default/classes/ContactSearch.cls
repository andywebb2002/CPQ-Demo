public class ContactSearch {

    public static List<Contact> searchForContacts(string lastName, string mailingPostalCode){
        List<Contact> retList = [SELECT ID, Name, LastName, MailingPostalCode FROM Contact WHERE LastName = :lastName AND MailingPostalCode = : mailingPostalCode];
        return retList;
    }
}