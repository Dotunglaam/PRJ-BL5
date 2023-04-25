<%-- 
    Document   : students
    Created on : Mar 16, 2023, 2:54:46 PM
    Author     : ADMIN
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>List students</title>
        <style>
            .studentcreate{
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
            function studentdelete(user_id)
            {
                var a = confirm("are you sure?");
                if (a)
                {
                    window.location.href = 'studentdelete?sid=' + user_id;
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
                        <h1>List Student</h1>
                        <div class="table-responsive">  
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>User_id</th>
                                        <th>Username</th>
                                        <th>Full_name</th>
                                        <th>Role_id</th>
                                        <th>Gender</th>
                                        <th>Dob</th>
                                        <th>Phone</th>
                                    </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${students}" var="s">
                                    <tr>
                                        <td>${s.getUser_id()}</td>
                                        <td>${s.getUsername()}</td>
                                        <td>${s.getFull_name()}</td>
                                        <td>${s.getRole_id()}</td>
                                        <td><c:if test="${s.isGender() == true }">Male</c:if>
                                            <c:if test="${s.isGender() == false }">Female</c:if>
                                            </td>
                                            <td>${s.getDob()}</td>
                                        <td>${s.getPhone()}</td>
                                        <td>   
                                            <a class="studentcreate" href="studentupdate?sid=${s.user_id}">update</a>
                                            <a class="studentcreate" href="#" onclick="studentdelete(${s.user_id})">delete</a>
                                        </td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                        </div>      
                        
                        <c:set var="page" value="${requestScope.page}"/>
                        <div class="pagination">
                            <c:forEach begin="${1}" end="${requestScope.num}" var="i">
                                <a class="${i==page?"active":""}" href="student?page=${i}">${i}</a> 
                            </c:forEach>
                        </div></br>
                        <a class="studentcreate" href="studentcreate">Create</a>
                    </div>
        
        <div class="col-sm-2 sidenav">
        </div>
    </body>
</html>
