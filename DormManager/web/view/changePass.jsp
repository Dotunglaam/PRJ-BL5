<%-- 
    Document   : changePass
    Created on : Mar 22, 2023, 1:41:59 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Change Pass</h1>
        <form action="change" method="POST">
            Old password: <input type="password" name="opass"/> </br>
            <input type="hidden" name="user" value="${sessionScope.User.username}"/>
            New Password:<input type="password" name="pass"/> </br>
            Confirm Password:<input type="password" name="rpass"/> </br>
            <input type="submit" name="Save"/>
        </form>
            <div>
                ${requestScope.error}
            </div>
    </body>
</html>
