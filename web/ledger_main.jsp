<%-- 
    Document   : ledger_main
    Created on : May 1, 2018, 12:46:37 PM
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
 <jsp:include page="templates/leader2.jsp"/>  
 <jsp:include page="templates/footer.html"/>  
<%
}else
    {
        
    response.sendRedirect("/login.jsp");
     }
   %>