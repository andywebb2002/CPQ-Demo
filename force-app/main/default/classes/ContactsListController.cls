public class ContactsListController {

private String sortOrder = 'LastName';
private String BillingCity = 'billingcity';
    
public List<Contact> getContacts() {
    
    List<Contact> results = Database.query(
        'SELECT Id, FirstName, LastName, Title, Email ' +
        'FROM Contact ' +
        'ORDER BY ' + sortOrder + ' ASC ' +
        'LIMIT 10'
    );
    return results;
}
    
    public void sortByLastName() {
    this.sortOrder = 'LastName';
}
    
public void sortByFirstName() {
    this.sortOrder = 'FirstName';
}
    
    public List<account> getAccounts() {
    
    List<Account> results = Database.query(
        'SELECT Id, Name, Fax, Site, Type ' +
        'FROM Account ' +
        'ORDER BY ' + billingcity + ' ASC ' +
        'LIMIT 10'
    );
    return results;
}

}