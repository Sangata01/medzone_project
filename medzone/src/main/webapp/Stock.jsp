<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head><link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
  
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
                <li><a href="home_sell.jsp">Home</a></li>
                <li><a href="Stock.jsp">Stock</a></li>
                <li><a href="profile_sell.jsp">Profile</a></li>
                <li><a href="#">Orders</a></li>
                <li><a href="logout.jsp">Logout</a></li>
            </ul>
        </nav>
    </header>
    <main>
    <div class="d-grid gap-2 bt">
   
      <button class="btn btn-light but" onclick="location.href='add_med.jsp'" type="button"><p>Add Record</p></button>
     <button class="btn btn-light but" onclick="location.href='view_pro.jsp'" type="button"><p>View Record</p></button>

      </div>

    </main>
    <footer>
        Copyright © 2023. All rights reserved.
    </footer>
</body>
</html>