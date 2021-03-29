SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[insert_professor](
@pprofessor_ID int,
@pprofessor_name varchar(45),
@pprofesor_last_name varchar(45),
@Retval Int 
)
AS
BEGIN
SET @RetVal = 99;
IF ((SELECT Count(*) FROM professors_table WHERE professor_ID = @pprofessor_ID)   =  0)
	INSERT professors_table (professor_ID, professor_name, professor_last_name)  
	VALUES (@pprofessor_ID, @pprofessor_name, @pprofesor_last_name);

SET @RetVal = 0;

END
GO