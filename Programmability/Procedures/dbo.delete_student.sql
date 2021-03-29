SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[delete_student](
 @pfile_number INT,
 @pstudent_ID INT,
 @pstudent_name varchar(45),
 @pstudent_lastName varchar(45),
 @RetVal int 
 )
 AS
BEGIN
 SET @RetVal = 98;
 DELETE FROM students WHERE (file_number = @pfile_number);
 SET @RetVal = 0;
END
GO