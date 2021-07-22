<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*"%>
<%@page import="bean.User"%>

<!DOCTYPE html>
<html>
<head>
    <title>JSP - Project 1</title>
    <link rel="stylesheet" href="homePage.css">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat&display=swap" rel="stylesheet"/>
</head>
<body>

<%
    String db = "java_assignment";
    String user = "root"; // assumes database name is the same as username
    try {
        Class.forName("com.mysql.jdbc.Driver");
//        DriverManager.registerDriver(new com.mysql.jdbc.Driver());
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/"+db, user, "Gudu*1234");
        System.out.println (db+ "database successfully opened.");
    }
    catch(SQLException e) {
        System.out.println("SQLException caught: " + e.getMessage());
    }
%>

<div class="bgimg">
    <div class="topleft">
        <p>Welcome to Resume Project</p>
    </div>
    <div class="middle">
        <h1>RESUME PROJECT</h1>
        <hr>
        <p>First Project in JSP</p>
    </div>
    <div class="buttonDiv">
        <button class="button" onclick="homeSignUpClick()">Sign up</button>
        <button class="button" onclick="homeLoginClick()">Log In</button>
    </div>
</div>

<div id="id01" class="modal">
    <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
    <form class="modal-content" action="process.jsp">
        <div class="container">
            <h1>Register</h1>
            <p>Please fill in this form to create an account.</p>
            <br />

            <label for="name"><b>Name</b></label>
            <label>
                <input type="text" placeholder="Enter name" name="name" required>
            </label>

            <label for="username"><b>Username</b></label>
            <label>
                <input type="text" placeholder="Enter User name" name="username" required >
            </label>

            <label for="email"><b>Email</b></label>
            <label>
                <input type="email" placeholder="Enter Email" name="email" required >
            </label>

            <label for="phone"><b>Phone</b></label>
            <label>
                <input type="tel" placeholder="Enter Phone" name="phone" required >
            </label>

            <label for="psw"><b>Password</b></label>
            <label>
                <input type="password" placeholder="Enter Password" name="psw" required >
            </label>

            <label for="psw-repeat"><b>Repeat Password</b></label>
            <label>
                <input type="password" placeholder="Repeat Password" name="psw-repeat" required>
            </label>

            <div class="clearfix">
                <button type="button" onclick="document.getElementById('id01').style.display='none'" class="button">Cancel</button>
                <button type="submit" class="button">Sign Up</button>
            </div>
        </div>
    </form>
</div>

<div id="id02" class="modal">
    <span onclick="document.getElementById('id02').style.display='none'" class="close" title="Close Modal">&times;</span>
    <form class="modal-content" action="login.jsp">
        <div class="container">
            <h1>Login</h1>
            <br />

            <label for="username"><b>Username</b></label>
            <label>
                <input type="text" placeholder="Enter User name" name="username" required>
            </label>

            <label for="psw"><b>Password</b></label>
            <label>
                <input type="password" placeholder="Enter Password" name="psw" required>
            </label>

            <div class="clearfix">
                <button type="submit" class="button">Login</button>
            </div>
        </div>
    </form>
</div>

<%--<button onclick="document.getElementById('id01').style.display='block'" style="width:auto;">Sign Up</button>--%>

<script>
    // Get the modal
    var modal = document.getElementById('id01');

    // When the user clicks anywhere outside of the modal, close it
    window.onclick = function(event) {
        if (event.target === modal) {
            modal.style.display = "none";
        }
    }

    function homeSignUpClick() {
        const signupFormElement = document.getElementById('id01');
        signupFormElement.style.display = 'block';
    }

    function homeLoginClick() {
        const loginElement = document.getElementById('id02');
        loginElement.style.display = 'block';
    }

</script>

</body>
</html>