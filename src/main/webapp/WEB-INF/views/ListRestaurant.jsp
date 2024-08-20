<%@page import="com.entity.RestaurantEntity"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Restaurant Listing</title>
<!-- Bootstrap CSS -->
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
<!-- FontAwesome Icons -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
<!-- Custom CSS -->
<style>
    body {
        background-color: #f7f7f7;
        color: #444;
    }
    h2 {
        margin-top: 20px;
        margin-bottom: 30px;
        text-align: center;
        color: #e67e22; 
    }
    .table {
        margin: auto;
        width: 80%;
        background-color: #ffffff;
        box-shadow: 0px 0px 20px rgba(0,0,0,0.1);
        border-radius: 10px;
        overflow: hidden;
    }
    .table th {
        background-color: #e67e22; 
        color: #ffffff;
    }
    .table td, .table th {
        padding: 15px;
        text-align: center;
    }
    .table tbody tr:nth-child(even) {
        background-color: #f2f2f2;
    }
    .table tbody tr:hover {
        background-color: #ffe5d1;
    }
    .btn-delete {
        color: #e74c3c;
        border: none;
        background: none;
    }
    .btn-delete:hover {
        color: #c0392b;
        text-decoration: none;
    }
    .fa-trash {
        margin-right: 5px;
    }
</style>
</head>
<body>

	<h2><i class="fas fa-utensils"></i> List of Restaurants</h2>

	<%
	List<RestaurantEntity> restaurants = (List<RestaurantEntity>) request.getAttribute("restaurants");
	%>

	<table class="table table-bordered table-hover">
		<thead>
			<tr>
				<th><i class="fas fa-hashtag"></i> Restaurant ID</th>
				<th><i class="fas fa-store-alt"></i> Name</th>
				<th><i class="fas fa-tags"></i> Category</th>
				<th><i class="fas fa-cogs"></i> Action</th>
			</tr>
		</thead>
		<tbody>
		<%
		for (RestaurantEntity r : restaurants) {
			out.print("<tr>");
			out.print("<td>" + r.getRestaurantId() + "</td>");
			out.print("<td>" + r.getName() + "</td>");
			out.print("<td>" + r.getCategory() + "</td>");
			out.print("<td><a href='deleterestaurant?restaurantId=" + r.getRestaurantId() + "' class='btn-delete'><i class='fas fa-trash'></i>Delete</a></td>");
			out.print("</tr>");
		}
		%>
		</tbody>
	</table>

	
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>
