CREATE TABLE [dbo].[professors_table] (
  [professor_ID] [int] NOT NULL,
  [professor_name] [nchar](10) NULL,
  [professor_last_name] [nchar](10) NULL,
  CONSTRAINT [PK_professors_table] PRIMARY KEY CLUSTERED ([professor_ID])
)
ON [PRIMARY]
GO