<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete Records</title>
<style type="text/css">
	*{
		margin: 0px;
		padding: 0px;
	}
	body{
		width: 1oovw;
		height: 100vh;
		background-color: #C0C78C;
		display:flex;
		flex-direction: column;
		justify-content:center;
		align-items:center;
	}
	#maincontainer{
		width:60%;
		height:80%;
		background-color: #FEFAE0;
		border-radius: 100px;
		display:flex;
		flex-direction: column;
		justify-content:center;
		align-items:center;
	}
	input{
		width:200px;
		height:25px;
		border:none;
		outline:none;
		background-color: #C0C78C;
	}
	#container1{
		width:60%;
		height:5%;
		
	}
	#id{
		font-size:22px;
		height:100%;
	}
	#inputId{
		width:100px;
		height:100%;
		border:none;
		outline:none;
		background-color: #C0C78C;
		border-radius:25px;
		font-size:22px;	
		text-indent:10px;
	}
	#reset,#search{
		width:60px;
		height:100%;
		font-size:15px;	
		background-color: #C0C78C;
		border:none;
		outline:none;
		border-radius:25px;
	}
	#container2{
		width: 60%;
		height:70%;
		display:flex;
		flex-direction:column;
		justify-content:space-evenly;
		align-items: center;
		border-spacing:20px;
		border-collapse:seperate;
	}

	td{
		width:200px;
		height:20%;
		font-size:18px;
		font-weight:bold;
	}
	#home{
		width:150px;
		border-radius:25px;
	}
	
</style>
</head>
<body>
	<div id="maincontainer">
		<h1>Enter Employee With ID To Delete The Records</h1>
		<br><br>
		<form action="DeleteRecords" method="post" id="container1"><lable id="id">Enter Employee ID:&nbsp;&nbsp; </lable><input type="text" name="ID" id="inputId" required>&nbsp;&nbsp;&nbsp;<input type="submit" value="Delete" id="search">&nbsp;&nbsp;&nbsp;&nbsp;<input type="reset" id="reset" value="Reset"></form>
		<br><br>
	</div>
</body>
</html>