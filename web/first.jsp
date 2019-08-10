<%-- 
    Document   : first
    Created on : 5 Nov, 2018, 2:01:57 PM
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
            h2{color: black;}
            h2{font-style: oblique}</style>
    </head>
    <body><form action="connect.jsp" method="POST">
       <center>
       
        <br>
        <h1><font face="ink free" size="8" >FIN-SER BANK </font><hr></h1>
         <img src="bank2.jpg" height="450" width="450" style="float: left">
        <img src="Jenis-Bank1.jpg" height="500" width="500" style="float: right">
        <br><br>
        <h2>BRANCH ID : 
            <select name="b" size="1">
            <option value="1111" size="30"><b>1111-banshankari</b></option>
        <option value="2222"size="30">2222-v.v.puram</option>
                <option value="3333"size="30">3333-shankarpuram</option>
                 <option value="4444"size="30">4444-jaynagar</option>
                  <option value="5555"size="30">5555-chikpet</option>
                   <option value="6666"size="30">6666-chamrajpet</option>
                    <option value="7777"size="30">7777-j.p.nagar</option>
                     <option value="8888"size="30">8888-nagarbavi</option>
                      <option value="9999"size="30">9999-vijaynagar</option>
                       <option value="1010"size="30">1010-rajajinagar</option>
            </select>
            <br><br>
            <input style="font-size: 130%" type="submit" value="SUBMIT"/>
            </form> </h2>
    </center>
    </body>
</html>

         