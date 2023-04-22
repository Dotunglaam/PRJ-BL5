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
                        <td>IN_ID</td>
                        <td><input type="text" name="id" value="${in.in_id}"/> <br/></td>
                    </tr>
                    <tr>
                        <td>NAME</td>
                        <td><input type="text" name="name" value="${in.Users.full_name}"/> <br/></td>
                    </tr>
                    <tr>
                        <td>ROOM_NAME</td>
                        <td><input type="text" name="r_name" value="${in.Rooms.name}"/> <br/></td>
                    </tr>
                    <tr>
                        <td>FLOOR</td>
                        <td><input type="text" name="floor" value="${in.Rooms.floor}"/> <br/></td>
                    </tr>
                    <tr>
                        <td>PAYMENT_ID</td>
                        <td><input type="text" name="p_id" value="${in.Payments.payment_id}"/> <br/></td>
                    </tr>
                    <tr>
                        <td>Room registration date</td>
                        <td><input type="date" name="rrd" value="${in.room_registration_date}"/> <br/></td>
                    </tr>
                    <tr>
                        <td>Cancellation date</td>
                        <td><input type="date" name="cd" value="${in.cancellation_date}"/></td>
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
