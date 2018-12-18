SELECT COUNT(*)  AS DIFF_LOGIN FROM (
	SELECT dbo.i_user_login_logs.UserId_userId
	FROM dbo.i_user_login_logs 
	GROUP BY UserId_userId 
	HAVING COUNT(UserId_userId)>3
) z;

/* 

	if you want to exclude admin you can add 

	EXCEPT(SELECT i_users.userId 
	FROM dbo.i_users 
	WHERE username = 'Admin')

*/