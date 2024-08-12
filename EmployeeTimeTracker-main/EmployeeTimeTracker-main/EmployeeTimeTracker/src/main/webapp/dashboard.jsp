<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="javax.servlet.http.HttpServletRequest"%>
<%@page import="javax.servlet.http.HttpServletResponse"%>
<%
    if (session == null || session.getAttribute("username") == null) {
        response.sendRedirect("login.jsp");
    } else {
        String role = (String) session.getAttribute("role");
%>
<!DOCTYPE html>
<html>
<head>
    <title>Dashboard</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
    <h2>Welcome, <%= session.getAttribute("username") %></h2>
    <%
        if ("Admin".equals(role)) {
    %>
    <a href="adminPage.jsp">Admin Page</a><br>
    <%
        } else {
    %>
    <a href="taskPage.jsp">Task Management</a><br>
    <a href="associaterPage.jsp">View Asscociater</a>
    <%
        }
    %>
    <a href="LogoutServlet">Logout</a>
</body>
</html>
<%
    }
%>

    