<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add New Restaurant</title>
<!-- Bootstrap CSS -->
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
<!-- FontAwesome Icons -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
<!-- Custom CSS -->
<style>
    body {
        background-color: #f8f9fa;
        font-family: 'Arial', sans-serif;
        color: #333;
    }
    .container {
        background-color: #ffffff;
        padding: 30px;
        border-radius: 8px;
        box-shadow: 0px 0px 20px rgba(0, 0, 0, 0.1);
        max-width: 600px;
    }
    h2 {
        color: #e67e22;
    }
    .form-group label {
        font-weight: bold;
    }
    .form-control {
        border-radius: 30px;
        padding-left: 40px;
    }
    .form-group i {
        position: absolute;
        margin-top: 10px;
        margin-left: 10px;
        color: #e67e22;
    }
    .btn-primary {
        background-color: #e67e22;
        border: none;
        border-radius: 30px;
    }
    .btn-primary:hover {
        background-color: #d35400;
    }
</style>
</head>
<body>

<div class="container mt-5">
    <h2 class="text-center mb-4"><i class="fas fa-utensils"></i> Add New Restaurant</h2>
    <form action="saverestaurant" method="post">
        <div class="form-group position-relative">
            <label for="name">Name</label>
            <i class="fas fa-store-alt"></i>
            <input type="text" class="form-control" id="name" name="name" placeholder="Enter restaurant name" required>
        </div>
        <div class="form-group position-relative">
            <label for="address">Address</label>
            <i class="fas fa-map-marker-alt"></i>
            <input type="text" class="form-control" id="address" name="address" placeholder="Enter restaurant address" required>
        </div>
        <div class="form-group position-relative">
            <label for="category">Category</label>
            <i class="fas fa-tags"></i>
            <input type="text" class="form-control" id="category" name="category" placeholder="Enter restaurant category" required>
        </div>
        <button type="submit" class="btn btn-primary btn-block"><i class="fas fa-plus-circle"></i> Add Restaurant</button>
    </form>
</div>

<!-- Bootstrap JS and dependencies -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>
