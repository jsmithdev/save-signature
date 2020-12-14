@isTest
public with sharing class UserSignatureTest {
    
    @isTest
    public static saveAsDocumentOnRecordTest() {

        Contact con = new Contact(
            FirstName = 'Border',
            LastName = 'Collie'
        );

        insert con;
        
        UserSignature.saveAsDocumentOnRecord('test', con.Id);
    }
}
