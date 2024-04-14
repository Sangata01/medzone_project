<%@ page import="java.sql.*, javax.servlet.http.HttpSession" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Customer Profile</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .fc {
            color: white;
        }
        body {
            background-image: url('image/9.jpeg');
            background-repeat: no-repeat;
            background-size: cover;   
            background-position: center;
        }
        footer {
            background-color: #00519d;
            color: #fff;
            text-align: center;
            padding: 20px 0;
            margin-top: auto;
        }
    </style>
</head>
<jsp:include page="Heaer_cus.jsp" />

<body class="bg-light">
    <br>
    <div class="container mt-5">
        <center>
            <h1 class="mb-4 fc">Welcome to your profile</h1>
        </center>

        <div class="row justify-content-center">
            <div class="col-md-6">
                <%
                    String oid = request.getParameter("oid");
                    String quantity = request.getParameter("quantity");
                    String pid = request.getParameter("pid");
                    int qnt = Integer.parseInt(quantity);

                    if (oid != null) {
                        Connection con = null;
                        PreparedStatement ps = null;

                        try {
                            Class.forName("com.mysql.cj.jdbc.Driver");
                            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Medzone", "root", "nil143sen");

                            // Delete order
                            ps = con.prepareStatement("DELETE FROM orders WHERE oid = ?");
                            ps.setInt(1, Integer.parseInt(oid));
                            int rowsDeleted = ps.executeUpdate();

                            // Update product quantity
                            if (rowsDeleted > 0) {
                                PreparedStatement updateStatement = con.prepareStatement(
                                        "UPDATE products SET quantity = quantity + ? WHERE id = ?");
                                updateStatement.setInt(1, qnt);
                                updateStatement.setString(2, pid);
                                updateStatement.executeUpdate();

                                out.println("<div class='alert alert-success' role='alert'>Order deleted successfully.</div>");
                            } else {
                                out.println("<div class='alert alert-warning' role='alert'>No order found with the specified ID.</div>");
                            }
                        } catch (ClassNotFoundException | SQLException e) {
                            e.printStackTrace();
                            out.println("<div class='alert alert-danger' role='alert'>An error occurred while processing the request.</div>");
                        } finally {
                            // Close resources in a finally block to ensure proper resource management
                            if (ps != null) {
                                ps.close();
                            }
                            if (con != null) {
                                con.close();
                            }
                        }
                    } else {
                        out.println("<div class='alert alert-warning' role='alert'>Order ID not found in the request parameters.</div>");
                    }
                %>
            </div>
        </div>
    </div>
    <br>
    <br>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <footer>
        <!-- Footer content -->
        Copyright © 2023. All rights reserved.
    </footer>
</body>
</html>
