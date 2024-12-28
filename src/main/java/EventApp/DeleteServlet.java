package EventApp;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;

@WebServlet("/delete")
public class DeleteServlet extends HttpServlet {
	@Override
	public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException {
		int id = Integer.parseInt(req.getParameter("id"));
		
		Connection con = null;
		
		PreparedStatement ps = null ;
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			 con = DriverManager.getConnection("jdbc:mysql://localhost:3306/event_management_system", "root",
					"root");
			ps = con.prepareStatement("delete from event where id=?");
			ps.setInt(1, id);

			int row = ps.executeUpdate();

			if (row == 1) {
				PrintWriter pw = res.getWriter();
				pw.write("<h1>Event deleted successfully </h1>");
				RequestDispatcher rd = req.getRequestDispatcher("fetchAllEvents");
				rd.forward(req, res);
			}

//			ps.close();
//			con.close();

		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
			
		}
		finally {
			
			if (ps != null) {
				try {
					ps.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			
			if(con != null)
			{
				try {
					con.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}				
			}
		}
	}
}
