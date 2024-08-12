
<%@page import="javax.servlet.http.HttpSession"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    //HttpSession session = request.getSession(false);
    if (session == null || session.getAttribute("username") == null) {
        response.sendRedirect("login.jsp");
        return; // Prevent further processing if the user is not logged in
    }
%>
<!DOCTYPE html>
<html>
<head>
    <title>View All Charts</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
    <h2>Charts Overview</h2>
    <div class ="box">
        <a href="AllDailyChart.jsp">View Daily Chart</a>
        </div>
        <div class ="box">
        <a href="AllWeeklyChart.jsp">View Weekly Chart</a>
        </div>
        <div class = "box">
        <a href="AllMonthlyChart.jsp">View Monthly Chart</a>
    </div>
    <a href="dashboard.jsp">Back to Dashboard</a>
</body>
</html>
    