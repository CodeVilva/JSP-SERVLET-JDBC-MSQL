
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="DBconnection.SQLconnection" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>UserDetails</title>
        <link rel="stylesheet" type="text/css" href="./css/style.css">
        <link rel="stylesheet" type="text/css" href="./css/bootstrap.min.css">
        <link rel="script" type="text/javascript" href="./js/bootstrap.bundle.min.js">

        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">
    </head>
    <body>
        <nav class="navbar bg-light">
            <h2 class="navbar-brand ms-4">
                <a>JSP & DATABASE<span>.</span></a>
            </h2>
        </nav>
        <h1 class="text-primary text-center m-4">Check User Details</h1>

        <div class="row g-4">
            <center>
                <table id="table" class="ms-4 me-4">
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Mail</th>
                        <th>Phone no.</th>
                    </tr>
                    <%
                        Connection conn = SQLconnection.getconnection();
                        Statement st = conn.createStatement();
                        try {
                            ResultSet rs = st.executeQuery("SELECT * FROM forms ");
                            while (rs.next()) {
                    %>
                    <tr>
                        <td><%=rs.getString("id")%></td>
                        <td><%=rs.getString("name")%></td>
                        <td><%=rs.getString("mail")%></td>
                        <td><%=rs.getString("phone")%></td>
                    </tr>
                    <%  }
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    %>
                </table>
            </center>
                <a href="logout.jsp" class="text-primary text-center">Logut Session</a>
        </div>




    </body>
</html>
