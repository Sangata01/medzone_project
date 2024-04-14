import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
@WebServlet("/nil")
public class log_Sell extends HttpServlet {
	 private static final long serialVersionUID = 1L;

	 
	    protected void doPost(HttpServletRequest request, HttpServletResponse response) {
	    	try {
	    		PrintWriter out=response.getWriter();
	    		Class.forName("com.mysql.cj.jdbc.Driver");
	    	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Medzone","root","nil143sen");
	    	String e=request.getParameter("email");
	    	String p=request.getParameter("pass");
	    	
	    	 if (e.equals("admin@gmail.com") && p.equals("root")) {
	                // Set admin status in the session
	                HttpSession session = request.getSession(true);
	                session.setAttribute("isAdmin", true);

	                // Redirect to the admin dashboard
	                response.sendRedirect("admin_dashboard.jsp");
	                return;
	            }
	    	 
	        PreparedStatement ps = con.prepareStatement("SELECT id FROM seller WHERE Email=? AND Password=?");
	    	ps.setString(1,e);
	    	ps.setString(2,p);
	    	ResultSet rs= ps.executeQuery();
	    	if(rs.next()) {
	    		//int count = rs.getInt("cnt");
	    		int customerId=rs.getInt("id");
	    		if(customerId != 0) {
	    			
	    		
             // Set the customer ID in the session
                 HttpSession session = request.getSession(true);
              session.setAttribute("customerId", customerId);
	    		//out.println(customerId);
	    		//out.println(count);

	    		//out.println("customerId");

             // Redirect to the profile page
             response.sendRedirect("home_sell.jsp");
	    		} else {
	    	        response.sendRedirect("landind.jsp");
	    	    }
	    	} else {
	    	    response.sendRedirect("landind.jsp");
	    	}

         // ... (existing code)
	    	rs.close();
	    	ps.close();
     } catch (ClassNotFoundException | SQLException | IOException e) {
         e.printStackTrace();
     } 
 }
}
