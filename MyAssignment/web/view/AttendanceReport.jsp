<%-- 
    Document   : absentPercentage
    Created on : Oct 11, 2023, 12:22:16 PM
    Author     : phuc2
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
        /* Style the table */
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

            /* Style table cells */
            .table th, .table td {
                padding: 10px;
                text-align: center;
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
        <h2 style="text-align: center">FPT</h2>
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
        <h2 style="margin: 50px 0"> Take attendance/ ${requestScope.sessions[0].group.name}/ ${requestScope.sessions[0].group.subject.name}/ Attendance report</h2>
        <table class="table" id="id">
            
            <thead>
                <tr>
                    <th>No</th>
                    <th>Code</th>
                    <th>Name</th>
                    <th>Percentage</th>
                    <c:forEach items="${requestScope.sessions}" var="s">
                        <th>Slot${s.index}</th>
                    </c:forEach>
                
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${requestScope.students}" var="st">
                    <c:set var="i" value="${i+1}"/>
                    <tr>
                        <td>${i}</td>
                        <td>${st.id}</td>
                        <td>${st.name}</td>
                        <c:if test="${requestScope.percent[i-1] > 20}">
                            <td style="color:red"><fmt:formatNumber value="${percent[i-1]}" pattern="0.00"/>%</td>
                        </c:if>
                        <c:if test="${requestScope.percent[i-1] eq 20}">
                            <td style="color:yellow"><fmt:formatNumber value="${percent[i-1]}" pattern="0.00"/>%</td>
                        </c:if>
                        <c:if test="${requestScope.percent[i-1] <20}">
                            <td style="color:green"><fmt:formatNumber value="${percent[i-1]}" pattern="0.00"/>%</td>
                        </c:if>
                        
                        <c:forEach items="${requestScope.attendances}" var="a">
                            <c:if test="${a.student.name eq st.name}">
                                <c:if test="${a.status}">
                                    <td style="color: green">${a.status?"attend":"absent"}</td>
                                </c:if>
                                <c:if test="${!a.status and requestScope.sessions[i-1].isAtt}">
                                    <td style="color: red">${a.status?"attend":"absent"}</td>
                                </c:if>
                                <c:if test="${!a.status and !requestScope.sessions[i-1].isAtt}">
                                    <td>-</td>
                                </c:if>
                            </c:if>
                        </c:forEach>
                        
                    </tr>
                </c:forEach>
                
                
            </tbody>
            
        </table>
    </div>
</body>
</html>
