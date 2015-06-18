<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>UCP</title>
        <style>
.cp {
    /*  background-image: url(pics/black.jpg); 
    */
    
    
    margin: 80px;
    padding: 15px;
    width: 500px;
    height: 500px;
    border: 8px solid green;
    background-color: #ffffff;
   
} 
body {
    background-color: #d0e4fe;
}
h1 {
    color: green;
    text-align: center;
}

p {
    font-family: "Times New Roman";
    font-size: 20px;
}



</style>
        
<%@ page import ="java.sql.*" %>
<%
    String username = request.getParameter("username");    
    String password = request.getParameter("password");    
    String lastname = request.getParameter("lastname");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cancer",
            "root", "");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from staffs where User_Name='" + username + "' and pass_Word='" + password + "'");
    if (rs.next()) {
        session.setAttribute("User_Name", username);
        session.setAttribute("last_name", lastname);
        //out.println("welcome " + userid);
        //out.println("<a href='logout.jsp'>Log out</a>");
        response.sendRedirect("test.jsp");
    } else {
        out.println("Invalid password <a href='index.htm'>try again</a>");
    }
%>