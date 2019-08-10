<%-- 
    Document   : display
    Created on : 30 Nov, 2018, 9:43:08 PM
    Author     : Sunil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body><center>
          <%@ page import="java.sql.*"%>
		<%@ page import="java.util.*"%>
                <%
			try {
				Class.forName("oracle.jdbc.driver.OracleDriver");

    Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1522:ORCL","neeta","b1");
				try{
				String updatequery = "delete from account where acc_no=?";
				PreparedStatement ps = con.prepareStatement(updatequery);
				int n =Integer.parseInt(request.getParameter("E2"));
				ps.setInt(1, n);
				String selectSQL = "SELECT * FROM acc_details WHERE acc_no=?";
			    PreparedStatement s1=con.prepareStatement(selectSQL);
			    s1.setInt(1, n);
			    ResultSet rs =s1.executeQuery();
                int count=0;
			    while (rs.next()) {

				int did = rs.getInt("acc_no");
				String name = rs.getString("name");
                               /* String addr = rs.getString("address");
				String contact = rs.getString("contact");
                                String gen = rs.getString("email");
                                String bg = rs.getString("dob");*/
				out.println("ACCOUNT NUMBER : " + did);
				out.println("<br>");
                                out.println("NAME : " + name);
				out.println("<br>");
                               /* out.println("ADDRESS : " + addr);
				out.println("<br>");
				out.println("CONTACT : " + contact);
				out.println("<br>");
                                out.println("EMAIL : " + gen);
				out.println("<br>");
				out.println("DATE-OF-BIRTH : " + bg);
				out.println("<br>");
				*/
				count++;
			}
			    ps.execute();
			    if(count!=0)
			    	out.println("You deleted the account.");
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
			
			   <p> Go to home </p>
        <form action="open.jsp">
           <input style="font-size: 100%" type="submit" value="BACK"/> <br><br><br>
        </form>
    </center>
    </body>
</html>
