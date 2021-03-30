<%-- 
    Document   : logout
    Created on : Dec 7, 2017, 9:19:27 AM
    Author     : kunal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    session.invalidate();
    response.sendRedirect("login.jsp");
%>
