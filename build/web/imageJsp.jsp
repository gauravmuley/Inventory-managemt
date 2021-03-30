<%-- 
    Document   : imageJsp
    Created on : Oct 3, 2017, 4:30:35 PM
    Author     : Tilaksingh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form  method="post" enctype="multipart/form-data" action="ImageServlet">
        <!--<input type="text" id="imgInp" name="A" required="required" class="form-control" data-parsley-id="1497">
       -->
       <input type="file" id="imgInp" name="image" required="required" class="form-control" data-parsley-id="1497">
        <input type="submit" value="image">
        </form>
    </body>
</html>
