
<%@page import="bean.Register"%>
<%@ page import="bean.User" %>
<jsp:useBean id="obj" class="bean.User"/>

<jsp:setProperty property="*" name="obj"/>

<%
    User object = new User();
    String username = request.getParameter("username");
    String email = request.getParameter("email");
    String name = request.getParameter("name");
    String pass = request.getParameter("psw");
    String phone = request.getParameter("phone");
    object.setUusername(username);
    object.setUemail(email);
    object.setUname(name);
    object.setUpass(pass);
    object.setUphone(phone);
    int status=Register.register(object);

    if(status>0) {
        javax.swing.JOptionPane.showMessageDialog(null, "You are successfully registered.");
        response.sendRedirect("index.jsp");
    }
%>
