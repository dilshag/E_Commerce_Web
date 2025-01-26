/*
package lk.ijse.ecommerceweb.controller;

import jakarta.annotation.Resource;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lk.ijse.ecommerceweb.dto.CategoryDTO;

import javax.sql.DataSource;
import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "CategoryViewServlet", value = "/category_view")
public class CategoryViewServlet extends HttpServlet {

    @Resource(name = "java:comp/env/jdbc/pool")
    private DataSource dataSource;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<CategoryDTO> categoryDTOList = new ArrayList<>();
        try (Connection connection = dataSource.getConnection()) {
            // Use ROW_NUMBER() to display sequential row numbers
            String sql = "SELECT ROW_NUMBER() OVER (ORDER BY category_id) AS row_num, category_id, category_name, description FROM categories";
            Statement stm = connection.createStatement();
            ResultSet rst = stm.executeQuery(sql);
            while (rst.next()) {
                CategoryDTO categoryDTO = new CategoryDTO(
                        rst.getInt("row_num"),    // Use row_num for display purposes
                        rst.getString("category_name"),
                        rst.getString("description")
                );
                categoryDTOList.add(categoryDTO);
            }
            req.setAttribute("categoryList", categoryDTOList);
            RequestDispatcher requestDispatcher = req.getRequestDispatcher("category_view.jsp");
            requestDispatcher.forward(req, resp);
        } catch (Exception e) {
            e.printStackTrace();
            resp.sendRedirect("category_view.jsp?error=Fail to load categories");
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String categoryId = req.getParameter("category_id");

        if (categoryId == null || categoryId.isEmpty()) {
            System.err.println("Category ID is null or empty");
            resp.sendRedirect("category_view?error=Invalid category ID");
            return;
        }

        try (Connection connection = dataSource.getConnection()) {
            System.out.println("Database connected successfully");

            String sql = "DELETE FROM categories WHERE category_id = ?";
            try (PreparedStatement pstm = connection.prepareStatement(sql)) {
                System.out.println("Executing query: DELETE FROM categories WHERE category_id = " + categoryId);
                pstm.setInt(1, Integer.parseInt(categoryId));

                int rowsAffected = pstm.executeUpdate();
                System.out.println("Rows affected: " + rowsAffected);

                if (rowsAffected > 0) {
                    resp.sendRedirect("category_view?success=Category deleted successfully");
                } else {
                    resp.sendRedirect("category_view?error=Category deletion failed");
                }
            }
        } catch (SQLIntegrityConstraintViolationException e) {
            System.err.println("Constraint violation: " + e.getMessage());
            resp.sendRedirect("category_view?error=Cannot delete category due to dependent data");
        } catch (NumberFormatException e) {
            System.err.println("Invalid category ID format: " + categoryId);
            resp.sendRedirect("category_view?error=Invalid category ID format");
        } catch (Exception e) {
            e.printStackTrace();
            resp.sendRedirect("category_view?error=An error occurred during deletion");
        }
    }

}
*/

package lk.ijse.ecommerceweb.controller;

import jakarta.annotation.Resource;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lk.ijse.ecommerceweb.dto.CategoryDTO;

import javax.sql.DataSource;
import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "CategoryListServlet", value = "/category_view")
public class CategoryViewServlet extends HttpServlet {
    @Resource(name = "java:comp/env/jdbc/pool")
    private DataSource dataSource;
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<CategoryDTO> categoryDTOList = new ArrayList<>();
        try {
            Connection connection = dataSource.getConnection();
            String sql = "select * from categories";
            Statement stm = connection.createStatement();
            ResultSet rst = stm.executeQuery(sql);
            while (rst.next()) {
                CategoryDTO categoryDTO = new CategoryDTO(
                        rst.getInt(1),
                        rst.getString(2),
                        rst.getString(3)
                );
                categoryDTOList.add(categoryDTO);
            }
            req.setAttribute("categoryList", categoryDTOList);
            RequestDispatcher requestDispatcher = req.getRequestDispatcher("category_view.jsp");
            requestDispatcher.forward(req, resp);
        } catch (Exception e) {
            e.printStackTrace();
            resp.sendRedirect("category_view.jsp?error=Fail to load categories");
        }
    }
}


