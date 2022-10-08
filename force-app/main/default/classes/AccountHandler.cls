public class AccountHandler {

    public static Account insertNewAccount(string name){
        Account a = new Account();
        a.Name = name;
        try {
    		insert a;
		    }
        	catch (DmlException e) 
            {
			return null;
   		    }
        return a;
	}
}