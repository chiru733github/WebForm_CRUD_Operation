create proc InsertData
	(@EmployeeId as int,
	@EmployeeName as nvarchar(50),
	@Address as nvarchar(50),
	@Salary as int,
	@Role as nvarchar(50))
as
Begin
	insert into Employee_Table
	values(@EmployeeId,@EmployeeName,@Address,@Salary,@Role)
End;
GO
CREATE PROCEDURE Update_SP
	@EmployeeId int,
	@EmployeeName nvarchar(50),
	@Address nvarchar(50),
	@Salary int,
	@Role nvarchar(50)
AS
BEGIN
	UPDATE Employee_Table
	SET EmployeeName=@EmployeeName,
		Address=@Address,
		Salary = @Salary,
		Role = @Role
	WHERE EmployeeId=@EmployeeId
END;
go
CREATE PROCEDURE Delete_SP
	@EmployeeId int
AS
BEGIN
	DELETE FROM Employee_Table
	WHERE EmployeeId=@EmployeeId
END;
GO
CREATE PROCEDURE SELECTALL_SP
AS
BEGIN
	SELECT * FROM Employee_Table
END;
GO
CREATE PROCEDURE FETCH_SP(@EmployeeId int = 0)
AS
BEGIN
	IF(@EmployeeId>0)
	BEGIN
		SELECT *
		FROM Employee_Table
		WHERE EmployeeId=@EmployeeId
	END
	ELSE
	BEGIN
		SELECT * FROM Employee_Table
	END
END;