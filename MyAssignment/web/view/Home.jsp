<%-- 
    Document   : Home
    Created on : Oct 28, 2023, 5:11:45 PM
    Author     : phuc2
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style>
            body {
                margin: 0;
                padding: 0;
                display: flex;
            }

            #menu-container {
                position: fixed;
                background-color: #FFA500;
                width: 20%;
                height: 100%;
                padding: 20px;  
                box-sizing: border-box;
                overflow-y: auto; /* Cho phép menu cuộn khi nội dung dài hơn */
            }

            #content {
                width: 80%;
               
                box-sizing: border-box;
                margin-left: 20%; /* Tạo khoảng cách giữa menu và nội dung chính */
            }

            ul {
                list-style-type: none;
                padding: 0;
            }

            li {
                margin: 5px 0;
                padding: 10px; /* Thêm đệm để tạo khoảng cách giữa các mục menu */
                background-color: #f2f2f2; /* Màu nền của mục menu */
                border-radius: 5px; /* Bo tròn góc của mục menu */
                cursor: pointer; /* Biến con trỏ thành bàn tay khi di chuột qua */
                transition: background-color 0.3s; /* Hiệu ứng chuyển đổi màu nền */
            }

            li:hover {
                background-color: #ddd; /* Màu nền khi di chuột qua */
            }
                    /* Style for the table */
            table {
                border-collapse: collapse;
                width: 100%;
            }

            /* Style for table headers in the first row */
            th {
                text-align: center;
                background-color: #f2f2f2;
            }

            /* Style for table headers in the second row */
            th:nth-child(n+2) {
                text-align: center;
                background-color: #f2f2f2;
            }

            /* Style for table cells */
            td {
                text-align: center;
                border: 1px solid #ddd;
                padding: 8px;
            }
            #header {
                display: flex;
                align-items: center; /* Căn giữa theo chiều dọc */
                justify-content: space-between; /* Căn cách hai phần tử */
                padding:20px;
                border-radius: 10px;
                box-shadow: 0px 0px 10px 0px rgba(0, 0, 0, 0.1);
            }
            #account{
                display: flex;
                margin: 15px;
                cursor: pointer; /* Biến con trỏ thành bàn tay khi di chuột qua */
                transition: background-color 0.3s;
            }
            
        </style>
    </head>
    <body>
        <div id="menu-container">
            <img src="img/og-image.jpg" width="200px" alt="alt"/>
            <hr>
            
            <ul>
                <li><a href="home">Home</a></li>
                <br>
                <li>
                    <a href="timetable?id=${sessionScope.instructor.id}">Weekly timetable</a></li>
                <br>
                <li><a href="report"> Attendance Report</a></li>
                <br>
                <li>Mail</li>
                <br>
                <li>Settings</li>
                <br>
                <li>Others</li>
                <!-- Thêm các mục menu khác tại đây -->
            </ul>
        </div>
        <div id="content">
            <div id="header">
                <h2>FPT University Academic Portal</h2>
                <div id="account">
                    <c:if test="${not empty sessionScope.account}">
                        ${sessionScope.account.displayname}(<a href="logout">Logout</a>) 
                    </c:if>
                    <c:if test="${empty sessionScope.account}">
                        You are not logged in (<a href="login">Login</a>)
                    </c:if>
                </div>
            </div>
           
            <div id="main-content">
                <img src="img/DH-FPT-4359-1612093890.jpg">
            </div>
        </div>
    </body>
</html>
