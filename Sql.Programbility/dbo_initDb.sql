USE [Market]
GO
/****** Object:  StoredProcedure [dbo].[initdb]    Script Date: 2/27/2023 4:25:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
--exec [initdb]

ALTER PROCEDURE [dbo].[initdb]
AS
BEGIN
 select 'Start Init'
 
 create table Departments(id int not null identity,[name] nvarchar(100) not null, [description] nvarchar(1000) null)

 create table Items(id int not null identity,[name] nvarchar(100) not null, price money null,instoct int not null,departmentId int not null)

 --drop table Items
 --drop table Departments

 select 'End Init'
END
