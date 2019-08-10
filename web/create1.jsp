<%-- 
    Document   : create1
    Created on : 8 Nov, 2018, 11:24:36 AM
    Author     : Sunil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <center>
        <% String N= (String)session.getAttribute("nee1");%>
        <form action="create.jsp">
             <h1><font size="8" face="italic" >CREATE ACCOUNT </font><hr></h1>
                <img src="create.jpg" height="350" width="350" style="float: left">
                <h3><table><br><br><br><br>
                <tr>
                    <td>BRANCH-ID: </td>
                     <td><%=N%></td>
                 </tr><br>
                 <tr> <td> TYPE OF ACCOUNT :</td>
        <td><select name="account" size="1">
            <option value="current account" size="30"><b>CURRENT ACCOUNT</b></option>
        <option value="savings account"size="30">SAVINGS ACCOUNT</option>
                <option value="FD account"size="30">FD ACCOUNT</option>
            </select></td>
                 </tr>
                </h3>  
                </table> <br><br>   <input style="font-size: 100%" type="submit" value="SUBMIT"/>    </form>

    </center>
    </body>
</html>
