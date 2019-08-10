<%-- 
    Document   : success1
    Created on : 6 Nov, 2018, 6:47:45 PM
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
        <img src="loan.jpg" height="500" width="500" style="float: right">
        <h1>LOAN SUCCESSFUL</h1>
    <% String j=request.getParameter("type");%>  
       <%!
Connection conn=null;
Statement st=null;
%>
<%
        try{
           Class.forName("oracle.jdbc.driver.OracleDriver");
            conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1522:ORCL","neeta","b1");
               st = conn.createStatement();
               String sql1="select loan_no from loan";
               ResultSet rs=st.executeQuery(sql1);
              // int start=999999999;
               //long end=10000000000L;
              Random rand=new Random();
            int t=rand.nextInt(1000)+1;
          //  String n= Integer.parseInt(t);
               while(rs.next())
               {
                    int num=rs.getInt("loan_no");
                    
                   if(num==t)
                   {
                      Random rand1=new Random();
                       int s=rand1.nextInt(1000)+1;
                      String updatequery = "insert into loan values(?,?,?,?,?,?)";
			PreparedStatement ps = conn.prepareStatement(updatequery);
			String e =request.getParameter("s");
                        int n=Integer.parseInt(e);
			String us = request.getParameter("account1");
                        int b=Integer.parseInt(us);
			String f =  request.getParameter("amount1");
                        int m=Integer.parseInt(f);
                        String g =  request.getParameter("period1");
                        int a=Integer.parseInt(g);
                        int c =12;  
                        String d = "education loan";
			ps.setInt(1, s);
			ps.setInt(2, b);
			ps.setInt(3, m);
                        ps.setInt(4, a);
                        ps.setInt(5, c);
                        ps.setString(6, d);
                        ps.executeUpdate();
			   %>
                       <p>your loan number is :<%=s%></p>
                         <%}
else
{
 String query = "insert into loan values(?,?,?,?,?,?)";
			PreparedStatement ps = conn.prepareStatement(query);
			//String e =request.getParameter("t");
                        //int n=Integer.parseInt(e);
			String us = request.getParameter("account1");
                        int b=Integer.parseInt(us);
			String f =  request.getParameter("amount1");
                        int m=Integer.parseInt(f);
                        String g =  request.getParameter("period1");
                        int a=Integer.parseInt(g);
                        int c =12;  
                        String d = "education loan";
			ps.setInt(1, t);
			ps.setInt(2, b);
			ps.setInt(3, m);
                        ps.setInt(4, a);
                        ps.setInt(5, c);
                        ps.setString(6, d);
                        ps.executeUpdate();
			   %>
<p>your loan number is :<%=t%></p>
<%}
                   }
               
        
            }//end of try
       catch(Exception e)
        {
          //out.println(e);
          }
        conn.close();
  %>
   <h3>You have selected : Education loan <br>
       The type of education chosen is: <%=j%></h3><br>
  <form action="loan.jsp">
         <input style="font-size: 150%" type="submit" value="BACK"/>
         </form>

    </center>
        </body>
</html>
