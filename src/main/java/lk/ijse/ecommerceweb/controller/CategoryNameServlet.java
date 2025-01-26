package lk.ijse.ecommerceweb.controller;

import jakarta.annotation.Resource;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import javax.sql.DataSource;
import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
@WebServlet(name = "CategoryNameServlet", value = "/category_name")
public class CategoryNameServlet extends HttpServlet {
    @Resource(name = "java:comp/env/jdbc/pool")
    private DataSource dataSource;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<String> categories = new ArrayList<>();
        String sql = "SELECT category_id, category_name FROM categories";

        try (Connection connection = dataSource.getConnection();
             Statement stm = connection.createStatement();
             ResultSet rst = stm.executeQuery(sql)) {

            while (rst.next()) {
                categories.add(rst.getInt("category_id") + " - " + rst.getString("category_name"));
            }

            req.setAttribute("categories", categories);
            req.getRequestDispatcher("/product.jsp").forward(req, resp);

        } catch (SQLException e) {
            e.printStackTrace();
            resp.sendRedirect("error.jsp?message=Failed to load categories");
        }
    }
}