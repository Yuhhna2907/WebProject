package com.example.calculator;

public class Calculator {
    public static double calculate(double a, double b, String operator) {
        switch (operator) {
            case "add":
                return a + b;
            case "sub":
                return a - b;
            case "mul":
                return a * b;
            case "div":
                if (b == 0) {
                    throw new ArithmeticException("Không thể chia cho 0");
                }
                return a / b;
            default:
                throw new IllegalArgumentException("Toán tử không hợp lệ");
        }
    }
}
