<%-- 
    Document   : timeTable
    Created on : Oct 11, 2023, 12:24:52 PM
    Author     : phuc2
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>TODO supply a title</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
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
            padding: 20px;
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

        /* Style for the selected option in the dropdown */
        select option[selected="selected"] {
            font-weight: bold;
            color: blue;
        }

        /* Style for the links in the table cells */
        a {
            text-decoration: none;
            color: blue;
        }

        /* Style for labels with the "label" class */
        .label {
            padding: 2px 5px;
            border-radius: 3px;
            font-size: 12px;
        }

        /* Style for the "label-warning" class */
        .label-warning {
            background-color: #f0ad4e;
            color: #fff;
        }

        /* Style for the "label-primary" class */
        .label-primary {
            background-color: #337ab7;
            color: #fff;
        }

        /* Style for the "label-success" class */
        .label-success {
            background-color: #5cb85c;
            color: #fff;
        }
        #header {
            display: flex;
            align-items: center; /* Căn giữa theo chiều dọc */
            justify-content: space-between; /* Căn cách hai phần tử */
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
        <h2 style="color : white; text-align: center">FPT</h2>
        <hr>
        <p style='text-align: center'>Lecture's displayName</p>
        <hr>
           
        <ul>
            <li><a href="home">Home</a></li>
            <br>
            <li>Weekly timetable</li>
            <br>
            <li><a href="timetable?id=${sessionScope.instructor.id}">Class management</a></li>
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
            <h2>Class management</h2>
            <div id="account">
                <img style="border-radius: 50%" width="100px" src="img/333656871_922232512296780_115887774450775164_n.jpg">
                <p>Account's name</p>
            </div>
        </div>
        
        <hr>
        <h2> Take attendance </h2>
        <table>
            <thead>
                <tr>
                    <th rowspan="2">
                        <span class="auto-style1"><strong>Year</strong></span>
                        <select>
                            <option value="2020">2020</option>
                            <option value="2021">2021</option>
                            <option value="2022">2022</option>
                            <option selected="selected" value="2023">2023</option>
                            <option value="2024">2024</option>
                        </select>
                    <br>
                    Week
                    <select>

                        <option selected="selected" value="40">02/10 To 08/10</option>
                        <option value="41">09/10 To 15/10</option>

                    </select>
                    </th>
                    <th align="center">Mon</th>
                    <th align="center">Tue</th>
                    <th align="center">Wed</th>
                    <th align="center">Thu</th>
                    <th align="center">Fri</th>
                    <th align="center">Sat</th>
                    <th align="center">Sun</th>
                </tr>

                <tr>
                    <c:forEach items="${requestScope.dates}" var="d">
                        <th align="center">
                            ${d}
                        </th>
                    </c:forEach>


                </tr>
            </thead>
            <tbody>
                
                <c:forEach items="${requestScope.slots}" var="s" varStatus="loop">
                    <tr>
                        <td>Slot ${s.id}<br>${s.description}</td>
                        <c:forEach items="${requestScope.dates}" var="d">
                            <td>
                                <c:forEach items="${requestScope.sessions}" var="k">
                                    <c:if test="${k.date eq d and k.timeSlot.id eq s.id}">
                                        <a href="takeattendance?id=${k.id}">
                                            ${k.group.name}<br>${k.group.subject.name}<br>${k.room.id}
                                            <c:if test="${k.isAtt}">
                                                (attended)
                                            </c:if>
                                            <c:if test="${!k.isAtt}">
                                                (not yet)
                                            </c:if>
                                        </a>
                                    </c:if>
                                </c:forEach>
                            </td>
                        </c:forEach>
                    </tr>
                </c:forEach>
                    
                    
            </tbody>
        </table>
    </div>
</body>
</html>
