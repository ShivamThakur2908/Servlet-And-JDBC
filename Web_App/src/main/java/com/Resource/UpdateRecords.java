package com.Resource;

import java.awt.print.PrinterGraphics;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dbconnection.Connect;

public class UpdateRecords extends HttpServlet {
	
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
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
			int result = Integer.MIN_VALUE;
			try {
				stm = con.prepareStatement("UPDATE EMPLOYEE SET NAME = COALESCE(NULLIF(?, ''), NAME), DESIGNATION = COALESCE(NULLIF(?, ''), DESIGNATION), MOBILE = COALESCE(NULLIF(?, ''), MOBILE), ADDRESS = COALESCE(NULLIF(?, ''), ADDRESS) WHERE ID = ? ");
				stm.setString(1, name.isEmpty() ? null : name);
				stm.setString(2, designation.isEmpty() ? null : designation);
				stm.setString(3, mobile.isEmpty() ? null : mobile);
				stm.setString(4, address.isEmpty() ? null : address);
				stm.setString(5, id);
				result = stm.executeUpdate();
				System.out.println(result);
			} catch (SQLException e) {
				e.printStackTrace();
			}
			if(result == 1)
			{
				req.getRequestDispatcher("UpdateConfirm.jsp").forward(req, resp);
			}
			else
			{
				req.getRequestDispatcher("UpdateFail.jsp").forward(req, resp);
			}
			try {
                if (stm != null) stm.close();
                if (con != null) con.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
	}

}
