<%-- 
    Document   : connect
    Created on : 2 Nov, 2018, 5:17:49 PM
    Author     : Sunil
--%>
<%@page import="java.sql.*"%>
        <%@page import="java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>hiii</title>
    </head>
    <body>
         <% String a=request.getParameter("b");
         int b=Integer.parseInt(a);
         
       %>
       <% session.setAttribute("nee1",a);%>
       <%!
           Connection conn=null;
           Statement st=null;
           ResultSet rs=null;
           int num;
       %>
        <% try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1522:ORCL","neeta","b1");
            st = conn.createStatement();
            String nam="select b_id from bank where b_id='"+b+"'";
            ResultSet rs=st.executeQuery(nam);
            if(rs.next())
            
         
{
   response.sendRedirect("open.jsp");
         }
else {
                response.sendRedirect("wrong.jsp");
}

}//end of try
catch(Exception e)
{
out.println(e);
}
conn.close();
%>
    </body>
</html>
