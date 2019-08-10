<%-- 
    Document   : udi.jsp
    Created on : 2 Dec, 2018, 12:33:28 PM
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
    <center><br><br>   <img src="h.jpg" height="400" width="400" style="float: left">
         <img src="B1.jpg" height="400" width="400" style="float: right">
        
          <%!
Connection con=null;
Statement st=null;
%><% String N= (String)session.getAttribute("nee");%>
 <%
		try {
			 Class.forName("oracle.jdbc.driver.OracleDriver");

con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1522:ORCL","neeta","b1");
			String updatequery = "update acc_details set address=?, ph_no=? where acc_no=?";
			PreparedStatement ps = con.prepareStatement(updatequery);
			//int n = Integer.parseInt(request.getParameter("z1"));
                        String addr = request.getParameter("z2");
			String contact = request.getParameter("z3");
			ps.setString(1, addr);
                        ps.setString(2, contact);
			ps.setString(3,N);
			String selectSQL = "SELECT * FROM acc_details WHERE acc_no = ?";
			PreparedStatement s1 = con.prepareStatement(selectSQL);
			s1.setString(1, N);
			ResultSet rs = s1.executeQuery();
            int count=0;
			while (rs.next()) {

				int bid = rs.getInt("acc_no");
				String addr1 = rs.getString("address");
				String contact1 = rs.getString("ph_no");
                                out.println("<BR>");
                                out.println("<BR>");
				out.println("<b>"+"ACCOUNT NUMBER: " + bid);
				out.println("<br>");
				out.println("<b>"+"ADDRESS : " + addr1);
				out.println("<br>");
				out.println("<b>"+"CONTACT : " + contact1);
				out.println("<br>");
				count++;
			}
			ps.executeUpdate();
			if(count!=0){
                            out.println("<br>");
		    	out.println("<b>"+"You updated this tuple ");
                        out.println("<BR>");
		    	String query2 = "select * from logtable";
				Statement s2=con.createStatement();
				ResultSet rs2=s2.executeQuery(query2);
				rs2.afterLast();
				if (rs2.previous()) {
				  out.println(rs2.getString(1));
	            
				}
			}
		    else 
		    	out.println("Invalid input.");
			con.close();
		} catch (Exception e) {
	%>
	

	<%
		}
	%>
         <p> Go to home </p>
        <form action="open.jsp">
           <input style="font-size: 100%" type="submit" value="BACK"/> <br><br><br>
        </form>
        </center>
    </body>
</html>
