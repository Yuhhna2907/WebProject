package com.example.usermanager.controller;

import com.example.usermanager.model.User;
import com.example.usermanager.service.UserDAO;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "UserServlet", value = "/users")
public class UserServlet extends HttpServlet {

    private UserDAO userDAO;

    @Override
    public void init() {
        userDAO = new UserDAO();
    }

    // ================== DO GET ==================
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }

        try {
            switch (action) {
                case "create":
                    showCreateForm(request, response);
                    break;

                case "edit":
                    showEditForm(request, response);
                    break;

                case "delete":
                    deleteUser(request, response);
                    break;

                case "search":
                    searchByCountry(request, response);
                    break;

                case "sort":
                    sortByName(request, response);
                    break;

                default:
                    listUsers(request, response);
                    break;
            }
        } catch (SQLException e) {
            throw new ServletException(e);
        }
    }

    // ================== DO POST ==================
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String action = request.getParameter("action");

        try {
            switch (action) {
                case "create":
                    insertUser(request, response);
                    break;

                case "edit":
                    updateUser(request, response);
                    break;

                default:
                    listUsers(request, response);
                    break;
            }
        } catch (SQLException e) {
            throw new ServletException(e);
        }
    }

    // ================== METHODS ==================

    private void listUsers(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, ServletException, IOException {

        List<User> users = userDAO.selectAllUsers();
        request.setAttribute("listUser", users);
        RequestDispatcher dispatcher = request.getRequestDispatcher("user/list.jsp");
        dispatcher.forward(request, response);
    }

    private void showCreateForm(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        RequestDispatcher dispatcher = request.getRequestDispatcher("user/create.jsp");
        dispatcher.forward(request, response);
    }

    private void showEditForm(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, ServletException, IOException {

        int id = Integer.parseInt(request.getParameter("id"));
        User user = userDAO.selectUser(id);
        request.setAttribute("user", user);
        RequestDispatcher dispatcher = request.getRequestDispatcher("user/edit.jsp");
        dispatcher.forward(request, response);
    }

    private void insertUser(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException {

        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String country = request.getParameter("country");

        User newUser = new User(name, email, country);
        userDAO.insertUser(newUser);

        response.sendRedirect("users");
    }

    private void updateUser(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException {

        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String country = request.getParameter("country");

        User user = new User(id, name, email, country);
        userDAO.updateUser(user);

        response.sendRedirect("users");
    }

    private void deleteUser(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException {

        int id = Integer.parseInt(request.getParameter("id"));
        userDAO.deleteUser(id);

        response.sendRedirect("users");
    }

    private void searchByCountry(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String country = request.getParameter("country");
        List<User> users = userDAO.selectUsersByCountry(country);

        request.setAttribute("listUser", users);
        RequestDispatcher dispatcher = request.getRequestDispatcher("user/list.jsp");
        dispatcher.forward(request, response);
    }

    private void sortByName(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        List<User> users = userDAO.sortUsersByName();
        request.setAttribute("listUser", users);

        RequestDispatcher dispatcher = request.getRequestDispatcher("user/list.jsp");
        dispatcher.forward(request, response);
    }
}
