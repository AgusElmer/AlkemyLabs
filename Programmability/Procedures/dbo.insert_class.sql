SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[insert_class](
@pclass_code int,
@pclass_professor_dni int, 
@pclass_quota int,
@pclass_schedule datetime,
@pclass_name varchar(45),
@Retval Int 
)
AS
BEGIN
SET @RetVal = 99;
IF ((SELECT Count(*) FROM classes WHERE class_code = @pclass_code)   =  0)
	INSERT classes (class_code, class_professor_dni, class_quota, class_schedule, class_name)  
	VALUES (@pclass_code, @pclass_professor_dni, @pclass_quota, @pclass_schedule, @pclass_name);

SET @RetVal = 0;

END
GO