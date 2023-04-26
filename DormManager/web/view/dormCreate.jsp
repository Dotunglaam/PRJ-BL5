<%-- 
    Document   : createDorm
    Created on : Mar 12, 2023, 4:15:42 PM
    Author     : ADMIN
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Create Dorm</title>
        <link href="css/createDorm.css" rel="stylesheet" type="text/css"/>
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
        <form action="dormcreate" method="POST">
            <h1>Create Dorm</h1>
            <table border="0.5">
                <tbody>
                    <tr>
                        <td>Name of dorm: </td>
                        <td><input type="text" name="name"/></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td class="error">${error}</td>
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
