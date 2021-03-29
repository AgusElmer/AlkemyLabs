CREATE TABLE [dbo].[classes] (
  [class_code] [int] NOT NULL,
  [class_professor_dni] [int] NOT NULL,
  [class_quota] [int] NULL,
  [class_schedule] [datetime] NOT NULL,
  [class_name] [nchar](10) NOT NULL,
  CONSTRAINT [PK_classes] PRIMARY KEY CLUSTERED ([class_code])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[classes]
  ADD CONSTRAINT [classes_professors] FOREIGN KEY ([class_professor_dni]) REFERENCES [dbo].[professors_table] ([professor_ID])
GO