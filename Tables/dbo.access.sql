CREATE TABLE [dbo].[access] (
  [user_password] [int] NOT NULL,
  [menu] [varchar](50) NULL,
  [enabled] [varchar](50) NULL,
  [access_id] [int] NOT NULL,
  CONSTRAINT [PK_access] PRIMARY KEY CLUSTERED ([access_id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[access]
  ADD CONSTRAINT [FK_access_admin] FOREIGN KEY ([access_id]) REFERENCES [dbo].[admin_account] ([user_account])
GO

ALTER TABLE [dbo].[access]
  ADD CONSTRAINT [FK_access_students] FOREIGN KEY ([access_id]) REFERENCES [dbo].[students] ([file_number])
GO