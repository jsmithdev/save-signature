public with sharing class UserSignature {
    
    @AuraEnabled
    public static void saveAsDocumentOnRecord(Id recordId, String signature, String extension){

        ContentVersion version = new ContentVersion();
        version.VersionData = EncodingUtil.base64Decode( signature );
        version.Title = 'Signature-'+System.now() +'.'+extension;
        version.PathOnClient = 'Signature-'+System.now() +'.'+extension;
        version.Origin = 'H';//C-Content Origin. H-Chatter Origin.
        version.ContentLocation = 'S'; // S-Document is in Salesforce. E-Document is outside of Salesforce. L-Document is on a Social Network

        insert version;
        
        Id contentDocumentId = [SELECT ContentDocumentId FROM ContentVersion WHERE Id =:version.Id].ContentDocumentId;
        
        ContentDocumentLink link = new ContentDocumentLink();
        link.LinkedEntityId = recordId;
        link.ContentDocumentId = contentDocumentId;
        link.ShareType = 'I'; // V:  Viewer permission. C:  Collaborator permission. I:  Inferred permission.
        link.Visibility = 'AllUsers'; // AllUsers, InternalUsers, SharedUsers
        insert link;
    }
}