<%-- 
    Document   : index
    Created on : 16 Feb, 2024, 11:20:22 PM
    Author     : vilva
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Forms</title>
        
        <link rel="stylesheet" type="text/css" href="./css/style.css">
        <link rel="stylesheet" type="text/css" href="./css/bootstrap.min.css">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">
        
    </head>

    <body>
        <nav class="navbar bg-light">
            <h2 class="navbar-brand ms-4">
                <a>JSP & DATABASE<span>.</span></a>
            </h2>
        </nav>
        <div class="container" style="height: 100%; width: 500px; font-size: 14px; margin: 7% auto">
            <h5 class="text-center m-4">REGISTER FORM</h5>
            <form name="userfrom" action="register" method="post">
                <label class="form-label">Name</label><br>
                <input type="text" placeholder="first name" name="name" class="form-control mb-3" required></input>
                <label class="form-label">Email</label><br>
                <input type="email" required placeholder="e-mail address" name="mail" class="form-control mb-3" required></input>
                <label class="form-label">Phone no</label><br>
                <input type="text" required placeholder="mobile no" name="phone" class="form-control mb-3" required></input>
                <label class="form-label">password</label><br>
                <input type="password" required placeholder="password" name="pass" class="form-control mb-3" required></input>
                <br>
                <input type="submit" value="submit" class="btn btn-primary w-100"><br>
                <p class="mt-4"><a href='login.jsp' class="link-primary">Get logged in</a></p>
            </form>
        </div>
    <footer style="height: 20px; margin-bottom: 0;">
        <hr>
        <p class="ms-4">copyright&copy;codevilva</p>
    </footer>
    </body>
</html>
