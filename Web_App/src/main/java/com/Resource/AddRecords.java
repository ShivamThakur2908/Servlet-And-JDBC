package com.Resource;

import java.sql.Statement;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dbconnection.Connect;
import com.mysql.cj.xdevapi.PreparableStatement;


public class AddRecords extends HttpServlet {	
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html");
		String id = req.getParameter("id");
		String name = req.getParameter("name");
		String designation = req.getParameter("designation");
		String mobile = req.getParameter("mobile");
		String address = req.getParameter("address");
		Connection con = null;
		Connect r = new Connect();
			con = r.getCon();
			System.out.println("connection established "+con);
			PreparedStatement stm = null;
			try {
				stm = con.prepareStatement("Insert into Employee (ID,NAME,DESIGNATION,MOBILE,ADDRESS) values(?, ?, ?, ?, ?)");
				stm.setString(1, id);
				stm.setString(2, name);
				stm.setString(3, designation);
				stm.setString(4, mobile);
				stm.setString(5, address);
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
			int out = Integer.MIN_VALUE;
			try {
				out = stm.executeUpdate();
				System.out.println(out);
			} catch (SQLException e) {
				e.printStackTrace();
			}
			if(out == 1)
			{
				req.getRequestDispatcher("AddConfirm.jsp").forward(req, resp);
			}
			else
			{
				req.getRequestDispatcher("AddFail.jsp").forward(req, resp);
			}
			
	}

}
