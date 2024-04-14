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
<jsp:include page="Header.jsp" />
<body>
    <div class="container mt-5 , signup-form">
        <div class="card">
            <div class="card-body">
                <%
                    // Retrieve product details from the request
                    String productIdStr = request.getParameter("id");
                    //int productId = Integer.parseInt(productIdStr);
                    String quantity = request.getParameter("quantity");
                    String price = request.getParameter("price");

                    // Update product details in the database
                    
                %>
<br>
<br>
<br>
			<h2>Edit Medicine</h2>
                <form action="edit" method="post" class="needs-validation" novalidate>
                	<div class="mb-3">
                        <input type="hidden" class="form-control" id="productIdStr" name="productIdStr" value="<%= productIdStr %>" required>
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
                        <input type="text" class="form-control" id="price" name="price" value="<%= price %>" required>
                        <div class="invalid-feedback">
                            Please enter a price.
                        </div>
                    </div>
                    <input type="hidden" name="productId" value="<%= productIdStr %>">
                    <button type="submit" class="btn btn-primary">Update</button>
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
    </script>
</body>
</html>
<jsp:include page="footer.jsp" />