// this is a test REST Call class for a Shell case

@RestResource(urlMapping='/showAccountsDetails/*')
global class checkAccount
{

@httpGet
global static LIST<Account> getAccount(){
LIST<Account> lst;
    try
    {
        lst=[select name, phone from Account ORDER BY Name ASC LIMIT 10];
    }
    catch(Exception ex)
    {
        system.debug('Error'+ex.getMessage());
    }
    return lst;
    }
}