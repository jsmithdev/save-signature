@isTest
public with sharing class UserSignatureTest {
    
    @isTest
    public static void saveAsDocumentOnRecordTest() {

        Contact con = new Contact(
            FirstName = 'Border',
            LastName = 'Collie'
        );

        insert con;
        
        UserSignature.saveAsDocumentOnRecord('BorderCollie', con.Id, '.txt');
    }
}
