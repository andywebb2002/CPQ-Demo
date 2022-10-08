public class myExtension {

    Account currentRecord;
    
    public myExtension(ApexPages.StandardController controller) {
        currentRecord = [SELECT Id, Name FROM Account WHERE Id = :ApexPages.currentPage().getParameters().get('id')];
    }

    public Account getcurrentRecord(){
        return currentRecord;
    }
}