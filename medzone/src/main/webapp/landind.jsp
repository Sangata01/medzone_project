<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head> 
	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Landing </title>
  <!--   <link rel="stylesheet" href="styles.css"> Link to your CSS file -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

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
 /*    footer  */
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
    body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        background-image: url("image/2.jpg");
        background-size: cover;
        background-repeat: no-repeat;
        background-size: 100% 100%;
        /* border: 2px solid red; */
    }
    .responsive {
  width: 100%;
  height: auto;
}


	</style>
</head>
<div>
<header>
    <div class="logo">
        <img src="image/1.jpg" alt="Medzone">

    </div>
    <nav>
        <ul class="nav-links">
            <li><a href="#">Home</a></li>
            <li><a href="#about-section">About</a></li>
            <li><a href="#Join-us">Join Us</a></li>
            <li><a href="#">Contact Us</a></li>
        </ul>
    </nav>
</header>
<body>
<div id="hom-section"><img src="image/2.jpg" class="img-fluid  responsive" alt="Responsive image"></div>
<br>
<br>
<!-- card -->
<div class="card text-center" id="about-section">
  <div class="card-header">
  </div>
  <div class="card-body">
    <h5 class="card-title">MedZone: Your Trusted Online Medicine Shopping Destination</h5>
    <p class="card-text">
   MedZone: Your Online Destination for Medicines

In an age of rapid digitalization and convenience, online shopping has become a way of life. It's no surprise that this trend has extended to the healthcare industry, with the emergence of online pharmacies. MedZone is a shining example of how technology and pharmaceuticals can combine to provide accessible and reliable healthcare solutions to individuals in the comfort of their homes.

MedZone, a prominent online medicine shopping site, offers a wide array of prescription and over-the-counter medications, healthcare products, and wellness items. With a user-friendly interface and a commitment to quality, MedZone is a trusted name in the realm of online pharmacies.

One of the key advantages of using MedZone is its convenience. No longer do you have to queue at a local pharmacy or worry about store hours. MedZone is open 24/7, allowing you to order your medicines at any time that suits you. This accessibility is especially valuable for individuals with chronic illnesses who require regular medication.

MedZone prioritizes safety and quality. All medications are sourced from reputable suppliers and undergo stringent quality checks, ensuring that customers receive genuine and effective products. Furthermore, MedZone adheres to all legal and regulatory standards, providing peace of mind for its customers.

Additionally, MedZone offers a secure and discreet shopping experience. Your personal information and medical history are treated with the utmost confidentiality, and the platform employs robust security measures to safeguard your data.

Customer care is another area where MedZone excels. Their responsive support team is available to answer queries and provide assistance throughout the purchasing process. Fast and reliable delivery services ensure your medications reach you promptly.

In conclusion, MedZone is a reliable online medicine shopping platform that caters to the needs of today's digitally connected world. With its commitment to quality, convenience, and customer satisfaction, MedZone is changing the way we access healthcare and is a welcome addition to the online pharmacy landscape. When it comes to your health, trust MedZone to provide you with the medicines and wellness products you need, right at your fingertips.
 </p>
  </div>
  <div class="card-footer text-muted">
  </div>
</div>
</div>
</div>
<br>
<br>
<div class="row">
  <div class="col-sm-6 mb-3 mb-sm-0">
    <div class="card">
      <div class="card-body">
        <center>  <h5 class="card-title">Join us as Seller</h5>
         <p class="card-text"> Empowering sellers to reach a wider audience and provide essential healthcare products efficiently and securely.</p></center>
      <br>
      <center><a href="reg_sell.jsp"class="btn btn-primary">Sign up</a>
     	 or
         <a href="log_sell.jsp" class="btn btn-primary">Login</a>
         </center> 
      </div>
    </div>
  </div>
  <div class="col-sm-6" id="Join-us">
    <div class="card">
      <div class="card-body">
      <center>  <h5 class="card-title">Join us as Buyer</h5>
        <p class="card-text">Buyers use MedZone to conveniently purchase a wide range of medications and healthcare products from the comfort of their homes.</p></center>
     	<br>
     	<center><a href="reg_cus.jsp" class="btn btn-primary">Sign up</a>
     	 or
         <a href="log_cou.jsp" class="btn btn-primary">Login</a>
         </center> 
      </div>
    </div>
  </div>
</div>
<br>
</div>

</body>

<footer>
    <!-- Footer content -->
    Copyright © 2023. All rights reserved.
</footer>
</html>