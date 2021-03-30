<%-- 
    Document   : indexjsp2
    Created on : Apr 16, 2018, 11:29:37 AM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<% try{
   Boolean sesname =(Boolean)session.getAttribute("session_name");
    String uname =(String)session.getAttribute("uname");
 if(!sesname)
    {
    System.out.println(""+uname);
%>
<jsp:include page="templates/header.jsp"/>  
<jsp:include page="templates/index.jsp"/>  
<jsp:include page="templates/footer.html"/>  
<%
}
else{
    response.sendRedirect("/login.jsp");
    }
}
catch(Exception e){
out.println("Exception Error "+e);

}
%>