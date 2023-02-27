-- ================================================
-- Template generated from Template Explorer using:
-- Create Procedure (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the procedure.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
-- 
--exec addNums 10,70
alter PROCEDURE addNums
	-- Add the parameters for the stored procedure here
	@num1 int
	,@num2 int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	insert into nums(num1,num2) values(@num1,@num2)

	declare @lastId int;
	select @lastId = @@IDENTITY

	select @lastId ;

	if(@lastId=@num1)
	begin
		insert into nums(num1,num2) values(@num2,@num1)
		select 'condition is true'
	end

	if(@num1=8)
	begin
		update nums set num1=2 where num1=1
		select 'condition num1 is 8, therfore change all to 2 where 1'
	end

	if(@num1=9)
	begin
		select * from nums

		update nums set num1=num1+1, num2=num2+1
		select 'condition add 1 to all numbers'

		select * from nums
	end


	if(@num1=10)
	begin
		select * from nums

		select * from nums where (num1+num2)>100
		delete from nums where (num1+num2)>100

		select 'condition sum of nums > 100'

		select * from nums
	end
	

END
GO
