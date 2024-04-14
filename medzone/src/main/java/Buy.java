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
@WebServlet("/Buy")
public class Buy extends HttpServlet {
	 private static final long serialVersionUID = 1L;

	 
	    protected void doPost(HttpServletRequest request, HttpServletResponse response) {
	    	try {
	    		PrintWriter out=response.getWriter();
	    		Class.forName("com.mysql.cj.jdbc.Driver");
	    	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Medzone","root","nil143sen");
	    	 String productIdStr = request.getParameter("productIdStr");
             //int productId = Integer.parseInt(productIdStr);
             String quantity = request.getParameter("quantity");
             String price = request.getParameter("price");

	    	
	    	 PreparedStatement ps = con.prepareStatement("UPDATE products SET quantity=?, price=? WHERE id=?");
             ps.setString(1, quantity);
             ps.setString(2, price);
             ps.setString(3, productIdStr);

             int rowsUpdated = ps.executeUpdate();
             if (rowsUpdated > 0) {
                 out.println("<div class='alert alert-success' role='alert'>Product updated successfully.</div>");
                 response.sendRedirect("view_pro.jsp");
             } else {
                 out.println("<div class='alert alert-danger' role='alert'>Failed to update product.</div>");
             }

             ps.close();
             con.close();
     } catch (ClassNotFoundException | SQLException | IOException e) {
         e.printStackTrace();
     } 
 }
}
