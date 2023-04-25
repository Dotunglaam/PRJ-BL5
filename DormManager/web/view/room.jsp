<%-- 
    Document   : room
    Created on : Mar 15, 2023, 5:18:53 AM
    Author     : ADMIN
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Room</title>

        <style>
            .roomcreate{
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
            function roomdelete(room_id)
            {
                var a = confirm("are you sure?");
                if (a)
                {
                    window.location.href = 'roomdelete?rid=' + room_id;
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
                        <h1>List Room</h1>
                        <div class="table-responsive">          
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>room_id</th>
                                        <th>name</th>
                                        <th>current_people</th>
                                        <th>price</th>
                                        <th>dormitory_id</th>
                                        <th>room_type</th>
                                        <th>floor</th>
                                        <th>status</th>
                                    </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${room}" var="r">
                                    <tr>
                                        <td>${r.room_id}</td>
                                        <td>${r.name}</td>
                                        <td>${r.current_people}</td>
                                        <td>${r.price}</td>
                                        <td>${r.dormitories.dormitory_id}</td>
                                        <td>${r.room_type}</td>
                                        <td>${r.floor}</td>
                                        <td>${r.status}</td>
                                        <td>   
                                            <a class="roomcreate" href="roomupdate?rid=${r.room_id}">update</a>
                                            <a class="roomcreate" href="#" onclick="roomdelete(${r.room_id})">delete</a>
                                        </td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>                    
                    <c:set var="page" value="${requestScope.page}"/>
                    <div class="pagination">
                        <c:forEach begin="${1}" end="${requestScope.num}" var="i">
                            <a class="${i==page?"active":""}" href="room?page=${i}">${i}</a> 
                        </c:forEach>
                    </div></br>  
                    <a class="roomcreate" href="roomcreate">Create</a>     
                </div>
                <div class="col-sm-2 sidenav">
                </div>
            </div>
        </div>
    </body>
</html>
