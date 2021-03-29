CREATE TABLE [dbo].[students] (
  [file_number] [int] NOT NULL,
  [student_ID] [int] NULL,
  [student_name] [nchar](10) NULL,
  [student_last_name] [nchar](10) NULL,
  CONSTRAINT [PK_students] PRIMARY KEY CLUSTERED ([file_number])
)
ON [PRIMARY]
GO