<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>McGill Book Store Inventory System - Login</title>
</head>
<body>
	<p>Hello, please, login McGill Book Store Inventory System</p>
	<form method="POST" action="j_security_check">
		<input type="text" name="j_username">
		<input type="password" name="j_password">
		<input type="submit" value="Enter">
	</form>
</body>
</html>