<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
// Source mixin
@mixin make-container($padding-x: $container-padding-x) {
  width: 100%;
  padding-right: $padding-x;
  padding-left: $padding-x;
  margin-right: auto;
  margin-left: auto;
}

// Usage
.custom-container {
  @include make-container();
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
</style>
<jsp:include page="Heaer_cus.jsp" />

<body>
<div class="container">
  <div class="card">
							    <div class="card-body">
							    <h4 class="card-title"></h4>
								<h4 class="card-title"></h4>
							    <h4 class="card-title"></h4>
							    <h4 class="card-title"></h4>
								 							    <h4 class="card-text">your order is </h4>
								                  
							</div>
</div>
</body>
<jsp:include page="footer.jsp" />

</html>