<%-- 
    Document   : success
    Created on : 8 Oct, 2018, 12:34:30 PM
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
    <% String n=request.getParameter("type");%>  
        
<%!
Connection conn=null;
Statement st=null;
%>
<%
    //conn.setAutoCommit(false);
        try{
           Class.forName("oracle.jdbc.driver.OracleDriver");
            conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1522:ORCL","neeta","b1");
               st = conn.createStatement();
               String sql1="select loan_no from loan";
               ResultSet rs=st.executeQuery(sql1);
              // int start=999999999;
               //long end=10000000000L;
          //  String n= Integer.parseInt(t);
               while(rs.next())
               {
                   
              int num=rs.getInt("loan_no");
                    Random rand=new Random();
                   
            int t=rand.nextInt(1000)+1;
                   if(num==t)
                   {
                       
                       Random rand1=new Random();
                       int s=rand1.nextInt(1000)+1;
                        String updatequery = "insert into loan values(?,?,?,?,?,?)";
			PreparedStatement ps = conn.prepareStatement(updatequery);
			//String e =request.getParameter("s");
                        //int n=Integer.parseInt(e);
			String us = request.getParameter("account");
                        int x=Integer.parseInt(us);
			String f =  request.getParameter("amount");
                        int y=Integer.parseInt(f);
                        String g =  request.getParameter("period");
                        int z=Integer.parseInt(g);
                        int w =10;  
                        String u = "vehicle loan";
			ps.setInt(1, s);
			ps.setInt(2, x);
			ps.setInt(3, y);
                        ps.setInt(4, z);
                        ps.setInt(5, w);
                        ps.setString(6, u);
                        ps.executeUpdate();
			   %>
                       <p>your loan number is :<%=s%></p>
                         <%break;}
else
{ 
 String query = "insert into loan values(?,?,?,?,?,?)";
			PreparedStatement ps = conn.prepareStatement(query);
			//String e =request.getParameter("t");
                        //int n=Integer.parseInt(e);
			String us = request.getParameter("account");
                        int x=Integer.parseInt(us);
			String f =  request.getParameter("amount");
                        int y=Integer.parseInt(f);
                        String g =  request.getParameter("period");
                        int z=Integer.parseInt(g);
                        int w =10;  
                        String v = "vehicle loan";
			ps.setInt(1, t);
			ps.setInt(2, x);
			ps.setInt(3, y);
                        ps.setInt(4, z);
                        ps.setInt(5, w);
                        ps.setString(6, v);
                        ps.executeUpdate();
			   %>
<b><p>your loan number is :<%=t%></p>
<% break;}
                   }
              // conn.commit();
        
            }//end of try
       catch(Exception e)
        {
          out.println(e);
/*if(conn!=null)
{
try{
System.err.println("transaction is rolled back");
conn.rollback();
}
catch(SQLException ex)
{
System.err.println("rollback error"+ex);
}
}*/
          }
        conn.close();
  %>
  <h3>You have selected : Vehicle loan <br>
      The type of vehicle chosen is: <%=n%></h3><br>
  <form action="loan.jsp">
         <input style="font-size: 150%" type="submit" value="BACK"/>
         </form>

    </center>
</body>
</html>
