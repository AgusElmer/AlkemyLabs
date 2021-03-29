SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[delete_class](
 @pclass_code int,
 @class_name varchar(45),
 @pclass_quota int,
 @pfull_quota int,
 @pclass_schedule int,
 @pclass_professor_dni int,
 @RetVal int 
 )
 AS
BEGIN
 SET @RetVal = 98;
 DELETE FROM classes WHERE (class_code = @pclass_code);
 SET @RetVal = 0;
END
GO