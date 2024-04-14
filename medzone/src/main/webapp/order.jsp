<%@ page import="java.sql.*, javax.servlet.http.HttpSession" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<html lang="en">
<head>
    <!-- Add your head content, including Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
   <style>
body{
    background-image: url('image/9.jpeg');
    background-repeat: no-repeat;
    /*background-attachment: ;*/
    background-size: cover;   
    background-position: center;
}
.container{
    padding: 1ex;
    font-weight: bold;
    text-decoration: none;
}
#main{
   /* font: ;*/
    font-size: x-large;
    padding-top: 1ex;
}
a.nav{
    text-decoration: none;
    color: white;
    padding-top: 1rem;
    padding-left: 20ex;
}
div.bt{
    padding: 30ex;
    margin-left: 30ex;
    margin-right: 30ex;
    color: aqua;
}
p{
    padding-top: 1ex;
    text-align:center;
/*    font-weight: ;*/
    color: black;
}
a.nav:hover{
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
        /* flex: 1;
    justify-content: space-between; */
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
        /* position: fixed;
        bottom: 0;
        left: 0;
        width: 100%; */
        background-color: #00519d;
        color: #fff;
        text-align: center;
        padding: 20px 0;
        margin-top: auto;
    }
    .but{
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
    <div class="container mt-5">
    <div class="card">
        <div class="card-body">
            <%
                try {
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Medzone", "root", "nil143sen");

                    // Query to retrieve orders
                    PreparedStatement ps = con.prepareStatement("SELECT * FROM orders");
                    ResultSet rs = ps.executeQuery();
            %>
                    <table class="table">
                        <thead>
                            <tr>
                                <th scope="col">Order Id</th>
                                <th scope="col">customer Id</th>
                                <th scope="col">Product ID</th>
                                <th scope="col">quantity</th>
                                <th scope="col">Price</th>
                                <th scope="col">city</th>
                                <th scope="col">state</th>
                                <th scope="col">address</th>
                                <th scope="col">pincode</th>
                                <th scope="col">TotalPrice</th>
                                <th scope="col"></th>
                            </tr>
                        </thead>
                        <tbody>
                            <%
                                while (rs.next()) {
                            %>
                                    <tr>
                                        <td><%= rs.getInt("oid") %></td>
                                        <td><%= rs.getInt("Cid") %></td>
                                        <td><%= rs.getString("Pid") %></td>
                                        <td><%= rs.getString("quantity") %></td>
                                        <td><%= rs.getDouble("price") %></td>
                                        <td><%= rs.getString("city") %></td>
                                        <td><%= rs.getString("state") %></td>
                                        <td><%= rs.getString("address") %></td>
                                        <td><%= rs.getString("pincode") %></td>
                                        <td><%= rs.getDouble("TotalPrice") %></td>
                                        <td><a href="CancelOrder.jsp?oid=<%= rs.getInt("oid") %>&quantity=<%= rs.getInt("quantity") %>&pid=<%= rs.getInt("pid") %>" class="btn btn-primary">Cancel Order</a></td>
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
                    out.println("<div class='alert alert-danger' role='alert'>An error occurred while retrieving order information.</div>");
                }
            %>
        </div>
    </div>
</div>

<br>
<br>
<br>
<footer>
    Copyright © 2023. All rights reserved.
</footer>
<!-- Add Bootstrap JS and Popper.js -->
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"></script>
</body>
</html>