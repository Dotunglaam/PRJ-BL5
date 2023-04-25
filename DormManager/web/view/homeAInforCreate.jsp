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
    </head>
    <body>
        <form action="inforcreate" method="POST">
            <table border="0.5">
                <tbody>
                   
                    <tr>
                        <td>user_id</td>
                        <td><input type="text" name="id" /> <br/></td>
                    </tr>
                    <tr>
                        <td>room_id</td>
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
