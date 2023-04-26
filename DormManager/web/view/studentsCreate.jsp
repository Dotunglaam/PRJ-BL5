<%-- 
    Document   : studentsCreate
    Created on : Mar 22, 2023, 2:53:41 PM
    Author     : ADMIN
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
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
    <body>
        <form action="studentcreate" method="POST">
            <h1>Create Student</h1>
            <table border="0.5">
                <tbody>
                    <tr>
                        <td>Username </td>
                        <td><input type="text" name="Username"/></td>
                    </tr>
                    <tr>
                        <td>password</td>
                        <td><input type="text" name="password"/></td>
                    </tr>
                    <tr>
                        <td>Full_name</td>
                        <td><input type="text" name="Full_name"/></td>
                    </tr>
                    <tr>
                        <td>Role_id</td>
                        <td><input type="text" name="Role_id"/></td>
                    </tr>
                    <tr>
                        <td>Gender</td>
                        <td><input type="radio" name="gender" 
                                   <c:if test="${user.s.gender}">
                                       checked="checked" 
                                   </c:if>
                                   value="male"/> Male 
                            <input type="radio" name="gender"
                                   <c:if test="${!user.s.gender}">
                                       checked="checked" 
                                   </c:if>
                                   value="female"/> Female <br/>
                        </td>
                    </tr>
                    <tr>
                        <td>Dob</td>
                        <td><input type="date" name="Dob" required=""/></td>
                    </tr>
                    <tr>
                        <td>Phone</td>
                        <td><input type="text" name="Phone"/></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><input type="submit" value="Create"></td>
                    </tr>
                </tbody>
            </table>
            <br/>
        </form>
    </body>
</html>
