SELECT dbo.i_users.username,dbo.i_users.emailaddress FROM dbo.i_users WHERE userId = (
	SELECT TOP 1 UserId_userId FROM dbo.i_user_login_logs 
	WHERE UserId_userId != 1 
	GROUP BY UserId_userId 
	ORDER BY COUNT(login_date) desc 
	)