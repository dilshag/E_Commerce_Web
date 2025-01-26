<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css">
    <!-- Bootstrap Icons -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet">
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f7fa;
            color: #495057;
        }
        .sidebar {
            min-height: 100vh;
            background-color: #343a40;
            color: #fff;
        }
        .sidebar a {
            color: #adb5bd;
            text-decoration: none;
            padding: 12px;
        }
        .sidebar a:hover {
            color: #fff;
            background-color: #495057;
        }
        .main-content {
            padding: 30px;
        }
        .card {
            position: relative;
            background-size: cover;
            background-position: center;
            color: #fff;
            text-shadow: 1px 1px 5px rgba(0, 0, 0, 0.6);
            overflow: hidden;
            border: none;
            border-radius: 12px;
            transition: transform 0.3s ease-in-out;
            width: 100%; /* Ensure the card takes full width of the column */
            height: 350px; /* Set a fixed height for all cards */
        }
        .card::before {
            content: "";
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(0, 0, 0, 0.5);
            z-index: 1;
        }
        .card:hover {
            transform: translateY(-8px);
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.2);
        }
        .card-body {
            position: relative;
            z-index: 2;
        }
        .card-title {
            font-size: 20px;
            font-weight: bold;
        }
        .card-text {
            font-size: 16px;
        }
        .btn {
            padding: 10px 18px;
            border-radius: 8px;
            font-size: 16px;
            transition: all 0.3s;
            opacity: 0.5; /* Reduced opacity */
        }
        .btn-primary, .btn-success, .btn-info, .btn-warning, .btn-dark {
            width: 60%;
            margin: 6px 0;
            align-items: center;
        }
        .btn:hover {
            transform: scale(1.05);
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
            opacity: 1; /* Full opacity on hover */
        }
    </style>
</head>
<body>
<div class="container-fluid">
    <div class="row">
        <!-- Sidebar -->
        <nav class="col-md-3 col-lg-2 d-md-block sidebar">
            <div class="position-sticky">
                <h3 class="text-center py-4">Admin Dashboard</h3>
                <ul class="nav flex-column px-3">
                    <li class="nav-item">
                        <a class="nav-link active" href="#">
                            <i class="bi bi-house-door"></i> Dashboard
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">
                            <i class="bi bi-box"></i> Products
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">
                            <i class="bi bi-people"></i> Users
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="order-list">
                            <i class="bi bi-clipboard"></i> Orders
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">
                            <i class="bi bi-bar-chart"></i> Reports
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="index.jsp">
                            <i class="bi bi-gear"></i> Settings
                        </a>
                    </li>
                </ul>
            </div>
        </nav>

        <!-- Main Content -->
        <main class="col-md-9 ms-sm-auto col-lg-10 main-content">
            <div class="dashboard-title">Welcome to the Admin Dashboard</div>
            <div class="row">
                <!-- Products Card -->
                <div class="col-md-4">
                    <div
                            class="card shadow-sm mb-4"
                            style="background-image: url('assests/images/cake.jpg');">
                        <div class="card-body">
                            <h5 class="card-title">Manage Products</h5>
                            <p class="card-text">View and manage all the products available in the store.</p>
                            <a href="product.jsp" class="btn btn-primary">Add Products</a>
                            <a href="update-product.jsp" class="btn btn-primary">Update Products</a>
                            <a href="product-list" class="btn btn-primary">View Products</a>
                        </div>
                    </div>
                </div>
                <!-- Users Card -->
                <div class="col-md-4">
                    <div
                            class="card shadow-sm mb-4"
                            style="background-image: url('assests/images/cake.jpg');">
                        <div class="card-body">
                            <h5 class="card-title">Manage Users</h5>
                            <p class="card-text">Manage and oversee all registered users.</p>
                            <a href="admin-register.jsp" class="btn btn-success">Register Users</a>
                            <a href="update-user.jsp" class="btn btn-success">Update Users</a>
                            <a href="user-list" class="btn btn-success">View Users</a>
                        </div>
                    </div>
                </div>
                <!-- Orders Card -->
                <div class="col-md-4">
                    <div
                            class="card shadow-sm mb-4"
                            style="background-image: url('assests/images/cake.jpg');">
                        <div class="card-body">
                            <h5 class="card-title">Manage Orders</h5>
                            <p class="card-text">Track and process pending and completed orders.</p>
                            <a href="order-list" class="btn btn-warning">View Orders</a>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row">
                <!-- Reports Card -->
                <div class="col-md-6">
                    <div
                            class="card shadow-sm mb-4"
                            style="background-image: url('assests/images/cake.jpg');">
                        <div class="card-body">
                            <h5 class="card-title">Category</h5>
                            <p class="card-text">View and manage all the categories available in the store.</p>
                            <a href="category.jsp" class="btn btn-info">Add Categories</a>
                            <a href="category_view" class="btn btn-info">View Categories</a>
                        </div>
                    </div>
                </div>
                <!-- Settings Card -->
                <div class="col-md-6">
                    <div
                            class="card shadow-sm mb-4"
                            style="background-image: url('assests/images/cake.jpg');">
                        <div class="card-body">
                            <h5 class="card-title">Settings</h5>
                            <p class="card-text">Update configurations and manage admin settings.</p>
                            <a href="#" class="btn btn-dark">Go to Settings</a>
                        </div>
                    </div>
                </div>
            </div>
        </main>
    </div>
</div>

<!-- Bootstrap JS and Icons -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
