public class myaccountcontroller 
{

    public Account account{get;set;}
    public myaccountcontroller ()
    {
        Id id=apexpages.currentPage().getParameters().get('ID');
        account=[select Id,name,phone from Account where Id=:id];
    }
}