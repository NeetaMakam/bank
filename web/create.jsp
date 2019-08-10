<%-- 
    Document   : create
    Created on : 27 Sep, 2018, 4:36:32 PM
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
        h3{font-style: oblique} </style>
    </head>
    <body>
    <center> 
               
                
            <% String N= (String)session.getAttribute("nee1");%>
       <%!
          Connection conn=null;
          Statement st=null; %>
      
       <%
        try{
           Class.forName("oracle.jdbc.driver.OracleDriver");
            conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1522:ORCL","neeta","b1");
               st = conn.createStatement();
               String sql1="select acc_no from account";
               ResultSet rs=st.executeQuery(sql1);
              // int start=999999999;
               //long end=10000000000L;
               Random rand=new Random();
            int t=rand.nextInt(1000000000)+1;
          //  String n= Integer.parseInt(t);
               while(rs.next())
               {
                   int num=rs.getInt("acc_no");
                   if(num==t)
                   {
                       Random rand1=new Random();
                       int s=rand1.nextInt(1000000000)+1;
                      String updatequery = "insert into account values(?,?,?)";
			PreparedStatement ps = conn.prepareStatement(updatequery);
			String m =  request.getParameter("account");
			ps.setInt(1, s);
			ps.setString(2, N);
			ps.setString(3, m);
                        ps.executeUpdate();
			   %>
                       <p>your account number is :<%=s%></p>
                         <%}
else
{
String updatequery = "insert into account values(?,?,?)";
//String us = request.getParameter("b1");
                        //int b=Integer.parseInt(us);
			PreparedStatement ps = conn.prepareStatement(updatequery);
			//String n =request.getParameter("t");
			
			String m =  request.getParameter("account");
			ps.setInt(1, t);
			ps.setString(2, N);
			ps.setString(3, m);
                        ps.executeUpdate();
			   %>
<b><p>your account number is :<%=t%></p>
<%}
                   }
               
        
            }//end of try
       catch(Exception e)
        {
         // out.println(e);
          }
        conn.close();
  %>
  <form action="c.create.jsp">
              <h1><font size="8" face="italic" >ACCOUNT DETAILS</font><hr></h1>
                <img src="create.jpg" height="350" width="350" style="float: left">              
  <h3> <table align="center"><br>
                       
                <tr>
                     <td>NAME: </td>
                     <td><input type ="textbox" name="n" size="25" value="" required></td>
                 </tr><br>
                 <tr> 
                     <td>MOBILE NUMBER :</td>
                     <td><input type ="textbox" maxlength="10" placeholder="enter 10 digit number" required name="m" size="25" value=""></td>
                 </tr>
                 <tr>
                     <td>DATE OF BIRTH : </td>
                     <td><input type ="textbox" placeholder="dd-mon-yyyy"  name="o" size="25" value="" required="enter date"></td>
                 </tr>
                 <tr>
                     <td>ADDRESS :</td>
                     <td><input type ="textbox" name="a" size="50" value="" required></td>
                 </tr>
                 <tr>
                     <td>EMAIL ID: </td>
                     <td><input type ="textbox" name="e" size="25" value="" required></td>
                 </tr>
                 <tr><td>ACCOUNT:</td>
                     <td><input type ="textbox" name="acc" maxlength="9" placeholder="enter the given account number" size="25" value="" required></td>
                 </tr>
                 <tr><td>BALANCE:</td>
                     <td><input type ="textbox" name="bal" placeholder="min balance of Rs.500" size="25" value="" required></td>
                 </tr>
             </table></h3>
              <input style="font-size: 150%" type="submit" value="CREATE"/></form>
         </center>
      </body>
</html>
