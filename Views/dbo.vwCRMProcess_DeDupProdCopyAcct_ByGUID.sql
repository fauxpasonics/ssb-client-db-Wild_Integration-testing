SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE VIEW [dbo].[vwCRMProcess_DeDupProdCopyAcct_ByGUID]
AS
SELECT 'Test' Test

/*
SELECT SSB_CRMSYSTEM_ACCT_ID__c, id, CreatedDate, CreatedById, RANK() OVER (PARTITION BY SSB_CRMSYSTEM_ACCT_ID__c ORDER BY CreatedDate ASC) Rank
FROM prodcopy.[vw_Account]
WHERE SSB_CRMSYSTEM_ACCT_ID__c IS NOT NULL
*/

GO
