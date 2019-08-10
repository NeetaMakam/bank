<%-- 
    Document   : newjsp
    Created on : 10 Nov, 2018, 5:42:09 PM
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
    <body><center><% String N= (String)session.getAttribute("nee");%>
         <p>acc_no:<%=N%></p>
         <p>amt:<%=request.getParameter("D")%></p>
         
        <%!
Connection conn=null;
Statement st=null;
%>
<%
try{Class.forName("oracle.jdbc.driver.OracleDriver");
conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1522:ORCL","neeta","b1");
			String updatequery = "insert into transaction(acc_no,t_type,amount) values(?,?,?)";
			PreparedStatement ps = conn.prepareStatement(updatequery);
			
                      
			String us ="credit";
                       String v =  request.getParameter("D");
                        int e=Integer.parseInt(v);
                        ps.setString(1, N);
			ps.setString(2, us);
			ps.setInt(3, e);
                      	ps.executeUpdate();
			    out.println("Your transaction is successful.");out.println("<BR>");out.println("<BR>");
                            PreparedStatement s1=conn.prepareStatement("select balance from acc_details where acc_no='"+N+"'");
                          ResultSet rs=s1.executeQuery();
                          
                         while(rs.next())
                         {out.println("The balance before transaction= "+rs.getInt(1));
                         out.println("<BR>");out.println("<BR>");
                            int x=rs.getInt("balance");
                            int y=x+e;
                            out.println(" The updated balance after transaction= "+y);
                         String updatequery1 = "update acc_details set balance='"+y+"' where acc_no='"+N+"'";
			PreparedStatement ps1 = conn.prepareStatement(updatequery1);
                      //  int xy=Integer.parseInt(request.getParameter("y"));
                       // ps.setInt(1,xy);
                       ps1.executeUpdate();
                             out.println("<BR>");out.println("<BR>");
                         }
			conn.close();
		} catch (Exception ex) {
                    out.println(ex);
                }
%><br><br>
        <form action="account.jsp">
         <input style="font-size: 150%" type="submit" value="BACK"/>
         </form>
    </center></body>
</html>
