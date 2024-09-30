package com.Resource;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dbconnection.Connect;

public class FetchRecords extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("ID");
		System.out.print(id);
		Connection con = null;
		Connect r = new Connect();
			con = r.getCon();
			System.out.println("connection established "+con);
			PreparedStatement stm = null;
			ResultSet result = null;
			try {
				stm = con.prepareStatement("Select * from Employee where ID = ?");
				stm.setString(1, id);
				result = stm.executeQuery();
				
			} catch (SQLException e) {
				e.printStackTrace();
			}
				try {
					if(result.next())
					{
						String id1 = result.getString("ID");
					    String name = result.getString("NAME");
					    String designation = result.getString("DESIGNATION");
					    String mobile = result.getString("MOBILE");
					    String address = result.getString("ADDRESS");
					    System.out.println(id1+name+address+designation+mobile);
					    // Set attributes for JSP
					    request.setAttribute("id", id1);
					    request.setAttribute("name", name);
					    request.setAttribute("designation", designation);
					    request.setAttribute("mobile", mobile);
					    request.setAttribute("address", address);
					    request.getRequestDispatcher("FetchOutput.jsp").forward(request, response);
					}
					else  {
						request.getRequestDispatcher("NotFound.jsp").forward(request, response);					}
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			try {
                if (result != null) result.close();
                if (stm != null) stm.close();
                if (con != null) con.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
			
	}

}
