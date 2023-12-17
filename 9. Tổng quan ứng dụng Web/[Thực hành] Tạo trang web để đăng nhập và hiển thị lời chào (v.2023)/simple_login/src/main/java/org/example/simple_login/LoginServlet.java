package org.example.simple_login;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "LoginServlet" , value = "/login")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String userName = req.getParameter("userName");
        String password = req.getParameter("password");

        PrintWriter writer = resp.getWriter();
        writer.println("<html>");
        if("admin".equals(userName) && "admin".equals(password)){
            writer.println("<html>");
        } else {
            writer.println("<h1> Login Error </h1>");
        }
        writer.println("<html>");
    }
}
