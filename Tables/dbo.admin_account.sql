CREATE TABLE [dbo].[admin_account] (
  [user_account] [int] NOT NULL,
  [password] [varchar](50) NULL,
  CONSTRAINT [PK_admin_account] PRIMARY KEY CLUSTERED ([user_account])
)
ON [PRIMARY]
GO