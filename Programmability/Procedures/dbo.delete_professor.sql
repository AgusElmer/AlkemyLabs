SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[delete_professor](
 @pprofessor_name varchar(45),
 @pprofessor_lastName varchar(45),
 @pprofessor_ID int,
 @RetVal int 
 )
 AS
BEGIN
 SET @RetVal = 98;
 DELETE FROM professors_table WHERE (professor_ID = @pprofessor_ID);
 SET @RetVal = 0;
END
GO