<%-- 
    Document   : home
    Created on : Feb 9, 2023, 5:33:17 PM
    Author     : ADMIN
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
<!--        <link href="css/home.css" rel="stylesheet" type="text/css"/>-->
        <style>
            h1{
                text-align: center;
            }
            table{
                border-collapse: collapse
            }
            .table{
                font-size: 15px;
            }
        </style>
    </head>
    <body>
        <div><jsp:include page="menu.jsp"></jsp:include></div>
            <div class="container-fluid text-center">    
                <div class="row content">
                    <div class="col-sm-2 sidenav">

                    </div>
                    <div class="col-sm-8 text-left"> .
                        <br/><br/>
                        <h1>Infomation</h1>
                        <br/><br/>
                        <div class="table-responsive">          
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>ID</th>
                                        <th>Name_full</th>
                                        <th>username</th>
                                        <th>gender</th>
                                        <th>dob</th>
                                        <th>phone</th>
                                        <th>Room_name</th>
                                        <th>amount</th>
                                        <th>payment_date</th>

                                    </tr>
                                </thead>
                                <tbody>    

                                    <tr>    
                                        <td>${infors.users.user_id}</td>
                                    <td>${infors.users.full_name}</td>
                                    <td>${infors.users.username}</td>
                                    <td><c:if test="${infors.users.gender == true }">Male</c:if>
                                        <c:if test="${infors.users.gender == false }">Female</c:if>
                                        </td>
                                        <td>${infors.users.dob}</td>
                                    <td>${infors.users.phone}</td>
                                    <td>${infors.rooms.name}</td>
                                    <td>${infors.payments.amount}</td>
                                    <td>${infors.payments.payment_date}</td>
                                    <td><a href="update?sid=${infors.users.user_id}">update</a></td>

                                </tr>

                            </tbody>
                        </table>
                    </div>            
                    <div class="col-sm-2 sidenav">
                    </div>
                    </div>
                </div>
            </div>                        
    </body>
</html>
