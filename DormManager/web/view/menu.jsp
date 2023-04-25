<%-- 
    Document   : menu
    Created on : Mar 3, 2023, 9:57:02 PM
    Author     : ADMIN
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Menu</title>
        <!--        <link href="css/menu.css" rel="stylesheet" type="text/css"/>-->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <style>
            .img{
                height: 50px;
                margin-top: -13px;
            }
            .aa{
                text-align: right;
                font-size: 20px;
                padding-top: 12px;
            }
            .navbar-header a{
                margin-top: 9px;
                font-size: 30px;
            }
            .input-group{
                margin-top: 9px;
            }
            .header{
                margin: 0;
                padding: 0;
            }
            .header_ul{
                display: flex;
                list-style: none;
                justify-content: space-between;
                padding: 20px;

            }
            li{
                margin: 10px;
                font-size: 18px;

            }
            li a {
                text-decoration: none;
            }
            .menu{
                display: flex;
                list-style: none;
                justify-content: space-around;
            }
        </style>
    </head>
</head>
<body>
    <nav class="navbar navbar-inverse">
        <div class="container-fluid">
            <div class="navbar-header">
                <a class="navbar-brand" href="#"><img class="img" src="img/LogoOCD.png" alt="alt"/></a>
            </div>
            <div class="bb">
                <ul class="nav navbar-nav">
                    <c:if test="${sessionScope.User.role_id == 1}">
                        <li>
                            <a href="homea">Home</a>
                        </li>
                        <c:if test="${sessionScope.User.role_id == 1}">
                        <li>
                            <a href="homea">Hello Admin:  ${sessionScope.User.full_name}</a>
                        </li>
                        </c:if>        
                        <li>
                            <a href="student">Danh Sách Sinh Viên</a>
                        </li>
                        <li>
                            <a href="room">Danh sách phòng</a>
                        </li> 
                        <li>
                            <a href="payment">Hóa Đơn</a>
                        </li>
                        <li>
                            <a href="dorm">Danh sách Dormitories</a>
                        </li>
                    </c:if>   
                        
                    <c:if test="${sessionScope.User.role_id == 2}">
                        <li>
                            <a href="home">Home</a>
                        </li>    
                    </c:if>
                    <c:if test="${sessionScope.User.role_id == 2}">
                        <li>
                            <a href="home">Hello User:  ${sessionScope.User.full_name}</a>
                        </li>
                    </c:if> 
                        
                    <c:if test="${sessionScope.User.role_id == 2}">
                        <li>
                            <a href="change">Change Pass</a>
                        </li>        
                    </c:if>                               
                    
                                     
                </ul>

                <c:if test="${sessionScope.User.role_id == 1}">
                    <form class="navbar-form navbar-left" action="search">
                        <div class="input-group">
                            <input type="text" class="form-control" placeholder="Search" name="txt">
                            <div class="input-group-btn">
                                <button class="btn btn-default" type="submit">
                                    <i class="glyphicon glyphicon-search"></i>
                                </button>
                            </div>
                        </div>
                    </form>
                </c:if>
            </div>
            <div class="aa">
                <ul>
                    <c:if test="${sessionScope.User != null}">
                        <li>
                            <a href="logout">Logout</a>
                        </li>
                    </c:if>  
                </ul>
            </div>
        </div>
    </nav>
</div>
</body>
</html>
