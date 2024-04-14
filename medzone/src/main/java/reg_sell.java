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
@WebServlet("/seller.jsp")
public class reg_sell extends HttpServlet {
	   @Override
	    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
	        final String hello ="insert into seller(ShopName ,BusinessName ,Country ,City ,State ,Address,Pincode ,Email ,PhoneNumber ,AlternatePhoneNumber ,Password ,ConfirmPassword ,AadharNumber ) values(?,?,?,?,?,?,?,?,?,?,?,?,?)";

	        // get printWriter
	        PrintWriter pw =res.getWriter();
	        // set content type
	      //s res.setContentType("text/html");
	        // get the values
	        String name = req.getParameter("shopname");
	        System.out.println(name);
	        
	        String bname = req.getParameter("businessname");
	        String country = req.getParameter("country");
	        String state = req.getParameter("state");
	        String city = req.getParameter("city");
	        String address = req.getParameter("address");
	        String pincode = req.getParameter("pincode");
	        String email = req.getParameter("email");
	        String pfone = req.getParameter("pfone");
	        String alt_phone = req.getParameter("alt_phone");
	        String npassword = req.getParameter("npassword");
	        String cpassword = req.getParameter("cpassword");
	        String aadhaar = req.getParameter("aadhaar");

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

	            ps.setString(1,name);
	            ps.setString(2,bname);
	            ps.setString(3,country);
	            ps.setString(4,state);
	            ps.setString(5,city);
	            ps.setString(6,address);
	            ps.setString(7,pincode);
	            ps.setString(8,email);
	            ps.setString(9,pfone);
	            ps.setString(10,alt_phone);
	            ps.setString(11,npassword);
	            ps.setString(12,cpassword);
	            ps.setString(13,aadhaar);

	            int count = ps.executeUpdate();

	            if (count == 1) {
	            	res.sendRedirect("landind.jsp");
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