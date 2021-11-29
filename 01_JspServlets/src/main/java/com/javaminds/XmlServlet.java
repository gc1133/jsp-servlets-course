package com.javaminds;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class XmlServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("Hello from GET method of XmlServlet");
        PrintWriter writer = resp.getWriter();
        writer.println("<h1>Hello message from doGet method response of XmlServlet class... </h1>");
    }
}
