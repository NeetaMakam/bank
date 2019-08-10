<%-- 
    Document   : info
    Created on : 28 Sep, 2018, 7:57:55 PM
    Author     : Sunil
--%>
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
            h2{font-style: oblique}
        </style>
    </head>
    <body><%
        
String A=request.getParameter("E");
    %>
<% session.setAttribute("nee",A);%>
        
        <%
  try{
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1522:ORCL","neeta","b1");
Statement st = conn.createStatement();
ResultSet rs= st.executeQuery("select a.*,s.* from account a , acc_details s where a.acc_no=s.acc_no and a.acc_no='"+A+"'");
  if(rs.next()) {%>
           <center> 
        <h1><font size="8" >ACCOUNT DETAILS </font><hr></h1>
         <img src="h.jpg" height="400" width="400" style="float: left">
         <img src="B1.jpg" height="400" width="400" style="float: right">
         <h2><table>
            <tr> <td>ACCOUNT NUMBER: </td> <td><%=rs.getString("acc_no") %></td></tr>
            <tr> <td> BRANCH_ID:</td><td><%=rs.getString("b_id") %></td></tr>
           <tr> <td> NAME : </td> <td><%=rs.getString("name") %></td></tr>
           <tr> <td> MOBILE NUMBER:</td> <td><%=rs.getString("ph_no") %></td></tr>
           <tr> <td> EMAIL ID:</td> <td><%=rs.getString("email") %></td></tr>
            <tr> <td>DATE-OF-BIRTH:</td> <td><%=rs.getString("dob") %></td></tr>
           <tr> <td> ADDRESS:</td> <td> <%=rs.getString("address") %></td></tr>
           <tr> <td>TYPE OF ACCOUNT :</td> <td><%=rs.getString("acc_type") %></td></tr>
           <tr> <td>BALANCE :</td> <td><%=rs.getString("balance") %></td></tr>
           </h2><br></table>
            <br>
           <form action="credit.jsp">
            <br> <input style="font-size: 100%" type="submit" value="DEPOSIT" ></form><br>
        <form action="debit.jsp">
                <input style="font-size: 100%" type="submit" value="WITHDRAWAL"></form>
                 <br> <form action="update.jsp">To update account details:
                <input style="font-size: 100%" type="submit" value="UPDATE"></form>
                <%
}
else {%>
<h1> enter valid account number</h1><br><br>
<form action="account.jsp">
         <input style="font-size: 100%" type="submit" value="BACK"/>
         </form>
<%}
conn.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
<br>
<a href="open.jsp">HOME</a>
         </center>
</body>
</html>
