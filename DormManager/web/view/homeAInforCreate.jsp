<%-- 
    Document   : homeAInforCreate
    Created on : Mar 22, 2023, 2:56:15 PM
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
        <form action="inforcreate" method="POST">
            <h1>Create Information</h1>
            <table border="0.5">
                <tbody>

                    <tr>
                        <td>User_id</td>
                        <td><input type="text" name="id" /> <br/></td>
                    </tr>
                    <tr>
                        <td>Room_id</td>
                        <td><input type="text" name="r_id" /> <br/></td>
                    </tr>
                    <tr>
                        <td>PAYMENT_ID</td>
                        <td><input type="text" name="p_id" /> <br/></td>
                    </tr>
                    <tr>
                        <td>Room registration date</td>
                        <td><input type="date" name="rrd" /> <br/></td>
                    </tr>
                    <tr>
                        <td>Cancellation date</td>
                        <td><input type="date" name="cd" /></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><input type="submit" value="Create"></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td class="error">${error}</td>
                    </tr>
                </tbody>
            </table>
            <br/>

        </form>
    </body>
</html>
