/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet(urlPatterns = {"/login"})
public class LoginServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String role = request.getParameter("role");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        //redirecting admin masih salah
        try {
            if ("admin".equals(role)) {
                if (email.equals("admin@gmail.com") && password.equals("123")) {
                    HttpSession session = request.getSession();
                    session.setAttribute("email", email);
                    session.setAttribute("role", "admin");
                    response.sendRedirect("adminDashboard.jsp");
                    return;
                } else {
                    response.sendRedirect("adminDashboard.jsp");
                    return;
                }
            }
            //redirecting dokter masih salah
            if ("dokter".equals(role)) {
                if (email.equals("dokter@gmail.com") && password.equals("123")) {
                    HttpSession session = request.getSession();
                    session.setAttribute("email", email);
                    session.setAttribute("role", "dokter");
                    response.sendRedirect("dokter");
                    return;
                } else {
                    response.sendRedirect("login.jsp?emailError=true");
                    return;
                }
            }

            if ("user".equals(role)) {
                try (Connection conn = JDBC.getConnection()) {
                    PreparedStatement ps = conn.prepareStatement("SELECT * FROM users WHERE email = ?");
                    ps.setString(1, email);
                    ResultSet rs = ps.executeQuery();

                    if (!rs.next()) {
                        response.sendRedirect("login.jsp?emailError=true");
                    } else {
                        String storedPassword = rs.getString("password");
                        if (!storedPassword.equals(password)) {
                            response.sendRedirect("login.jsp?passwordError=true&email=" + email);
                        } else {
                            HttpSession session = request.getSession();
                            session.setAttribute("email", email);
                            session.setAttribute("role", "user");
                            response.sendRedirect("dashboard.jsp");
                        }
                    }
                }
            }

        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().println("Error: " + e.getMessage());
        }
    }
}
