SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO









CREATE VIEW [dbo].[vwCRMLoad_Contact_Std_Update] AS
SELECT SSB_CRMSYSTEM_ACCT_ID__c, SSB_CRMSYSTEM_CONTACT_ID__c, Prefix, FirstName, LastName, Suffix, MailingStreet, MailingCity, MailingState, MailingPostalCode, MailingCountry, Phone, Id, AccountId
, [LoadType]
FROM [dbo].[vwCRMLoad_Contact_Std_Prep]
WHERE LoadType = 'Update'






GO
