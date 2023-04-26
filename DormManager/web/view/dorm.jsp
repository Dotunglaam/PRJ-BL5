<%-- 
    Document   : dorm
    Created on : Mar 11, 2023, 4:48:09 PM
    Author     : ADMIN
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Dorm</title>
        
        <style>
            .dormcreate{
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
            function deleteDorm(dormitory_id)
            {
                var a = confirm("are you sure?");
                if (a)
                {
                    window.location.href = 'dormdelete?did=' + dormitory_id;
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
                        <br/><br/>
                        <h1>Dorm</h1>
                        <br/><br/>
                        <div class="table-responsive">          
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>ID</th>
                                        <th>Name</th>
                                    </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${dorm}" var="d">
                                    <tr>
                                        <td>${d.dormitory_id}</td>
                                        <td>${d.name}</td>
                                        <td>   
                                            <a class="dormcreate" href="dormupdate?did=${d.dormitory_id}">update</a>
                                            <a class="dormcreate" href="#" onclick="deleteDorm(${d.dormitory_id})">delete</a>
                                        </td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>

                    <c:set var="page" value="${requestScope.page}"/>
                    <div class="pagination">
                        <c:forEach begin="${1}" end="${requestScope.num}" var="i">
                            <a class="${i==page?"active":""}" href="dorm?page=${i}">${i}</a> 
                        </c:forEach>
                    </div> </br>
                    <a class="dormcreate" href="dormcreate">Create</a>
                </div>

                <div class="col-sm-2 sidenav">
                </div>
            </div>
        </div>
    </body>
</html>
