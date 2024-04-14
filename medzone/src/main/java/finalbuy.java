import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/rohan")
public class finalbuy extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            PrintWriter out = response.getWriter();
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Medzone", "root", "nil143sen");

            String customerId = request.getParameter("customerId");
            String productIdStr = request.getParameter("productIdStr");
            String quantity = request.getParameter("quantity");
            int qnt = Integer.parseInt(quantity);
            String price = request.getParameter("price");
            String City = request.getParameter("City");
            String State = request.getParameter("State");
            String Address = request.getParameter("Address");
            String Pincode = request.getParameter("Pincode");
            String TotalPrice = request.getParameter("TotalPrice");
            int quanti = 0;
            PreparedStatement pq= con.prepareStatement(
                    "Select quantity from products where id = ?");
            pq.setString(1, productIdStr);
            ResultSet rs= pq.executeQuery();
            if(rs.next()) {
	    		//int count = rs.getInt("cnt");
	    		quanti=rs.getInt("quantity");
	    		
	    		
	    		}
            
            if (quanti >= qnt) {
            PreparedStatement ps = con.prepareStatement(
                    "INSERT INTO orders(Cid,Pid, quantity, price, city, state, address, pincode, TotalPrice) VALUES (?,?, ?, ?, ?, ?, ?, ?, ?)");
            ps.setString(1, customerId);
            ps.setString(2, productIdStr);
            ps.setString(3, quantity);
            ps.setString(4, price);
            ps.setString(5, City);
            ps.setString(6, State);
            ps.setString(7, Address);
            ps.setString(8, Pincode);
            ps.setString(9, TotalPrice);

            int rowsUpdated = ps.executeUpdate();

            if (rowsUpdated > 0) {
                out.println("<div class='alert alert-success' role='alert'>Order placed successfully.</div>");

                // Separate PreparedStatement for the update
                PreparedStatement updateStatement = con.prepareStatement(
                        "UPDATE products SET quantity= quantity - ?, price=? WHERE id=?");
                updateStatement.setInt(1, qnt);
                updateStatement.setString(2, price);
                updateStatement.setString(3, productIdStr);
                
                response.sendRedirect("home_cus.jsp");
                int rowsUpdatedProducts = updateStatement.executeUpdate();

                if (rowsUpdatedProducts > 0) {
                    out.println("<div class='alert alert-success' role='alert'>Product details updated successfully.</div>");
                } else {
                    out.println("<div class='alert alert-danger' role='alert'>Failed to update product details.</div>");
                }

                updateStatement.close();
            } else {
                out.println("<div class='alert alert-danger' role='alert'>Failed to place order.</div>");
            }

            ps.close();
            con.close();
            }
            else {
            	response.sendRedirect("outofstock.jsp");
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
    }
}

