<%@page import="java.text.SimpleDateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.util.Date" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Uganda Cancer Portal</title>
        <style>
.cp {
    /*  background-image: url(pics/black.jpg); 
    */
    
    position: relative;
    left: 250px;
    margin: 0px;
    padding: 15px;
    width: 700px;
    height: 550px;
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

.ihsu_logo{
    padding-left: 150px;
}
.uci_logo{
    padding-left: 30px;
}


</style>
        
        
    </head>

    <body>
        <div class="cp" align="center">
            
        <table align="center">
            <tr><td>
                    
                    <img class="uci_logo" src="pics/uci_logo.png" height="100" width="100">
                    <img class="ihsu_logo" src="pics/ihsu_logo.png" height="80" width="200">
                            </td></tr>
            <tr> <td>
                    <h1>        <strong>Uganda Cancer Portal</strong> </h1>
                            </td> </tr>           
        </table>
        <!-- ******************************************************* -->
        
        
        <table align="center">
            <tr><td>               </td>  </tr>
            <tr ><td>

                    <p>Welcome to Uganda Cancer Portal </p> 
                    <strong>Please Login</strong> to begin your work today!
             </td></tr>            
        </table> 
         <!-- ******************************************************* -->
            <br/><br>
            <form action="login.jsp" method="post" id="login" >
            <table align="center">
            <tr><td>
                    Username:<Input type="text" maxlength="15" name="username">
              </td>            
                <td>
                   Password:<Input type="password" maxlength="15" name="password">
                 </td>
                <td>
                   Department:<select  name="Department">
                              <option value="Screening">Screening </option>
                              <option value="Consultation"> Consultation</option>
                              <option value="Laboratory">Laboratory </option>
                              <option value="Pharmacy"> Pharmacy</option>
                              <option value="Paliative Care">Paliative Care </option>
                                </select>
       
                </td>
            </tr>
            <br><br>
            
            
        </table>
                <tbody>
            <tr> <td>
                    <p align="center">     <input type="submit" value="Login" > </p>
                </td>
            </tr>
            </tbody>          
                       
      </form>
            <hr size="3" color="grey" />
            <p align="left">
            <%
   Date dNow = new Date( );
   SimpleDateFormat ft = 
   new SimpleDateFormat ("E dd.MM.yyyy ' &nbsp;&nbsp;TIME' hh:mm:ss ");
   out.print( "<h3 align=\"right\">" + ft.format(dNow) + "</h2>");
%>
            </p>
        </div>
            
    </body>
</html>
