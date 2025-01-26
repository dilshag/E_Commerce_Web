<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Registration</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="styles/normalize.css">

    <style>
        body {
            background-color: #f5e0e5 !important;
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
        }

        .contact-form-wrapper {
            padding: 100px 0;
        }

        .contact-form {
            padding: 30px 40px;
            background-color: #ffffff;
            border-radius: 12px;
            max-width: 400px;
        }

        .contact-form textarea {
            resize: none;
        }

        .contact-form .form-input,
        .form-text-area {
            background-color: #f0f4f5;
            height: 50px;
            padding-left: 16px;
        }

        .contact-form .form-text-area {
            background-color: #f0f4f5;
            height: auto;
            padding-left: 16px;
        }

        .contact-form .form-control::placeholder {
            color: #aeb4b9;
            font-weight: 500;
            opacity: 1;
        }

        .contact-form .form-control:-ms-input-placeholder {
            color: #aeb4b9;
            font-weight: 500;
        }

        .contact-form .form-control::-ms-input-placeholder {
            color: #aeb4b9;
            font-weight: 500;
        }

        .contact-form .form-control:focus {
            border-color: #f33fb0;
            box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.07), 0 0 8px #f33fb0;
        }

        .contact-form .title {
            text-align: center;
            font-size: 24px;
            font-weight: 500;
        }

        .contact-form .description {
            color: #aeb4b9;
            font-size: 14px;
            text-align: center;
        }

        .contact-form .submit-button-wrapper {
            text-align: center;
        }

        .contact-form .submit-button-wrapper input {
            border: none;
            border-radius: 4px;
            background-color: #f23292;
            color: white;
            text-transform: uppercase;
            padding: 10px 60px;
            font-weight: 500;
            letter-spacing: 2px;
        }

        .contact-form .submit-button-wrapper input:hover {
            background-color: #d30069;
        }

        .link_register{
            text-align: center;
        }
    </style>
</head>
<body>

<div class="contact-form-wrapper d-flex justify-content-center">
    <form action="admin_dashboard.jsp"  method="post" class="contact-form">
        <h5 class="title">Admin Login</h5>
        <p class="description">Feel free to contact us if you need any assistance, any help or another question.
        </p>
        <div class="mb-3">
            <label for="userName" class="form-label">Name</label>
            <input type="text" id="userName" name="user_name" class="form-control" required>
        </div>
        <div class="mb-3">
            <label for="password" class="form-label">Password</label>
            <input type="password" id="password" name="password" class="form-control" required>
        </div>
        <div class="submit-button-wrapper">
            <input type="submit" value="Login">
        </div>
        <div class="link_register">
            <p>Don't have an account? <a href="admin_register.jsp">Register</a></p>
        </div>
    </form>
</div>


</body>
</html>
