USE [Market]
GO
/****** Object:  StoredProcedure [dbo].[newDepartment]    Script Date: 2/27/2023 4:25:39 PM ******/
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
-- exec newDepartment N'Phone','Idigital'
ALTER PROCEDURE [dbo].[newDepartment]

--nvarchar(100) - allocate bytes according actual use, maximum 100 bytes , all languages
--nchar(100) -  allocate 100 bytes, even use only 1 char, all languages
--varchar(100) - allocate bytes according actual use, maximum 100 bytes , english only
--char(100) - allocate 100 bytes, even use only 1 char, english only

	@name nvarchar(100),
	@description nvarchar(100)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    insert into Departments([name],[description]) values (@name,@description)
	
	declare @newId int;

	select @newId  = @@IDENTITY

	select @newId*12

END
