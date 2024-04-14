<%@ page import="java.sql.*, javax.servlet.http.HttpSession" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Add your head content, including Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <style>
        body {
            background-image: url('image/9.jpeg');
            background-repeat: no-repeat;
            background-size: cover;
            background-position: center;
        }

        .container {
            padding: 1ex;
            font-weight: bold;
            text-decoration: none;
        }

        #main {
            font-size: x-large;
            padding-top: 1ex;
        }

        a.nav {
            text-decoration: none;
            color: white;
            padding-top: 1rem;
            padding-left: 20ex;
        }

        div.bt {
            padding: 30ex;
            margin-left: 30ex;
            margin-right: 30ex;
            color: aqua;
        }

        p {
            padding-top: 1ex;
            text-align: center;
            color: black;
        }

        a.nav:hover {
            background-color: blue;
        }

        header {
            background-color: #00519d;
            padding: 20px 0;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .logo {
            margin-left: 20px;
            display: flex;
            align-items: center;
        }

        .logo img {
            max-width: 80px;
            height: auto;
            /* Maintain aspect ratio */
            margin-right: 10px;
        }

        .nav-links {
            list-style: none;
            padding: 0;
            margin: 0;
            display: flex;
        }

        .nav-links li {
            margin-right: 20px;
            padding: 0 20px;
        }

        .nav-links a {
            text-decoration: none;
            color: #fff;
            font-size: 18px;
        }

        .nav-links a[href="#"]:hover {
            color: black;
        }

        footer {
            background-color: #00519d;
            color: #fff;
            text-align: center;
            padding: 20px 0;
            margin-top: auto;
        }

        .but {
            color: black;
            font-weight: bold;
        }
    </style>
</head>
<body>
<header>
        <div class="logo">
            <img src="image/1.jpg" alt="Medzone">

        </div>
        <nav>
            <ul class="nav-links">
                <li><a href="admin_dashboard.jsp">Home</a></li>
                <li><a href="view_sell.jsp">seller</a></li>
                <li><a href="view_cus.jsp">coustomer</a></li>
                <li><a href="order.jsp">Order</a></li>
                <li><a href="logout.jsp">Logout</a></li>
            </ul>
        </nav>
    </header>
    
    <br><br>
<div class="container mt-5">
    <div class="card">
        <div class="card-body table-responsive" style="max-height: 500px; overflow-y: auto;">
            <%
                try {
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Medzone", "root", "nil143sen");

                    // Query to retrieve products based on seller id (sid)
                    PreparedStatement ps = con.prepareStatement("SELECT * FROM coustomer");

                    ResultSet rs = ps.executeQuery();

                    HttpSession customerSession = request.getSession(false);

                    int customerId = (int) customerSession.getAttribute("customerId");
            %>
                    <table class="table">
                        <thead>
                        <tr>
                            <th scope="col">customer Id</th>
                            <th scope="col">Name </th>
                            <th scope="col">City</th>
                            <th scope="col">State</th>
                            <th scope="col">Address</th>
                            <th scope="col">Pincode</th>
                            <th scope="col">Email</th>
                            <th scope="col">PhoneNumber</th>
                            <th scope="col">Password</th>
                            </tr>
                        </thead>
                        <tbody>
                        <%
                            while (rs.next()) {
                        %>
                                <tr>
                                    <td><%= rs.getInt("id") %></td>
                                    <td> <%= rs.getString("FName") + " " + rs.getString("LName") %></td>
                                    <td><%= rs.getString("City") %></td>
                                    <td><%= rs.getString("State") %></td>
                                    <td><%= rs.getString("Address") %></td>
                                    <td><%= rs.getString("Pincode") %></td>
                                    <td><%= rs.getString("Email") %></td>
                                    <td><%= rs.getString("PhoneNumber") %></td>
                                    <td><%= rs.getString("Password") %></td>
                     
                                </tr>
                        <%
                            }
                        %>
                        </tbody>
                    </table>
            <%
                    rs.close();
                    ps.close();
                    con.close();
                } catch (ClassNotFoundException | SQLException e) {
                    e.printStackTrace();
                    out.println("<div class='alert alert-danger' role='alert'>An error occurred while retrieving product information.</div>");
                }
            %>
        </div>
    </div>
</div>

<br>
<br>
<br>
 <br><br> <br><br> <br><br><br>
<footer>
    Copyright © 2023. All rights reserved.
</footer>
<!-- Add Bootstrap JS and Popper.js -->
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"></script>
</body>
</html>
