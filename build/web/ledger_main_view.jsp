<%-- 
    Document   : ledger_main_view
    Created on : May 28, 2018, 2:51:41 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Boolean sesname =(Boolean)session.getAttribute("session_name");
    String uname =(String)session.getAttribute("uname");
    if(!sesname){
    System.out.println(""+uname);
%>
 <jsp:include page="templates/header.jsp" />  
 <jsp:include page="templates/view_leader.jsp"/>  
 <jsp:include page="templates/footer.html"/>  
<%
}else
    {
        
    response.sendRedirect("/login.jsp");
     }
   %>