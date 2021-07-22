<%--
  Created by IntelliJ IDEA.
  User: gudu
  Date: 20/07/21
  Time: 1:22 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>My Resume</title>
    <link rel="stylesheet" href="homePage.css">
</head>
<style>
    table {
        border-collapse: collapse;
        border-spacing: 0;
        width: 100%;
        border: 1px solid #ddd;
    }

    th, td {
        text-align: left;
        padding: 16px;
    }

    tr:nth-child(even) {
        background-color: #f2f2f2;
    }

    img {
        width: 150px;
    }
</style>
<body>

<%@page import="bean.UserData,bean.User"%>

<%
    String username=request.getParameter("username");
    User u = UserData.getRecordByUsername(username);
%>

<table>
    <tr>
        <th rowspan="5">
            <img src="images/Profile.jpeg" alt="Image">
        </th>
    </tr>
    <tr>
        <td><b>Name</b></td>
        <td><%= u.getUname()%></td>
    </tr>
    <tr>
        <td><b>User Name</b></td>
        <td><%= u.getUusername()%></td>
    </tr>
    <tr>
        <td><b>Email</b></td>
        <td><%= u.getUemail()%></td>
    </tr>
    <tr>
        <td><b>Phone</b></td>
        <td><%= u.getUphone()%></td>
    </tr>
</table>

<br />
<br />
<div style="display: flex; padding-left: 500px; padding-right: 500px">
    <button class="button" onclick="logout()">Log out</button>
</div>

<script>
    function logout() {
        window.location.replace("http://localhost:8080/DemoWebApp1_war_exploded/index.jsp");
    }
</script>
</body>
</html>
