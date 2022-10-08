@isTest
private class AccountTriggerTest {
    @isTest static void TestCreateNewAccountInBulk() {
        // Test Setup data        
        // Create 200 new Accounts
        List<Account> accts = new List<Account>();
            for(Integer i=0; i < 2; i++) {
                Account acct = new Account(Name='Test Account ' + i, BillingState = 'CA');
                accts.add(acct);
        }
        
        // Perform Test
        Test.startTest();
        	insert accts;                               
        Test.stopTest();
        
        // Please query all records once again to check assert
        List<Account> lstAccount = [select ShippingState from Account];
        for (Account a: lstAccount)
        {
            System.assertEquals('CA', a.ShippingState, 'ERROR');
        }
        
        /* Verify that 200 new Accounts were inserted
        List<Account> verifyAcctNum = [SELECT Id FROM Account];
        System.assertEquals(200, verifyAcctNum.size());
        
        // Also verify that 200 new Opportunities were inserted
        List<Account> verifyAccts = [SELECT ShippingState FROM Account];                              
        System.assertEquals(200, verifyAccts.size());   
        */
    }
}