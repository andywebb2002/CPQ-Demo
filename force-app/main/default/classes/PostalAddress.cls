public with sharing class PostalAddress 
{
    public List<Postal_Address__c> PostalAddress {get;set;}
    public PostalAddress(clsController controller) 
    {
        PostalAddress = [select id, name, Street_Name__c, Postcode__c, House__c, Country_Code__c from Postal_Address__c limit 10];
    }
    public void save()
    {
    update PostalAddress;
    }
}