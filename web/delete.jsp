<%-- 
    Document   : delete
    Created on : 30 Nov, 2018, 9:13:43 PM
    Author     : Sunil
--%>

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
body { background-image:url("cash.jpg");
       height:100% ; 
        background-position: center;
        background-repeat: no-repeat;
        background-size: cover;}

        </style>
    </head>
    <body>
    <center><br><br>
        <form action="display.jsp">
        <h1>ENTER ACCOUNT NUMBER :
            <br> <br><input type ="textbox" name="E2" pattern="[0-9]{9}" style="font-size:20pt" style="height: 500px" maxlength="9" placeholder="enter 9-digit account number" size="30" value=""></h1>
        <br>       
         <input style="font-size: 150%" type="submit" value="DELETE"/>
        </form><br><br><br><br><br><br>
        <a href="open.jsp">HOME</a>
    </center></body>
</html>
