<%-- 
    Document   : State
    Created on : 4 Mar, 2019, 6:58:59 PM
    Author     : Umesh Sakhare
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
<!--        <h1>Hello World!</h1>-->
        <select id="fulname">
    <option>EMP_NAME</option>
    <%
               Connection con;
                PreparedStatement pst;
                ResultSet rs;
                    String CLIENTS_LIST=request.getParameter("CLIENTS_LIST");
                  //  out.println(cname);
        try{
                   
                                       Class.forName("com.mysql.jdbc.Driver");
                                        con = DriverManager.getConnection("jdbc:mysql://103.14.99.198:3306/manish_associated","root","9QT2{gZvm[Gx~b");
                                       String sql = "select  Full_Name from recruitment_table where CLIENTS_LIST='"+CLIENTS_LIST+"'";
                                       pst = con.prepareStatement(sql);
                                        rs=pst.executeQuery();
                                        while(rs.next())
                                        {
                                            
                                            %>
                                            <option><%=rs.getString("Full_Name")%></option>
                                           <%
                                        }
        }
        catch(Exception e)
        {
            out.println(e.getMessage());
        }
        %>
    </select>
    
    </body>
</html>
