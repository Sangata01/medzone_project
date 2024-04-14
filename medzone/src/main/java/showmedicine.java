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
@WebServlet("/showmedicine")
public class showmedicine extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) {
        try {
            PrintWriter out = response.getWriter();
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Medzone", "root", "nil143sen");

            String sid = request.getParameter("productIdStr"); // Correct parameter name
            out.println(sid);
            out.println("hiii");
            try (PreparedStatement statement = con.prepareStatement("SELECT id FROM products WHERE sid=?")) {
                statement.setString(1, sid);

                try (ResultSet resultSet = statement.executeQuery()) {
                    request.setAttribute("sellerResultSet", resultSet);
                    out.println("hiii");
                    // Forward the request to the JSP page for rendering
                    RequestDispatcher dispatcher = request.getRequestDispatcher("ShowMedicine.jsp");
                    dispatcher.forward(request, response);
                }
            }
        } catch (ClassNotFoundException | SQLException | IOException | ServletException e) {
            e.printStackTrace();
        }
    }
}

