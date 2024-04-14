import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/add.jsp")
public class add extends HttpServlet {
	   @Override
	    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
	        final String hello ="insert into products(product,date,quantity,price,sid ) values(?,?,?,?,?)";

	        // get printWriter
	        PrintWriter pw =res.getWriter();
	        // set content type
	      //s res.setContentType("text/html");
	        // get the values
	        String product = req.getParameter("product");
	        
	       // String bname = req.getParameter("businessname");
	        String date = req.getParameter("date");
	        String quantity = req.getParameter("quantity");
	        String price = req.getParameter("price");
	        String sid = req.getParameter("sid");

	        // load the JDBC driver
	        try
	        {
	            Class.forName("com.mysql.cj.jdbc.Driver");
	        }
	        catch (Exception e) {
	        	System.out.println("this is loding");
	            //e.printStackTrace();
	        }

	        // generate connection
	        try (Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Medzone","root","nil143sen");
	             PreparedStatement ps = con.prepareStatement(hello)) {

	            ps.setString(1,product);
	            ps.setString(2,date);
	            ps.setString(3,quantity);
	            ps.setString(4,price);
	            ps.setString(5,sid);
	           

	            int count = ps.executeUpdate();

	            if (count == 1) {
	            	res.sendRedirect("home_sell.jsp");
	                pw.println("<h2>record registered </h2>");
	            } else {
	                pw.println("<h2>Record not registered</h2>");
	            }

	        } catch (SQLException se) {
	            pw.println("<h2>" + se.getMessage() + "</h2>");
	           // se.printStackTrace();
	        } catch (Exception e) {
	        	System.out.println("this is password");
	           // e.printStackTrace();
	        }
	    }

	    @Override
	    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
	        doGet(req, res);
	    }
	}