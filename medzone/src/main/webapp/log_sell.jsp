<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Log in</title>
    <link rel="stylesheet" href="styles.css"> <!-- Link to your CSS file -->
</head>    
     <style>
   body {
        font-family: Arial, sans-serif;
        line-height: 1.6;
    }

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

    body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        background-image: url("image/8.jpg");
        background-size: cover;
        background-repeat: no-repeat;
        background-size: 100% 100%;
        /* border: 2px solid red; */
    }

    #span {
        margin-right: 17px;
    }

    .signup-form {
    max-width: 400px; /* Increase the max-width as desired */
    margin: 50px auto;
    padding: 20px;
    background: rgba(249, 249, 249, 0.149); /* Adjust the last value (0.7) to control opacity */
    border-radius: 5px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}
    h2 {
        text-align: center;
    }

    input[type="text"],
    input[type="email"],
    input[type="tel"],
    input[type="password"],
    textarea,
    button {
        width: 100%;
        padding: 10px;
        margin: 8px 0;
        display: inline-block;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-sizing: border-box;
    }

    button {
        background-color: #4CAF50;
        color: white;
        border: none;
        border-radius: 4px;
        cursor: pointer;
    }

    button:hover {
        background-color: #45a049;
    }


    .login-link {
        margin-top: 20px;
        /* Adjust the value as needed */
        text-align: center;
    }

    .login-link a {
        color: #333;
        /* Adjust the color as needed */
        text-decoration: none;
    }

    .login-link a:hover {
        text-decoration: underline;
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

    input[name="mname"] {
        width: 100%;
        padding: 10px;
        margin: 8px 0;
        display: inline-block;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-sizing: border-box;
    }

    /* Style for the row containing first name, middle name, and last name */
    .name-row {
        display: flex;
        justify-content: space-between;
    }

    .location-row {
        display: flex;
        justify-content: space-between;
    }

    .address-row {
        display: flex;
        justify-content: space-between;
    }

    .phone-row {
        display: flex;
        justify-content: space-between;
    }

    .password-row {
        display: flex;
        justify-content: space-between;
    }

    .password-row input[type="password"] {
        flex: 1;
        margin-right: 10px;
        /* Adjust the spacing between the two fields as needed */
    }

    .aadhaar-row {
    display: flex;
    justify-content: space-between;
}

.aadhaar-row input[type="text"] {
    flex: 1;
    margin-right: 10px; /* Adjust the spacing between the fields as needed */
}
@media (max-width: 768px) {
        header {
            padding: 10px;
            text-decoration: none;
        }

        .nav-links li {
            display: block;
            margin: 10px 0;
        }
    }
</style>
   </style>
<header>
    <div class="logo">
        <img src="image/1.jpg" alt="Medzone">

    </div>
    <nav>
        <ul class="nav-links">
            <li><a href="landind.jsp">Home</a></li>
        </ul>
    </nav>
</header>
<body>
<br>
<br>
<br>

    <div class="signup-form">
        <h2>Log in</h2>
        <form action="nil" method="post">
            <div class="email">
                <input name="email" type="email" placeholder="Email" required>
            </div>
            <div class="password-row">
                <input name="pass" type="password" placeholder="Password" required>
            </div>
            <button name="submit" type="submit">Log in</button>
            <p class="login-link" style="color:white">Don't have an account? <a href="reg_sell.jsp" style="color: red;">Register</a></p>

            <!-- Display error message if present -->
            
        </form>
    </div>
<br>
<br>
<br>  
</body>
<footer>
    <!-- Footer content -->
    Copyright   2023. All rights reserved.
</footer>
</html>
