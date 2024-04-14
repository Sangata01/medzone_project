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
@WebServlet("/reg.jsp")

public class reg_cus extends HttpServlet {
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        final String buyer ="insert into coustomer(FName ,LName ,City ,State ,Address,Pincode  ,Email ,PhoneNumber  ,Password ,ConfirmPassword) values(?,?,?,?,?,?,?,?,?,?)";

        // get printWriter
        PrintWriter pw =res.getWriter();
        // set content type
        res.setContentType("text/html");
        // get the values
        String name = req.getParameter("fname");
        String lname = req.getParameter("lname");
        String state = req.getParameter("st");
        String city = req.getParameter("ct");
        String address = req.getParameter("sno");
        String pincode = req.getParameter("pin");
        String email = req.getParameter("email");
        String pfone = req.getParameter("phno");
        String npassword = req.getParameter("pass");
        String cpassword = req.getParameter("cp");
       // String aadhaar = req.getParameter("ad");

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
             PreparedStatement ps = con.prepareStatement(buyer)) {

            ps.setString(1,name);
            ps.setString(2,lname);
         //   ps.setString(3,country);
            ps.setString(3,state);
            ps.setString(4,city);
            ps.setString(5,address);
            ps.setString(6,pincode);
            ps.setString(7,email);
            ps.setString(8,pfone);
            ps.setString(9,npassword);
            ps.setString(10,cpassword);
          //  ps.setString(11,aadhaar)'';

            int count = ps.executeUpdate();

            if (count == 1) {
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