<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Registration</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/normalize.css">
    <!-- <style>
         /* Set background image for the entire page */
         body {
           /*  background: url('assests/images/registerImg.jpg') no-repeat center center fixed;
             background-size: cover; !* Ensure the image covers the entire page *!
             background-position: center; !* Center the image *!
             background-attachment: fixed; !* Keep the background image fixed *!
            */
            /* background-color: #f4f4f4; !* Fallback color if the image doesn't load *!
           */
             background-image: url("assests/images/register2.jpg");
             background-size: cover;
             background-position: center;
             font-family: 'Poppins', sans-serif;
             margin: 0;
             padding: 0;
             display: flex;
             justify-content: center;
             align-items: center;
             min-height: 100vh;
         }

         /* Form container styling */
         .form-container {
             max-width: 350px;
             width: 100%;
             background: rgba(255, 255, 255, 0.9); /* Semi-transparent background */
             padding: 25px;
             border-radius: 20px;
             box-shadow: 0 8px 20px rgba(0, 0, 0, 0.2);
             text-align: center; /* Center the content */
         }

         /* Header inside the form container */
         .form-container h2 {
             margin-bottom: 20px;
             color: #333;
             font-size: 1.5rem;
         }

         /* Other form styling */
         .form-container .mb-3 {
             margin-bottom: 15px;
         }

         .form-container label {
             display: block;
             margin-bottom: 5px;
             color: #555;
             font-size: 0.9rem;
         }

         .form-container input {
             width: 100%;
             padding: 8px;
             font-size: 0.9rem;
             border: 1px solid #ccc;
             border-radius: 8px;
             transition: all 0.3s;
         }

         .form-container input:focus {
             border-color: #ff6f61;
             outline: none;
             box-shadow: 0 0 5px rgba(255, 111, 97, 0.5);
         }

         /* Button styling */
         .form-container .btn-primary {
             width: 100%;
             padding: 10px;
             font-size: 1rem;
             color: #ffffff;
             background: #ff6f61;
             border: none;
             border-radius: 8px;
             cursor: pointer;
             transition: background-color 0.3s, transform 0.2s;
         }

         .form-container .btn-primary:hover {
             background: #e55a4e;
             transform: translateY(-2px);
         }

         .form-container .btn-primary:active {
             background: #d44b40;
         }
         /* The CSS goes here as shown above */
     </style>-->
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

        .link_login{
            text-align: center;
        }
    </style>
</head>
<body>

<div>
    <div class="contact-form-wrapper d-flex justify-content-center">
        <form action="admin_register" method="post" class="contact-form">
            <h5 class="title">Admin Register</h5>
            <p class="description">Feel free to contact us if you need any assistance, any help or another question.
            </p>
            <div class="mb-3">
                <label for="userName" class="form-label">Name</label>
                <input type="text" id="userName" name="user_name" class="form-control" required>
            </div>
            <div class="mb-3">
                <label for="address" class="form-label">Address</label>
                <input type="text" id="address" name="address" class="form-control">
            </div>

            <div class="mb-3">
                <label for="email" class="form-label">Email</label>
                <input type="email" id="email" name="email" class="form-control" required>
            </div>
            <div class="mb-3">
                <label for="phone" class="form-label">Phone</label>
                <input type="text" id="phone" name="phone" class="form-control">
            </div>
            <div class="mb-3">
                <label for="password" class="form-label">Password</label>
                <input type="password" id="password" name="password" class="form-control" required>
            </div>
            <div class="submit-button-wrapper">
                <input type="submit" value="Sing up">
            </div>
            <div class="link_login">
                <p>Already have an account? <a href="admin_login.jsp">Login</a></p>
            </div>
        </form>
    </div>
</div>
<!--<div class="form-container">
    <h2>Admin Registration</h2>
    <form action="admin-register-servlet" method="post">
        <input type="hidden" name="role" value="admin">
        <input type="hidden" name="status" value="active">
        <div class="mb-3">
            <label for="userName" class="form-label">Name</label>
            <input type="text" id="userName" name="user_name" class="form-control" required>
        </div>
        <div class="mb-3">
            <label for="address" class="form-label">Address</label>
            <input type="text" id="address" name="address" class="form-control">
        </div>

        <div class="mb-3">
            <label for="email" class="form-label">Email</label>
            <input type="email" id="email" name="email" class="form-control" required>
        </div>
        <div class="mb-3">
            <label for="phone" class="form-label">Phone</label>
            <input type="text" id="phone" name="phone" class="form-control">
        </div>
        <div class="mb-3">
            <label for="password" class="form-label">Password</label>
            <input type="password" id="password" name="password" class="form-control" required>
        </div>
        <button type="submit" class="btn btn-primary">Register</button>
    </form>
</div>-->

</body>
</html>
