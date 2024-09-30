<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Operations</title>
<style type="text/css">
	*{
		margin:0px;
		padding:0px;
	}
	body{
		width: 100vw;
		height:100vh;
		background-color:#5F4B8BFF;
		display:flex;
		justify-content:center;
		align-items:center;
	}
	div
	{
		width: 60%;
		height:80%;
		background-color:#E69A8DFF;
		display:flex;
		flex-direction:column;
		justify-content:space-evenly;
		align-items:center;
		border-radius:100px;
	}
	a{
		width:200px;
		height:50px;
		border:none;
		outline:none;
		border-radius:25px;
		
	}
	input{
		width:100%;
		height:100%;
		border:none;
		outline:none;
		border-radius:25px;
		padding:10px;
		font-size:20px;
		font-weight:bolder;	
		color:#E69A8DFF;
		background-color: #5F4B8BFF;
	}
</style>
</head>
<body>
	<div>
		<a href="Adds" ><input type="reset" value="Add Employee"></a>
		<a href="Fetch"><input type="reset" value="Fetch Employee"></a>
		<a href="Update"><input type="reset" value="Update Employee"></a>
		<a href="Delete"><input type="reset" value="Delete Employee"></a>
	</div>
</body>
</html>