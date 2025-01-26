package lk.ijse.ecommerceweb.controller;

import jakarta.annotation.Resource;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.mindrot.jbcrypt.BCrypt;

import javax.sql.DataSource;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@WebServlet(name = "AdminRegisterServlet", value = ("/admin_register"))
public class AdminRegisterServlet extends HttpServlet {
@Resource(name = "java:comp/env/jdbc/pool")
private DataSource dataSource;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        // Retrieving user input from the registration form
        String userName = req.getParameter("user_name");
        String password = req.getParameter("password");
        String email = req.getParameter("email");
        String role = req.getParameter("role");
        String status = req.getParameter("status");

        // For 'admin' role, retrieve additional fields like phone and address
        String phone = "admin".equals(role) ? req.getParameter("phone") : null;
        String address = "admin".equals(role) ? req.getParameter("address") : null;

        // Hashing the plain password for security before storing it
        String hashedPassword = BCrypt.hashpw(password, BCrypt.gensalt());

        // Try block to handle database interaction with the connection pool
        try (Connection connection = dataSource.getConnection()) {
            // SQL query to insert a new user into the database
            String sql = "INSERT INTO users (user_name, password, email, phone, address, role, status) VALUES (?, ?, ?, ?, ?, ?, ?)";

            // Preparing the SQL query to prevent SQL injection
            try (PreparedStatement preparedStatement = connection.prepareStatement(sql)) {
                // Setting the values for the SQL query parameters
                preparedStatement.setString(1, userName);
                preparedStatement.setString(2, hashedPassword);

                // Checking if email is provided and setting it, otherwise setting it to NULL
                if (email != null && !email.trim().isEmpty()) {
                    preparedStatement.setString(3, email);
                } else {
                    preparedStatement.setNull(3, java.sql.Types.VARCHAR);
                }

                // Setting the phone number for 'admin' role, otherwise setting it to NULL
                if (phone != null && !phone.trim().isEmpty()) {
                    preparedStatement.setString(4, phone);
                } else {
                    preparedStatement.setNull(4, java.sql.Types.VARCHAR);
                }

                // Setting the address for 'admin' role, otherwise setting it to NULL
                if (address != null && !address.trim().isEmpty()) {
                    preparedStatement.setString(5, address);
                } else {
                    preparedStatement.setNull(5, java.sql.Types.VARCHAR);
                }

                // Setting the role (admin/customer) and status
                preparedStatement.setString(6, role);
                preparedStatement.setString(7, status);

                // Executing the SQL update and getting the number of affected rows
                int rowsAffected = preparedStatement.executeUpdate();

                // If at least one row was affected, registration was successful
                if (rowsAffected > 0) {
                    // Redirecting the user based on their role
                    if ("admin".equalsIgnoreCase(role)) {
                        resp.sendRedirect("admin.jsp?message=Admin registered successfully!");
                    } else {
                        resp.sendRedirect("index.jsp?message=Customer registered successfully!");
                    }
                } else {
                    // If no rows were affected, show an error message
                    resp.sendRedirect("signin.jsp?error=Registration failed. Please try again.");
                }
            }
        } catch (SQLException e) {
            // If there is a database error, print the error to the response
            e.printStackTrace();
            resp.getWriter().println("Database error: " + e.getMessage());
        }
    }
}
