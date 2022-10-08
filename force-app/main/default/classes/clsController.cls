public with sharing class clsController 
{
    public List<Contact> contacts {get;set;}
    public clsController()
    {
        contacts = [select id, name, email, title, otherPhone, Postal_Address__c, accountId, phone, Nominate__c from contact limit 10];
    }
    public void save()
    {
    update contacts;
    }
}