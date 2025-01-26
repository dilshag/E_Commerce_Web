<%@ page import="lk.ijse.ecommerceweb.dto.CategoryDTO" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Category Management</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f5f7fa;
            font-family: 'Arial', sans-serif;
        }
        .container {
            max-width: 1000px;
            margin-top: 50px;
        }
        h1 {
            font-size: 2.2rem;
            font-weight: bold;
            color: #5d5d5d;
            margin-bottom: 30px;
        }
        .card {
            border: none;
            border-radius: 15px;
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.1);
            margin-bottom: 30px;
            transition: transform 0.3s ease-in-out;
        }
        .card:hover {
            transform: scale(1.02);
        }
        .card-body {
            padding: 25px;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
        }
        .card-title {
            font-size: 1.3rem;
            font-weight: bold;
            text-align: center;
        }
        .btn {
            border-radius: 30px;
            font-weight: bold;
            padding: 12px 24px;
            transition: all 0.3s ease-in-out;
            margin-top: 15px;
            width: 100%;
        }
        .btn-primary {
            background-color: #007bff;
            color: white;
            border: none;
        }
        .btn-primary:hover {
            background-color: #0056b3;
        }
        .btn-danger {
            background-color: #dc3545;
            color: white;
            border: none;
        }
        .btn-danger:hover {
            background-color: #c82333;
        }
        .btn-warning {
            background-color: #ffc107;
            color: white;
            border: none;
        }
        .btn-warning:hover {
            background-color: #e0a800;
        }
        .form-label {
            font-weight: bold;
            color: #5d5d5d;
        }
        .form-control {
            border-radius: 10px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            padding: 12px;
            font-size: 1rem;
        }
        .form-control:focus {
            box-shadow: 0 0 8px rgba(0, 123, 255, 0.5);
            border-color: #007bff;
        }
        footer {
            margin-top: 50px;
            text-align: center;
            color: #6c757d;
            font-size: 0.9rem;
        }
    </style>
</head>
<body>

<div class="container my-5">
    <h1 class="text-center mb-4 text-primary">Category Management</h1>

    <!-- Navigation Buttons -->
    <div class="d-flex justify-content-center mb-4">
        <form action="category_view" class="me-3">
            <button type="submit" class="btn btn-danger">View Categories</button>
        </form>
        <form action="admin_dashboard.jsp">
            <button type="submit" class="btn btn-danger">Home</button>
        </form>
    </div>

    <% String message = request.getParameter("message"); %>
    <% String error = request.getParameter("error"); %>

    <% if (message != null) { %>
    <div class="alert alert-success" role="alert"><%= message %></div>
    <% } else if (error != null) { %>
    <div class="alert alert-danger" role="alert"><%= error %></div>
    <% } %>

    <!-- Cards for Add, Delete, and Update Category displayed in a row -->
    <div class="row row-cols-1 row-cols-md-3 g-4">
        <!-- Add Category Card -->
        <div class="col">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title text-success">Add Category</h5>
                    <form action="category-servlet" method="post">
                        <div class="mb-3">
                            <label for="category_name" class="form-label">Category Name</label>
                            <input type="text" id="category_name" name="category_name" class="form-control" placeholder="Enter category name" required>
                        </div>
                        <div class="mb-3">
                            <label for="category_description" class="form-label">Category Description</label>
                            <input type="text" id="category_description" name="category_description" class="form-control" placeholder="Enter category description" required>
                        </div>
                        <button type="submit" class="btn btn-primary">Save Category</button>
                    </form>
                </div>
            </div>
        </div>

        <!-- Delete Category Card -->
        <div class="col">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title text-danger">Delete Category</h5>
                    <form action="category-servlet" method="post">
                        <div class="mb-3">
                            <label for="category_id" class="form-label">Category ID</label>
                            <input type="number" id="category_id" name="category_id" class="form-control" placeholder="Enter category ID" required>
                        </div>
                        <button type="submit" class="btn btn-danger">Delete Category</button>
                    </form>
                </div>
            </div>
        </div>

        <!-- Update Category Card -->
        <div class="col">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title text-warning">Update Category</h5>
                    <form action="category-servlet" method="post">
                        <div class="mb-3">
                            <label for="update_category_id" class="form-label">Category ID</label>
                            <input type="number" id="update_category_id" name="update_category_id" class="form-control" placeholder="Enter category ID" required>
                        </div>
                        <div class="mb-3">
                            <label for="update_name" class="form-label">New Category Name</label>
                            <input type="text" id="update_name" name="update_name" class="form-control" placeholder="Enter new category name" required>
                        </div>
                        <div class="mb-3">
                            <label for="update_description" class="form-label">New Category Description</label>
                            <input type="text" id="update_description" name="update_description" class="form-control" placeholder="Enter new category description" required>
                        </div>
                        <button type="submit" class="btn btn-warning">Update Category</button>
                    </form>
                </div>
            </div>
        </div>
    </div>

</div>

<footer>
    &copy; 2024 Category Management. All rights reserved.
</footer>

<!-- Bootstrap JS Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
