<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
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

    .nav-links a[href="#"]:hover {
        color: black;
    }

    body {
        margin: 0;
        position: relative;
    }

    .full-width-image {
        width: 100%;
        height: auto;
        display: block;
    }
    .white-box {
    position: absolute;
    top: 35%;
    left: 50%;
    transform: translate(-50%, -50%);
    max-width: 700px;
    width: 90%;
    padding: 70px;
    background-color: rgba(255, 255, 255, 0.8);   
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    border-radius: 8px;
    text-align: center;
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
</style>
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
    </header> <img class="full-width-image" src="image/9.jpeg" alt="Full Width Image">

    <div class="white-box">
        <!-- Your content for the white box goes here -->
        <p><h1>Your Health <br> Your Way</h1>
            “The greatest disease in the West today is not TB or leprosy; it is being unwanted, unloved, and uncared for. We can cure physical diseases with medicine, but the only cure for loneliness, despair, and hopelessness is love. There are many in the world who are dying for a piece of bread but there are many more dying for a little love. The poverty in the West is a different kind of poverty -- it is not only a poverty of loneliness but also of spirituality. There's a hunger for love, as there is a hunger for God.”
            ― Mother Teresa, A Simple Path: Mother Teresa
        </p>
      </div>
    <footer>
        Copyright © 2023. All rights reserved.
    </footer>

</body>
</html>