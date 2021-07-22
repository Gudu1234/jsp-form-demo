<%@ page import="bean.Login" %>

<%
    String uname = request.getParameter("username");
    String pass = request.getParameter("psw");

    boolean status = Login.validate(uname, pass);

    if(status) {
        javax.swing.JOptionPane.showMessageDialog(null, "You are successfully Logged in.");
        response.sendRedirect("resume.jsp?username="+uname);
    } else {
        javax.swing.JOptionPane.showMessageDialog(null, "Invalid username or password.");
        response.sendRedirect("index.jsp");
    }
%>
