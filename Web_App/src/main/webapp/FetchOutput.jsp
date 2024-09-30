<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Read</title>
<style type="text/css">
	*{
		margin: 0px;
		padding: 0px;
	}
	body{
		width: 100vw;
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
	<% 
        // Retrieve the attributes set by the servlet
        String id = (String) request.getAttribute("id");
        String name = (String) request.getAttribute("name");
        String designation = (String) request.getAttribute("designation");
        String mobile = (String) request.getAttribute("mobile");
        String address = (String) request.getAttribute("address");
    %>
	<div id="maincontainer">
		<h1>Employee Details</h1>
		<table id="container2">
			<tr>
				<td>Employee ID </td>
				<td><input type="text" readonly name="id" value="<%= id != null ? id : "" %>"></td>
			</tr>
			<tr>
				<td>Employee Name </td>
				<td><input type="text" readonly name="name" value="<%= name != null ? name : "" %>"></td>
			</tr>
			<tr>
				<td>Employee Designation </td>
				<td><input type="text" readonly name="designation" value="<%= designation != null ? designation : "" %>"></td>
			</tr>
			<tr>
				<td>Employee Mobile </td>
				<td><input type="text" readonly name="mobile" value="<%= mobile != null ? mobile : "" %>"></td>
			</tr>
			<tr>
				<td>Employee Address </td>
				<td><input type="text" readonly name="address" value="<%= address != null ? address : "" %>"></td>
			</tr>
			<tr>
				<td colspan=2><center><a href="index.jsp"><input type="button" id="home" value="Return To Main Page"></a></center></td>
			</tr>
		</table>
	</div>
</body>
</html>