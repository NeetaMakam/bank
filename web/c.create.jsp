<%-- 
    Document   : c.create
    Created on : 6 Nov, 2018, 4:52:09 PM
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
    </head>
    <body>
    <center><br><br><br>
        
       <%!
Connection conn=null;
Statement st=null;
%>
    <%
		try {
                   // conn.setAutoCommit(false);
			 Class.forName("oracle.jdbc.driver.OracleDriver");

conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1522:ORCL","neeta","b1");
			String updatequery = "insert into acc_details values(?,?,?,?,?,?,?)";
			PreparedStatement ps = conn.prepareStatement(updatequery);
			String n =request.getParameter("n");
			String us = request.getParameter("m");
                        long u=Long.parseLong(us);
			String v =  request.getParameter("e");
                        String a =  request.getParameter("a");
                        String b =  request.getParameter("o");
                        String c =  request.getParameter("bal");
                        int e=Integer.parseInt(c);
                        String d =  request.getParameter("acc");
                        int f=Integer.parseInt(d);
			ps.setString(1, n);
			ps.setLong(2, u);
			ps.setString(3, v);
                        ps.setString(4, a);
                        ps.setString(5, b);
                        ps.setInt(6, e);
                        ps.setInt(7, f);
			if((request.getParameter("n") == null || request.getParameter("n").isEmpty())||
					(request.getParameter("m") == null || request.getParameter("m").isEmpty())||
					 (request.getParameter("e") ==null || request.getParameter("e").isEmpty())||
                                (request.getParameter("a") == null || request.getParameter("a").isEmpty())||
                                (request.getParameter("o") == null || request.getParameter("o").isEmpty())||
                                (request.getParameter("bal") == null || request.getParameter("bal").isEmpty())||
                                (request.getParameter("acc") == null || request.getParameter("acc").isEmpty()))
				out.println("Fill the details completely!");
			else
				{
				ps.executeUpdate();
                                
			    out.println("Your account is created.");
			    out.println("<BR>");
                            }
                        //conn.commit();
                        conn.close();
		} catch (Exception e) {
                    out.println(e);
                }
	%>
       
        <h3>To go back to options </h3>
        <form action="open.jsp">
            <input style="font-size: 100%" type="submit" value="HOME"/></form>
    </center>
    </body>
</html>
