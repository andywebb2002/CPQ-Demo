@isTest

public class AddClass_Test {
    static testMethod void testAddMethod()
    {
        AddClass a = new AddClass();
        
        integer res = a.add (6, 4);
        // expected result
        System.AssertEquals(10, res);
        System.debug('Result =' + res);
    }
    
    static testMethod void testSubMethod()
    {
        AddClass a = new AddClass();
        
        integer res = a.sub (6, 4);
        // expected result
        System.AssertEquals(2, res);
    }
}