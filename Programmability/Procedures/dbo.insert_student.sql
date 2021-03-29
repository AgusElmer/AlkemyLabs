SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[insert_student](
@pfile_number int,
@pstudent_ID int, 
@pstudent_name varchar(45),
@pstudent_last_name varchar(45),
@Retval Int 
)
AS
BEGIN
SET @RetVal = 99;
IF ((SELECT Count(*) FROM students WHERE file_number = @pfile_number)   =  0)
	INSERT students (file_number, student_ID, student_name, student_last_name)  
	VALUES (@pfile_number, @pstudent_ID, @pstudent_name, @pstudent_last_name);

SET @RetVal = 0;

END
GO