package com.Resource;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dbconnection.Connect;

public class DeleteRecords extends HttpServlet {
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String id = req.getParameter("ID");
		Connection con = null;
		Connect r = new Connect();
			con = r.getCon();
			System.out.println("connection established "+con);
			PreparedStatement stm = null;
			int result = Integer.MIN_VALUE;
			try {
				stm = con.prepareStatement("Delete From Employee Where ID = ?");
				stm.setString(1, id);
				result = stm.executeUpdate();
				System.out.println(result);
			} catch (SQLException e) {
				e.printStackTrace();
			}
			if(result == 1)
			{
				req.getRequestDispatcher("DeleteConfirm.jsp").forward(req, resp);
			}
			else
			{
				req.getRequestDispatcher("DeleteFail.jsp").forward(req, resp);
			}
	}

}
