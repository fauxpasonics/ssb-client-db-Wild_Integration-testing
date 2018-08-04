SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO



CREATE VIEW [dbo].[vwCRMLoad_Account_Std_Update] AS
SELECT SSB_CRMSYSTEM_ACCT_ID__c, Name, BillingStreet, BillingCity, BillingState, BillingPostalCode, BillingCountry, Phone, Id, [LoadType]
FROM [dbo].[vwCRMLoad_Account_Std_Prep]
WHERE LoadType = 'Update'
GO
