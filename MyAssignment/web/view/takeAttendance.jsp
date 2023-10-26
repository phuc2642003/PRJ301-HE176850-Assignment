<%-- 
    Document   : takeAttendance
    Created on : Oct 11, 2023, 12:21:47 PM
    Author     : phuc2
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
            background-color: #ccc; /* Màu xám */
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
        /* Apply basic styling to the table */
           .table {
               width: 100%;
               border-collapse: collapse;
           }

           /* Style the table caption */
           .caption {
               font-weight: bold;
               text-align: center;
               background-color: #f2f2f2;
               padding: 10px;
           }

           /* Style the table header (thead) */
           .table thead {
               background-color: #333;
               color: #fff;
           }

           .table th {
               padding: 10px;
           }

           /* Style table rows (tbody) */
           .table tbody tr {
               border-bottom: 1px solid #ddd;
           }

           /* Style alternating rows for better readability */
           .table tbody tr:nth-child(even) {
               background-color: #f2f2f2;
           }

           /* Center align text in table cells */
           .table td {
               text-align: center;
               padding: 10px;
           }

           /* Style the comment input box */
           #comment-box {
               width: 100%;
               padding: 5px;
               border: 1px solid #ccc;
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
            <li>Home</li>
            <br>
            <li>Weekly timetable</li>
            <br>
            <li>Class management</li>
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
                <img style="border-radius: 50%" width="100px" src="../img/333656871_922232512296780_115887774450775164_n.jpg">
                <p>Account's name</p>
            </div>
        </div>
        
        <hr>
        <h2 style="margin: 50px 0"> Take attendance/ ${requestScope.ses.group.name}/ ${requestScope.ses.group.subject.name}/Session no ${requestScope.ses.index}</h2>
        <table class="table" id="id">
            <thead>
                <tr>
                <th>No</th>
                <th>Image</th>
                <th>Code</th>
                <th>Name</th>
                <th>Take attendance</th>
                <th>Comment</th>
            </tr>
            </thead>
            <tbody>
                <c:forEach items="${requestScope.atts}" var="a">
                    <c:set var="i" value="${i+1}"/>
                    <tr>
                        <td>${i}</td>
                        <td>
                            <center>
                                <img src="" style="height:146px;width:111px;border-width:0px;">
                            </center>
                        </td>
                        <td>${a.student.id}</td>
                        <td>${a.student.name}
                            <input type="hidden" name="stuid" value="${a.student.id}"/>
                        </td>
                        <td><input name="Status${i}" type="radio"
                                   <c:if test="${a.status}">
                                       checked="checked"
                                   </c:if>
                                   value="attend" />Attend
                            <input name="Status${i}" type="radio" 
                                   <c:if test="${!a.status}">
                                       checked="checked"
                                   </c:if>
                                   value="absent" />Absent</td>
                        <td>
                            <input type="text" value="${a.description}" name="description${a.student.id}" >
                        </td>
                    </tr>
                </c:forEach>
                
            </tbody>
            
        </table>
    </div>
</body>
</html>
