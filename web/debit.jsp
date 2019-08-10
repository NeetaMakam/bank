<%-- 
    Document   : debit
    Created on : 28 Sep, 2018, 8:05:02 PM
    Author     : Sunil
--%>
<%@page import="java.lang.Math.*"%>
<%@page import="java.sql.*"%>
        <%@page import="java.util.*"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>  h1{color: black;} 
            h1{ font-style: italic}
             body,html {
    height: 100%;
    margin: 0%;
}
body { background-image:url("1.jpg");
       height:100% ; 
        background-position: center;
        background-repeat: no-repeat;
        background-size: cover;}

        </style>
    </head>
    <body><form action="newjsp1.jsp">

    <center><br><br>
         <p>acc_no:<% String N= (String)session.getAttribute("nee");%><%=N%></p>
        <h1>ENTER AMOUNT TO WITHDRAWAL :
            <br><br><input type ="textbox" name="W" style="font-size:20pt" style="height: 500px" placeholder="enter amount in rupees" size="30" value="" required></h1><br><br>
        <input style="font-size: 180%" type="submit" value="UPDATE BALANCE"/>
    </center></form>
</body>
</html>
