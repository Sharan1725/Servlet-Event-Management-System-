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

@WebServlet(urlPatterns = "/create")
public class CreateServlet extends HttpServlet {
	@Override
	public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException {
		System.out.println("hi");
		int id = Integer.parseInt(req.getParameter("id"));
		String title = req.getParameter("title");
		String loc = req.getParameter("location");
		String date = req.getParameter("date");
		String chiefGuest = req.getParameter("guest");
		
		System.out.println(id+" "+title+" "+loc+" "+date+" "+chiefGuest);
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/event_management_system","root","root");
			PreparedStatement ps = con.prepareStatement("insert into event values (?,?,?,?,?)");
			ps.setInt(1, id);
			ps.setString(2, title);
			ps.setString(3, loc);
			ps.setString(4, date);
			ps.setString(5, chiefGuest);
			
			int row = ps.executeUpdate();
			
			PrintWriter pw = res.getWriter();
			pw.write("<h1> Event created successfully</h1>");
			
			RequestDispatcher rd = req.getRequestDispatcher("index.jsp");
			rd.include(req, res);
			
			System.out.println(row + " event inserted successfully");
			
			ps.close();
			con.close();
			
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		
	}
}
