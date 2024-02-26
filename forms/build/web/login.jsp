<%-- 
    Document   : login
    Created on : 17 Feb, 2024, 12:46:52 AM
    Author     : vilva
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>


        <link rel="stylesheet" type="text/css" href="./css/style.css">
        <link rel="stylesheet" type="text/css" href="./css/bootstrap.min.css">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    </head>
    <% if (request.getParameter("mailid") != null) {%>
    <script>alert("Email already exist");</script>
    <%}
    %>
    <% if (request.getParameter("Failed") != null) {%>
    <script>alert("Login failed")</script>
    <%}
    %>
    <body>
        <nav class="navbar bg-light">
            <h2 class="navbar-brand ms-4">
                <a>JSP & DATABASE<span>.</span></a>
            </h2>
        </nav>
        <div class="container" style="height: 100%; width: 500px; font-size: 14px; margin: 12% auto">
            <h5 class="text-center m-4">LOGIN FORM</h5>
            <form name="loginfrom" action="userlog" method="post">

                <label class="form-label">Email</label><br>
                <input type="text" required placeholder="e-mail address" name="mail" class="form-control mb-3" required>
                <label class="form-label">password</label><br>
                <input type="password" required placeholder="password" name="password" class="form-control mb-3" required>
                <br>
                <input type="submit" value="submit" class="btn btn-primary w-100"><br>
                <p class="mt-4"><a href='index.jsp' class="link-primary">Sign up</a></p>
            </form>
        </div>
        <footer>
            <hr>
            <p class="ms-4">copyright&copy;codevilva</p>
        </footer>
    </body>
</html>
