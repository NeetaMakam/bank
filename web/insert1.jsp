<%-- 
    Document   : insert1
    Created on : 30 Nov, 2018, 10:25:31 PM
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
    <center> <br>
        <h1><font face="ink free" size="8" >FIN-SER BANK </font><hr></h1>
         <img src="bank2.jpg" height="450" width="450" style="float: left">
        <img src="Jenis-Bank1.jpg" height="500" width="500" style="float: right">
        <br><br>
         <%@page import="java.sql.*"%>
        <%@page import="java.util.*"%>

         <%!
Connection conn=null;
Statement st=null;
%>
    <%
		try {
			 Class.forName("oracle.jdbc.driver.OracleDriver");

conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1522:ORCL","neeta","b1");
			String updatequery = "insert into bank values(?,?)";
			PreparedStatement ps = conn.prepareStatement(updatequery);
			String n =request.getParameter("n2");
                        int x=Integer.parseInt(n);
			String us = request.getParameter("m2");
			ps.setInt(1, x);
			ps.setString(2, us);
			if((request.getParameter("n2") == null || request.getParameter("n2").isEmpty())||
					(request.getParameter("m2") == null || request.getParameter("m2").isEmpty()))
				out.println("Fill the details completely!");
			else
				{
				ps.executeUpdate();
			    out.println("You inserted a tuple.");
			    out.println("<BR>");
                              out.println("<BR>");
			    String query = "select * from bank";
			    Statement s = conn.createStatement();
			    ResultSet rs = s.executeQuery(query);
			    out.println("<b>"+"BRANCH_ID | BRANCH_NAME ");
				out.println("<BR>");
				out.println("=============================");
				out.println("<BR>");
				while (rs.next()) {
					out.println("<b>"+rs.getInt(1) + " | " + rs.getString(2) );
					out.println("<BR>");
				}
                                                             
				}
			conn.close();
		} catch (Exception e) {
                    out.println(e);
                }
	%>
        <br> <p> If you want to insert again </p> 
<form action="insert.jsp">
    <input style="font-size: 100%" type="submit" value="INSERT"/></form>
    <br>  <p> Go to  home </p>
        <form action="first.jsp">
           <input style="font-size: 100%" type="submit" value=BACK/> 
        </form>
    </center>
    </body>
</html>
