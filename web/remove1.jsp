<%-- 
    Document   : remove1
    Created on : 30 Nov, 2018, 10:12:28 PM
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
         <br>
        <h1><font face="ink free" size="8" >FIN-SER BANK </font><hr></h1>
         <img src="bank2.jpg" height="450" width="450" style="float: left">
        <img src="Jenis-Bank1.jpg" height="500" width="500" style="float: right">
        <br><br>
          <%@ page import="java.sql.*"%>
		<%@ page import="java.util.*"%>
              <%
			try {
				Class.forName("oracle.jdbc.driver.OracleDriver");

    Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1522:ORCL","neeta","b1");
				try{
				String updatequery = "delete from bank where b_id=?";
				PreparedStatement ps = con.prepareStatement(updatequery);
				int n =Integer.parseInt(request.getParameter("n1"));
				ps.setInt(1, n);
				String selectSQL = "SELECT * FROM bank WHERE b_id=?";
			    PreparedStatement s1=con.prepareStatement(selectSQL);
			    s1.setInt(1, n);
			    ResultSet rs =s1.executeQuery();
                int count=0;
			    while (rs.next()) {

				int did = rs.getInt("b_id");
				String name = rs.getString("b_name");
                               	out.println("BRANCH ID : " + did);
				out.println("<br>");
                                out.println("BRANCH NAME : " + name);
				out.println("<br>");		
				count++;
			}
			    ps.execute();
			    if(count!=0)
			    	out.println("You deleted a tuple.");
			    else 
			    	out.println("Invalid input.");
				}catch(SQLException s)
				{
					out.println(s);
				}
				con.close();
			} catch (SQLException e) {
				out.println("Got an exception");
				out.println(e.getMessage());
		%>
		

		<%
			 }
		catch (Exception s) {
			out.println("Got an exception");
}%>
 <p> If you want to delete again </p> 
<form action="remove.jsp">
    <input style="font-size: 100%" type="submit" value="DELETE"/></form>
        <p> Go to delete home </p>
        <form action="first.jsp">
           <input style="font-size: 100%" type="submit" value="BACK"/> <br><br><br>
        </form>
    </center>
    </body>
</html>
