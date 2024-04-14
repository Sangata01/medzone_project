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
        body{
            background-image: url('image/9.jpeg');
            background-repeat: no-repeat;
            background-size: cover;   
            background-position: center;
        }
    </style>
</head>
<jsp:include page="Header.jsp" />

<body class="bg-light">
    <br>
    <div class="container mt-5">
        <center>
            <h1 class="mb-4 fc">Welcome to your profile</h1>
        </center>

        <div class="row justify-content-center">
            <div class="col-md-6">
                <%
                    HttpSession customerSession = request.getSession(false);
                    if (customerSession != null && customerSession.getAttribute("customerId") != null) {
                        int customerId = (int) customerSession.getAttribute("customerId");

                        try {
                            Class.forName("com.mysql.cj.jdbc.Driver");
                            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Medzone", "root", "nil143sen");

                            PreparedStatement ps = con.prepareStatement("SELECT id, ShopName, BusinessName, Country, City, state, Address, Pincode, Email, PhoneNumber, AlternatePhoneNumber FROM seller WHERE id = ?");
                            ps.setInt(1, customerId);

                            ResultSet rs = ps.executeQuery();

                            if (rs.next()) {
                %>
                                <div class="card">
							    <div class="card-body">
							    <h4 class="card-title">Your id: <%= rs.getString("id") %></h4>
							    <h4 class="card-title">ShopName: <%= rs.getString("ShopName") %></h4>
							    <h4 class="card-title">BusinessName: <%= rs.getString("BusinessName") %></h4>
							    <h4 class="card-title">Country: <%= rs.getString("Country") %></h4>
							    <h4 class="card-text">City: <%= rs.getString("City") %></h4>
							    <h4 class="card-text">State: <%= rs.getString("state") %></h4>
							    <h4 class="card-text">Address: <%= rs.getString("Address") %></h4>
							    <h4 class="card-text">Pincode: <%= rs.getString("Pincode") %></h4>
							    <h4 class="card-text">Email: <%= rs.getString("Email") %></h4>                                       
							    <h4 class="card-text">PhoneNumber: <%= rs.getString("PhoneNumber") %></h4>
							    <h4 class="card-text">AlternatePhoneNumber: <%= rs.getString("AlternatePhoneNumber") %></h4>
							</div>

                <%
                            } else {
                                out.println("<div class='alert alert-danger' role='alert'>Customer not found.</div>");
                            }

                            rs.close();
                            ps.close();
                            con.close();
                        } catch (ClassNotFoundException | SQLException e) {
                            e.printStackTrace();
                            out.println("<div class='alert alert-danger' role='alert'>An error occurred while retrieving customer information.</div>");
                        }
                    } else {
                        out.println("<div class='alert alert-warning' role='alert'>Customer ID not found in session.</div>");
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


</body>
<jsp:include page="footer.jsp" />
</html>
