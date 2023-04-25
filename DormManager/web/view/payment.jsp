<%-- 
    Document   : Payment
    Created on : Mar 12, 2023, 10:00:06 PM
    Author     : ADMIN
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Payment</title>
        <style>
            .paymentcreate{
                border: 1px solid gray;
                border-radius: 3px;
                background-color: #4CAF50;
                padding: 3px 6px;
                font-size: 20px;
                color: white;
            }
            h1{
                text-align: center;
            }
            table{
                border-collapse: collapse
            }

            .pagination {
                display: inline-block;
            }
            .pagination a {
                color: black;
                font-size: 22px;
                float: left;
                padding: 8px 16px;
                text-decoration: none;
            }
            .pagination a.active {
                background-color: #4CAF50;
                color: white;
            }
            .pagination a:hover:not(.active) {
                background-color: chocolate;
            }
        </style>
        <script>
            function paymentdelete(payment_id)
            {
                var a = confirm("are you sure?");
                if (a)
                {
                    window.location.href = 'paymentdelete?pid=' + payment_id;
                }
            }
        </script>
    </head>
    <body>
        <div><jsp:include page="menu.jsp"></jsp:include></div>
            <div class="container-fluid text-center">    
                <div class="row content">
                    <div class="col-sm-2 sidenav">

                    </div>
                    <div class="col-sm-8 text-left"> 
                        <h1>Payment</h1>
                        <div class="table-responsive">          
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>Payment_id</th>
                                        <th>User_id</th>
                                        <th>Room_id</th>
                                        <th>Amount</th>
                                        <th>Payment_date</th>
                                        <th>Status</th>
                                    </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${payments}" var="p">
                                    <tr>
                                        <td>${p.payment_id}</td>
                                        <td>${p.users.user_id}</td>
                                        <td>${p.rooms.room_id}</td>
                                        <td>${p.amount}</td>
                                        <td>${p.payment_date}</td>
                                        <td>${p.status}</td>
                                        <td>   
                                            <a class="paymentcreate" href="paymentupdate?pid=${p.payment_id}">update</a>
                                            <a class="paymentcreate" href="#" onclick="paymentdelete(${p.payment_id})">delete</a>
                                        </td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>
                    <c:set var="page" value="${requestScope.page}"/>
                    <div class="pagination">
                        <c:forEach begin="${1}" end="${requestScope.num}" var="i">
                            <a class="${i==page?"active":""}" href="payment?page=${i}">${i}</a> 
                        </c:forEach>
                    </div> </br>
                    <a class="paymentcreate" href="paymentcreate">Create</a>
                </div>

                <div class="col-sm-2 sidenav">
                </div>
            </div>
        </div>
    </body>
</html>
