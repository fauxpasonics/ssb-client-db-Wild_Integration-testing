CREATE TABLE [dbo].[Account]
(
[SSB_CRMSYSTEM_ACCT_ID] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[IsBusinessAccount] [int] NOT NULL,
[FullName] [nvarchar] (300) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FirstName] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LastName] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AddressPrimaryStreet] [nvarchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AddressPrimaryCity] [nvarchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AddressPrimaryState] [nvarchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AddressPrimaryZip] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AddressPrimaryCountry] [nvarchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Phone] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EmailPrimary] [nvarchar] (256) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MDM_UpdatedDate] [datetime] NOT NULL,
[crm_id] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CRMProcess_UpdatedDate] [datetime] NULL,
[CRM_LoadDate] [datetime] NULL,
[LastCRMLoad_Error] [varchar] (8000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LastCRMLoad_AttemptDate] [datetime] NULL
)
GO
ALTER TABLE [dbo].[Account] ADD CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED  ([SSB_CRMSYSTEM_ACCT_ID])
GO
CREATE UNIQUE NONCLUSTERED INDEX [UIDX_dboAccount_crmid] ON [dbo].[Account] ([crm_id])
GO
