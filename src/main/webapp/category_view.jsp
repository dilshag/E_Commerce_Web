<%--
<%@ page import="java.util.List" %>
<%@ page import="lk.ijse.ecommerceweb.dto.CategoryDTO" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Category Management</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            background-color: #f4f6f9;
            font-family: 'Segoe UI', sans-serif;
        }

        .container {
            max-width: 900px;
            margin-top: 40px;
            background-color: #ffffff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
        }

        h1 {
            font-size: 2.2rem;
            color: #2c3e50;
            font-weight: bold;
            text-align: center;
            margin-bottom: 20px;
        }

        table {
            border-collapse: collapse;
        }

        th {
            text-align: center;
            background-color: #2c3e50;
            color: #ffffff;
        }

        td {
            text-align: center;
        }

        .btn-primary {
            background-color: #3498db;
            border: none;
        }

        .btn-primary:hover {
            background-color: #2980b9;
        }

        .btn-danger {
            background-color: #e74c3c;
            border: none;
        }

        .btn-danger:hover {
            background-color: #c0392b;
        }

        .alert {
            border-radius: 5px;
        }
    </style>
</head>
<body>

<div class="container">
    &lt;%&ndash; Home Button &ndash;%&gt;
    <form action="admin_dashboard.jsp" class="mb-4">
        <button type="submit" class="btn btn-primary">Home</button>
    </form>

    &lt;%&ndash; Display Success or Error Messages &ndash;%&gt;
    <% String successMessage = request.getParameter("success"); %>
    <% String errorMessage = request.getParameter("error"); %>
    <% if (successMessage != null) { %>
    <div class="alert alert-success text-center" role="alert">
        <%= successMessage %>
    </div>
    <% } else if (errorMessage != null) { %>
    <div class="alert alert-danger text-center" role="alert">
        <%= errorMessage %>
    </div>
    <% } %>

    &lt;%&ndash; Page Title &ndash;%&gt;
    <h1>Category Management</h1>

    &lt;%&ndash; Check if there are categories to display &ndash;%&gt;
    <% List<CategoryDTO> dataList = (List<CategoryDTO>) request.getAttribute("categoryList"); %>

    <% if (dataList != null && !dataList.isEmpty()) { %>
    <div class="table-responsive">
        <table class="table table-bordered table-striped align-middle">
            <thead>
            <tr>
                <th>#</th>
                <th>ID</th>
                <th>Name</th>
                <th>Description</th>
                <th>Actions</th>
            </tr>
            </thead>
            <tbody>
            <% for (CategoryDTO categoryDTO : dataList) { %>
            <tr>
                <td><%= categoryDTO.getCategoryId() %></td>
                <td><%= categoryDTO.getCategoryId() %></td>
                <td><%= categoryDTO.getCategoryName() %></td>
                <td><%= categoryDTO.getDescription() %></td>
                <td>
                    &lt;%&ndash; Delete Button &ndash;%&gt;
                    <form action="category_view" method="post" class="d-inline">
                        <input type="hidden" name="category_id" value="<%= categoryDTO.getCategoryId() %>" />
                        <button type="submit" class="btn btn-danger">Delete</button>
                    </form>
                </td>
            </tr>
            <% } %>
            </tbody>
        </table>
    </div>
    <% } else { %>
    <div class="alert alert-warning text-center" role="alert">
        No categories available.
    </div>
    <% } %>

    &lt;%&ndash; Add or Update Button &ndash;%&gt;
    <form action="category.jsp" class="text-center mt-4">
        <button type="submit" class="btn btn-primary">Add, Update, or Delete Category</button>
    </form>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
--%>

<%@ page import="java.util.List" %>
<%@ page import="lk.ijse.ecommerceweb.dto.CategoryDTO" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Category Management</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            background-color: #f3f4f6;
            font-family: 'Roboto', sans-serif;
        }

        h1 {
            font-size: 2.5rem;
            color: #4a4a4a;
            font-weight: 700;
        }

        .container {
            max-width: 850px;
            margin: 50px auto;
            background-color: #ffffff;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
        }

        table {
            border-collapse: collapse;
        }

        th, td {
            text-align: center;
            vertical-align: middle;
        }

        th {
            background-color: #4caf50;
            color: #fff;
        }

        .btn {
            border-radius: 50px;
            font-weight: bold;
            padding: 12px 25px;
            transition: all 0.3s ease;
        }

        .btn-primary {
            background-color: #4caf50;
            border: none;
            color: #ffffff;
        }

        .btn-primary:hover {
            background-color: #388e3c;
        }

        .btn-secondary {
            background-color: #6c757d;
            border: none;
            color: #ffffff;
        }

        .btn-secondary:hover {
            background-color: #5a6268;
        }

        .alert-warning {
            border-radius: 10px;
            font-size: 1rem;
            text-align: center;
            color: #856404;
            background-color: #fff3cd;
        }

        .table-responsive {
            border-radius: 10px;
            overflow: hidden;
        }

        table tr:hover {
            background-color: #f1f1f1;
        }
    </style>
</head>
<body>

<div class="container">
    <form action="admin_dashboard.jsp" class="mb-4">
        <button type="submit" class="btn btn-secondary">&#x21A9; Home</button>
    </form>

    <h1 class="text-center mb-4">Category Management</h1>

    <%
        List<CategoryDTO> dataList = (List<CategoryDTO>) request.getAttribute("categoryList");
        if (dataList != null && !dataList.isEmpty()) {
    %>
    <div class="table-responsive">
        <table class="table table-striped table-hover">
            <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Description</th>
            </tr>
            </thead>
            <tbody>
            <%
                for (CategoryDTO categoryDTO : dataList) {
            %>
            <tr>
                <td><%= categoryDTO.getCategoryId() %></td>
                <td><%= categoryDTO.getCategoryName() %></td>
                <td><%= categoryDTO.getDescription() %></td>
            </tr>
            <%
                }
            %>
            </tbody>
        </table>
    </div>
    <form action="category.jsp" class="text-center mt-4">
        <button type="submit" class="btn btn-primary">Manage Categories</button>
    </form>
    <% } else { %>
    <div class="alert alert-warning" role="alert">
        No categories available.
    </div>
    <% } %>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
