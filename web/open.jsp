<%-- 
    Document   : open
    Created on : 27 Sep, 2018, 3:58:02 PM
    Author     : Sunil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style> 
            h1{ font-style: italic}
            </style>
    </head>
    <body>
        
    <center>
        <br>
        <h1><font face="ink free" size="8" >CHOOSE YOUR OPTION<hr></font></h1> 
        <img src="bank.jpg" height="400" width="400" style="float: right">
        <img src="money.jpg" height="400" width="400" style="float: left">
        <form action="create1.jsp">
            <br><br><input style="font-size: 180%" type="submit" value="CREATE ACCOUNT"/></form>
            <br><br><br><br>
            <form action="account.jsp">
                <input style="font-size: 180%" type="submit" value="VIEW EXISTING ACCOUNT"/></form>
                <br><br><br><br>
                <form action="loan.jsp">
                    <input style="font-size: 180%" type="submit" value="LOAN"/></form><br><br><br>
                   
                        <form action="delete.jsp">
                <input style="font-size: 180%" type="submit" value="DELETE EXISTING ACCOUNT"/></form>
                <br><br><br><br>
                <form action="first.jsp">
            <input style="font-size: 100%" type="submit" value="HOME"/></form>
    </center>
    </body>
</html>
