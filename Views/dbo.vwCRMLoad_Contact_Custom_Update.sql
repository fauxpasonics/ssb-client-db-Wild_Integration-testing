SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO



CREATE VIEW [dbo].[vwCRMLoad_Contact_Custom_Update]
AS
SELECT  z.[crm_id] Id
, SSID_Winner SSB_CRMSYSTEM_SSID_Winner__c
, TM_Ids SSB_CRMSYSTEM_FullArchitcs_IDs__c
, GP_Ids SSB_CRMSYSTEM_RaidersImg_IDs__c
, DimCustIDs SSB_CRMSYSTEM_DimCustomerIDs__c
, b.AccountId SSB_CRMSYSTEM_Archtics_Acct_IDs__c
, Birthday Birthdate
, SeasonTicket_Years SSB_CRMSYSTEM_STH_Years__c
, CASE WHEN TM_IDs IS NOT NULL THEN 1 ELSE 0 END SSB_CRMSYSTEM_ArchticsFlag__c 
, CASE WHEN GP_IDs IS NOT NULL THEN 1 ELSE 0 END SSB_CRMSYSTEM_RaidersImgFlag__c
, CASE WHEN [b].[SeasonTicket_Years] IS NOT NULL THEN 1 ELSE 0 END SSB_CRMSYSTEM_STH_Flag__c
, [b].[MobilePhone]
, [b].[HomePhone]
, [b].[Other_Phone] OtherPhone
, [z].[EmailPrimary] Email
-- SELECT *
FROM dbo.[vwCRMLoad_Contact_Std_Prep] a
INNER JOIN dbo.[Contact_Custom] b ON [a].[SSB_CRMSYSTEM_CONTACT_ID__c] = b.[SSB_CRMSYSTEM_CONTACT_ID]
INNER JOIN dbo.Contact z ON a.[SSB_CRMSYSTEM_CONTACT_ID__c] = z.[SSB_CRMSYSTEM_CONTACT_ID]
WHERE z.[SSB_CRMSYSTEM_CONTACT_ID] <> z.[crm_id]

GO
