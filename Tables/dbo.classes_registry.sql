CREATE TABLE [dbo].[classes_registry] (
  [file_number] [int] NULL,
  [class_code] [int] NULL,
  [registry_ID] [int] NOT NULL,
  CONSTRAINT [PK_classes_registry] PRIMARY KEY CLUSTERED ([registry_ID])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[classes_registry]
  ADD CONSTRAINT [FK_classes_student] FOREIGN KEY ([class_code]) REFERENCES [dbo].[classes] ([class_code])
GO

ALTER TABLE [dbo].[classes_registry]
  ADD CONSTRAINT [FK_student_classes] FOREIGN KEY ([file_number]) REFERENCES [dbo].[students] ([file_number])
GO