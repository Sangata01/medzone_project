<%@ page import="java.sql.*, javax.servlet.http.HttpSession" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
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
<jsp:include page="Heaer_cus.jsp" />
<body>

    <div class="container mt-5">
        <div class="card">
            <div class="card-body">
                <%
                    HttpSession customerSession = request.getSession(false);
                        try {
                            Class.forName("com.mysql.cj.jdbc.Driver");
                            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Medzone", "root", "nil143sen");

                            // Query to retrieve products based on seller id (sid)
                            String sid = request.getParameter("id");
                            PreparedStatement ps = con.prepareStatement("select * from products where sid= ?");
                            ps.setString(1,sid);

                            ResultSet rs = ps.executeQuery();
                            int customerId = (int) customerSession.getAttribute("customerId");
                %>
                            <table class="table">
                                <thead>
                                    <tr>
                                    	<th scope="col">Your ID</th>
                                        <th scope="col">Seller ID</th>
                                        <th scope="col">Product</th>
                                        <th scope="col">Quantity</th>
                                        <th scope="col">Price</th>
                                        <th scope="col"> </th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <%
                                        while (rs.next()) {
                                    %>
                                            <tr>
                                            	<td><%= customerId %></td>
                                                <td><%= rs.getString("id") %></td>
                                                <td><%= rs.getString("product") %></td>
                                                <td><%= rs.getInt("quantity") %></td>
                                                <td><%= rs.getDouble("price") %></td>
                                                <td><a href="Buy.jsp?id=<%= rs.getInt("id") %>&quantity=<%= rs.getInt("quantity") %>&price=<%= rs.getDouble("price") %>&customerId=<%= customerId %>" class="btn btn-primary">Buy</a></td>                                    
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
 <footer>
        Copyright © 2023. All rights reserved.
    </footer>
    <!-- Add Bootstrap JS and Popper.js -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"></script>
</body>
</html>
