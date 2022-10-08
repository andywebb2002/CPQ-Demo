public class c2{

    List<Account> acts = [select Name, Type, Industry, Phone, Fax from Account where Type='Customer - Channel'];
    List<Account> acts2 = [select Name, Type, Industry, Phone, Fax from Account where Type='Customer - Direct'];
    
    public List<Account> getacts(){
    return acts;
    }
    public List<Account> getacts2(){
    return acts2;
    }
}