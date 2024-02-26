<%-- 
    Document   : logut
    Created on : 26 Feb, 2024, 9:06:50 PM
    Author     : vilva
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <body>
    <script>window.alert(Logout);</script>
        <% session.invalidate();%>
        <jsp:forward page="index.jsp"/>
    </body>
</html>
