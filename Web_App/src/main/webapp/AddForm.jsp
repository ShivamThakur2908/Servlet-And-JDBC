<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Details</title>
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
	form{
		width:60%;
		height:80%;
		background-color: #FEFAE0;
		border-radius: 100px;
		display:flex;
		flex-direction: column;
		justify-content:center;
		align-items:center;
	}
	table
	{
		width:60%;
		height:90%;
		background-color: #B99470;
		border-radius: 100px;
		display:flex;
		flex-direction: column;
		justify-content:center;
		align-items:center;
		border-spacing: 25px;
	}
	
	input{
		border: none;
		outline:none;
		border-radius:20px;
		height:25px;
		width:100%;
		text-indent: 10px;
		font-size:15px;
	}
	input::placeholder{
		font-size:15px;
		text-indent: 10px;
	}
	#click{
		text-indent:0px;
		width:70px;
		font-size:15px
	}
	.center{
		
		
		justify-self:center;
		align-self:center;
	}
	
</style>
</head>
<body>
	<form action="AddRecords" method="post">
		
		<table>
			<tr ><td colspan=2><h1 style="padding:15px;">Enter the Employee Details</h1></td></tr>
			<tr>
				<td>Employee ID:</td>
				<td><input type:"text" name = "id" placeholder="Enter Employee ID" required></td>
			</tr>
			<tr>
				<td>Employee Name:</td>
				<td><input type:"text" name = "name" placeholder="Enter Employee Name" required></td>
			</tr>
			<tr>
				<td>Employee Designation:</td>
				<td><input type:"text" name = "designation" placeholder="Enter Employee Designation" required></td>
			</tr>
			<tr>
				<td>Employee Mobile:</td>
				<td><input type:"tel" name = "mobile" placeholder="Enter Employee Mobile" required></td>
			</tr>
			<tr>
				<td>Employee Address:</td>
				<td><input type:"text" name = "address" placeholder="Enter Employee Address" required></td>
			</tr>
			<tr>
				<td class="center"><input type="submit" value="Submit" id="click"></td>
				<td class="center"><input type="reset" name = "Reset" id="click"></td>
			</tr>
		</table>
	</form>
</body>
</html>	