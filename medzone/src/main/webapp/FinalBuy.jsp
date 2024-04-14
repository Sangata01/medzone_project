<%@ page import="java.sql.*, javax.servlet.http.HttpSession" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <title>Edit Product</title>
</head>
<style>


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
     .signup-form {
    max-width: 700px; /* Increase the max-width as desired */
    margin: 50px auto;
    padding: 20px;
    background: rgba(249, 249, 249, 0.149); /* Adjust the last value (0.7) to control opacity */
    border-radius: 5px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}
</style>
<jsp:include page="Heaer_cus.jsp" />
<body>
    <div class="container mt-5 , signup-form">
        <div class="card">
            <div class="card-body">
                <%
                    // Retrieve product details from the request
                      String customerId = request.getParameter("customerId");
                    String productIdStr = request.getParameter("productIdStr");
                    //int productId = Integer.parseInt(productIdStr);
                    String quantity = request.getParameter("quantity");
                    int quan = Integer.parseInt(quantity);
                    String price = request.getParameter("price");
                    double pr = Double.parseDouble(price);
                    double total_price = quan*pr;
	
                    // Update product details in the database
                    
                %>
<br>
<br>
<br>
			<h2>Edit Medicine</h2>
                <form action="rohan" method="post" class="needs-validation" novalidate>
                
                	<div class="mb-3">
                        <label for="customerId" class="form-label"></label>
                        <input type="hidden" class="form-control" id="customerId" name="customerId" value="<%= customerId %>" required>
                        <div class="invalid-feedback">
                          
                        </div>
                    </div>
                	
                	<div class="mb-3">
                        <label for="productIdStr" class="form-label"></label>
                        <input type="hidden" class="form-control" id="productIdStr" name="productIdStr" value="<%= productIdStr %>" required>
                        <div class="invalid-feedback">
                          
                        </div>
                    <div class="mb-3">
                        <label for="quantity" class="form-label">Quantity:</label>
                        <input type="text" class="form-control" id="quantity" name="quantity" value="<%= quantity %>" required>
                        <div class="invalid-feedback">
                            Please enter a quantity.
                        </div>
                    </div>
                    <div class="mb-3">
                        <label for="price" class="form-label">Price:</label>
                        <input type="text" class="form-control" id="price" name="price" value="<%= price %>" readonly>
                        <div class="invalid-feedback">
                            Please enter a price.
                        </div>
                    </div>
                    
                    
                    <div class="mb-3">
                        <label for="City" class="form-label">City</label>
                        <input type="text" class="form-control" id="City" name="City" value="" required>
                        <div class="invalid-feedback">
                            Please Enter the City.
                        </div>
                    </div>
                    
                    <div class="mb-3">
                        <label for="State" class="form-label">State</label>
                        <input type="text" class="form-control" id="State" name="State" value="" required>
                        <div class="invalid-feedback">
                            Please Enter the State.
                        </div>
                    </div>
                    
                    <div class="mb-3">
                        <label for="Address" class="form-label">Address</label>
                        <input type="text" class="form-control" id="Address" name="Address" value="" required>
                        <div class="invalid-feedback">
                            Please Enter the Address.
                        </div>
                    </div>
                    
                    <div class="mb-3">
                        <label for="Pincode" class="form-label">Pincode</label>
                        <input type="text" class="form-control" id="Pincode" name="Pincode" value="" required>
                        <div class="invalid-feedback">
                            Please Enter the Pincode.
                        </div>
                    </div>
                    <div class="mb-3">
                        <label for="TotalPrice" class="form-label">TotalPrice</label>
                        <input type="TotalPrice" class="form-control" id="TotalPrice" name="TotalPrice" value="<%= total_price %>" required readonly>
                        <div class="invalid-feedback">
                           
                        </div>
                    </div>
                    <input type="hidden" name="productId" value="<%= productIdStr %>">
                    <button type="submit" class="btn btn-primary" onclick="showAlert()">Checkout</button>
                </form>
            </div>
        </div>
    </div>
    
<br>
<br>
<br>
    <!-- Add Bootstrap JS and Popper.js -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"></script>

    <script>
        // Bootstrap validation script
        (function () {
            'use strict';

            // Fetch all the forms we want to apply custom Bootstrap validation styles to
            var forms = document.querySelectorAll('.needs-validation');

            // Loop over them and prevent submission
            Array.prototype.slice.call(forms)
                .forEach(function (form) {
                    form.addEventListener('submit', function (event) {
                        if (!form.checkValidity()) {
                            event.preventDefault();
                            event.stopPropagation();
                        }

                        form.classList.add('was-validated');
                    }, false);
                });
        })();
        function showAlert() {
            alert("Order done!");
        }
    </script>
</body>
</html>
<jsp:include page="footer.jsp" />