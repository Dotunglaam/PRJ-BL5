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
        <style>
            table{
                margin: auto;
            }
            body{

                justify-content: center;
                font-size: 25px;
            }
            input{
                height: 30px;
                font-size: 20px;
            }
            h1{
                text-align: center;
                margin-top: 15%;
            }
        </style>
    </head>
    <body>
        <h1>Change Pass</h1>
        <form action="change" method="POST">
            <table border="0.7">
                <tbody>
                    <tr>
                        <td>Old password:</td>
                        <td><input type="password" name="opass"/> <input type="hidden" name="user" value="${sessionScope.User.username}"/></td>
                    </tr>
                    <tr>
                        <td>New Password:</td>
                        <td><input type="password" name="pass"/> </td>
                    </tr>
                    <tr>
                        <td>Confirm Password:</td>
                        <td><input type="password" name="rpass"/> </br></td>
                    </tr>
                    <tr>
                        <td><input type="submit" name="Save"/></td>
                        <td></td>
                    </tr>
                </tbody>
            </table>
                        
        </form>
        <div>
            ${requestScope.error}
        </div>
    </body>
</html>
