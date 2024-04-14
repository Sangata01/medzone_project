<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

    <style>
		/* Header Styles */
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
  
  </style>
</head>
<body>
<header>
    <div class="logo">
        <img src="image/1.jpg" alt="Medzone">

    </div>
    <nav>
        <ul class="nav-links">
            <li><a href="home_sell.jsp">Home</a></li>
                <li><a href="Stock.jsp">Stock</a></li>
                <li><a href="profile_sell.jsp">Profile</a></li>
                <li><a href="order_sell.jsp">Orders</a></li>
                <li><a href="logout.jsp">Logout</a></li>
        </ul>
    </nav>
</header>
</body>
</html>