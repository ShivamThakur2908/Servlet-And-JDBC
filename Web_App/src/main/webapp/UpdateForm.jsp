<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Updates</title>
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
		border-radius:25px;
		text-indent:10px;
		font-size:18px;
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
		width: 100%;
		height:100%;
		display:flex;
		flex-direction:column;
		justify-content:space-evenly;
		align-items: center;
		border-spacing:20px;
		border-collapse:seperate;
	}
	#container3{
		width : 60%;
		height: 70%;
	}
	td{
		width:200px;
		height:20%;
		font-size:18px;
		font-weight:bold;
	}
	#home{
		width:100%;
		height:100%;
		text-decoration: none;
		color: black;
		background-color: #C0C78C;
		border : 2px solid #C0C78C;
		border-radius:25px;
		font-size:15px;
		text-indent:0px;
	}
	#updates{
		width:100px;
		border-radius:25px;
		font-family: Time New Roman;
		font-weight: bold;
		font-size:14px;
		text-indent:0px;
	}
</style>
</head>
<body>
	<div id="maincontainer">
		<h1>Update Employee Details</h1>
		<br><br>
		<h4>Employee Details will be update based on Employee ID</h4>
		<form action="UpdateRecords" method="post" id="container3">
			<table id="container2">
				<tr>
					<td>Employee ID </td>
					<td><input type="text" required name="id"></td>
				</tr>
				<tr>
					<td>Employee Name </td>
					<td><input type="text" name="name"></td>
				</tr>
				<tr>
					<td>Employee Designation </td>
					<td><input type="text" name="designation"></td>
				</tr>
				<tr>
					<td>Employee Mobile </td>
					<td><input type="text" name="mobile"></td>
				</tr>
				<tr>
					<td>Employee Address </td>
					<td><input type="text" name="address"></td>
				</tr>
				<tr></tr>
				<tr>
					<td colspan=2><center><input type="submit" id="updates" value="Update">&nbsp;&nbsp;<a href="index.jsp" id="home" >Return To Main Page</a></center></td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>