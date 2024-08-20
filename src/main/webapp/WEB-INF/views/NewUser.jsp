<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add New User</title>

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
        color: #3498db;
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
        color: #3498db;
    }
    .btn-primary {
        background-color: #3498db;
        border: none;
        border-radius: 30px;
    }
    .btn-primary:hover {
        background-color: #2980b9;
    }
</style>
</head>
<body>

<div class="container mt-5">
    <h2 class="text-center mb-4"><i class="fas fa-user-plus"></i> Add New User</h2>
    <form action="saveuser" method="post">
        <div class="form-group position-relative">
            <label for="firstName">First Name</label>
            <i class="fas fa-user"></i>
            <input type="text" class="form-control" id="firstName" name="firstName" placeholder="Enter your first name" required>
        </div>
        <div class="form-group position-relative">
            <label for="email">Email</label>
            <i class="fas fa-envelope"></i>
            <input type="email" class="form-control" id="email" name="email" placeholder="Enter your email" required>
        </div>
        <div class="form-group position-relative">
            <label for="password">Password</label>
            <i class="fas fa-lock"></i>
            <input type="password" class="form-control" id="password" name="password" placeholder="Enter your password" required>
        </div>
        <button type="submit" class="btn btn-primary btn-block"><i class="fas fa-save"></i> Save</button>
    </form>
</div>

<!-- Bootstrap JS and dependencies -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>
