<%-- 
    Document   : home
    Created on : Mar 9, 2023, 7:03:43 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Page</title>

        <style>
            .inforcreate{
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
            function infordelete(in_id)
            {
                var a = confirm("are you sure?");
                if (a)
                {
                    window.location.href = 'infordelete?inid=' + in_id;
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
                        <h1>Information</h1>
                        <div class="table-responsive">          
                            <table class="table">
                                <thead>
                                    <tr>

                                        <th>IN_ID</th>
                                        <th>NAME</th>
                                        <th>ROOM_NAME</th>
                                        <th>FLOOR</th>
                                        <th>PAYMENT_ID</th>
                                        <th>Room registration date</th>
                                        <th>Cancellation date</th>

                                    </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${data}" var="i">
                                    <tr>
                                        <td>${i.in_id}</td>
                                        <td>${i.getUsers().full_name}</td>
                                        <td>${i.getRooms().name}</td>
                                        <td>${i.getRooms().floor}</td>
                                        <td>${i.getPayments().payment_id}</td>
                                        <td>${i.room_registration_date}</td>
                                        <td>${i.cancellation_date}</td>
                                        <td>   
                                            <a class="inforcreate" href="inforupdate?inid=${i.in_id}">update</a>
                                            <a class="inforcreate" href="#" onclick="infordelete(${i.in_id})">delete</a>
                                        </td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>

                    <c:set var="page" value="${requestScope.page}"/>
                    <div class="pagination">
                        <c:forEach begin="${1}" end="${requestScope.num}" var="i">
                            <a class="${i==page?"active":""}" href="homea?page=${i}">${i}</a> 
                        </c:forEach>
                    </div> </br>
                    <a class="inforcreate" href="inforcreate">Create</a>
                    </div>
                    
                <div class="col-sm-2 sidenav">
                </div>
            </div>
        </div>
    </body>
</html>
