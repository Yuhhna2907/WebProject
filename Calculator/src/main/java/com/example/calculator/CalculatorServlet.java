package com.example.calculator;

import java.io.*;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "CalculatorServlet", value = "/calculate")
public class CalculatorServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String first = request.getParameter("first");
        String second = request.getParameter("second");
        String operator = request.getParameter("operator");

        String result = "";
        String error = "";

        try {
            double a = Double.parseDouble(first);
            double b = Double.parseDouble(second);
            double res = Calculator.calculate(a, b, operator);

            String symbol;
            switch (operator) {
                case "add":
                    symbol = "+";
                    break;
                case "sub":
                    symbol = "-";
                    break;
                case "mul":
                    symbol = "×";
                    break;
                case "div":
                    symbol = "÷";
                    break;
                default:
                    symbol = "?";
                    break;
            }
            result = a + " " + symbol + " " + b + " = " + res;
        } catch (Exception e) {
            error = "Lỗi: " + e.getMessage();
        }

        request.setAttribute("result", result);
        request.setAttribute("error", error);
        RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
        dispatcher.forward(request, response);
    }
}