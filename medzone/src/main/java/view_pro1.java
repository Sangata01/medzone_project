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
import javax.servlet.RequestDispatcher;
@WebServlet("/pro")

public class view_pro1 extends HttpServlet {
	  private static final long serialVersionUID = 1L;

	    protected void doGet(HttpServletRequest request, HttpServletResponse response)
	            throws ServletException, IOException {
	        

	        try {
	            // Load the JDBC driver
	    		PrintWriter out=response.getWriter();
	            Class.forName("com.mysql.cj.jdbc.Driver");

	            // Establish a connection
	            Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/Medzone","root","nil143sen");
	            String sid=request.getParameter("id");
	            // SQL query to retrieve data from the "seller" table
	            String sql = "SELECT * FROM products where sid=?";
	          
	            PreparedStatement statement = connection.prepareStatement(sql);
	            statement.setString(1,sid);
	            ResultSet resultSet = statement.executeQuery();
	            if(resultSet.next()) {

	            // Store the result set in the request scope
	            request.setAttribute("sellerResultSet", resultSet);

	            // Forward the request to the JSP page for rendering
	            RequestDispatcher dispatcher = request.getRequestDispatcher("view_pro1.jsp");
	            dispatcher.forward(request, response);
	            }
	            else {
	            	out.println("not done");
	            }
	            // Close the resources
	            resultSet.close();
	            statement.close();
	            connection.close();
	        } catch (ClassNotFoundException | SQLException e) {
	            e.printStackTrace();
	        }
	    }
	}
