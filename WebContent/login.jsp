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
<%@page import="java.io.*" %>        
<%@ page import ="java.sql.*" %>
<%
    String username = request.getParameter("username");    
    String password = request.getParameter("password");    
    String department = request.getParameter("department");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://192.168.0.100:3306/cancer",
            "root", "toor");
    Statement st = con.createStatement();
    ResultSet rs;
    //if (day > 30 && (month == 4 || month == 6 || month == 9 || month == 11))
    	/*
    	SELECT column1, column2, columnN 
FROM table_name
WHERE [condition1] AND [condition2]...AND [conditionN];
    	
    	*/
    rs = st.executeQuery("select user_name, pass_word, department from staffs where user_name='" + username + "' and pass_word='" + password + "' and department='" + department + "'");
    if (rs.next()) {
        session.setAttribute("user_name", username);
        session.setAttribute("pass_word", password);
        session.setAttribute("department", department);
        //out.println("welcome " + userid);
        //out.println("<a href='logout.jsp'>Log out</a>");
        response.sendRedirect("test.jsp");
    } else {
        out.println("Invalid Username or Password <a href='index.jsp'>try again</a>");
    }
%>