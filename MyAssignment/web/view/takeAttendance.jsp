<%-- 
    Document   : takeAttendance
    Created on : Oct 11, 2023, 12:21:47 PM
    Author     : phuc2
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
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

        </style>
            
    </head>
    <body>
        <table class="table" id="id">
            <caption>...SE1763/PRJ301/Session No1 </caption>
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
                <tr>
                    <td>1</td>
                    <td>
                        <center>
                            <img src="" style="height:146px;width:111px;border-width:0px;">
                        </center>
                    </td>
                    <td>HE176000</td>
                    <td>Lê Văn A</td>
                    <td>
                        <input name="Status" type="radio" value="" />Attend
                        <input name="Status" type="radio" value="" />Absent
                    </td>
                    <td>
                         <input type="text" id="comment-box" >
                    </td>
                </tr>
                <tr>
                    <td>2</td>
                    <td>
                        <center>
                            <img src="" style="height:146px;width:111px;border-width:0px;">
                        </center>
                    </td>
                    <td>HE176001</td>
                    <td>Lê Văn B</td>
                    <td>
                        <input name="Status2" type="radio" value="" />Attend
                        <input name="Status2" type="radio" value="" />Absent
                    </td>
                    <td>
                         <input type="text" id="comment-box">
                    </td>
                </tr>
                <tr>
                    <td>3</td>
                    <td>
                        <center>
                            <img src="" style="height:146px;width:111px;border-width:0px;">
                        </center>
                    </td>
                    <td>HE176003</td>
                    <td>Lê Văn C</td>
                    <td>
                        <input name="Status3" type="radio" value="" />Attend
                        <input name="Status3" type="radio" value="" />Absent
                    </td>
                    <td>
                         <input type="text" id="comment-box" >
                    </td>
                </tr>
                <tr>
                    <td>4</td>
                    <td>
                        <center>
                            <img src="" style="height:146px;width:111px;border-width:0px;">
                        </center>
                    </td>
                    <td>HE176004</td>
                    <td>Lê Văn D</td>
                    <td>
                        <input name="Status4" type="radio" value="" />Attend
                        <input name="Status4" type="radio" value="" />Absent
                    </td>
                    <td>
                         <input type="text" id="comment-box" >
                    </td>
                </tr>
            </tbody>
            
        </table>
    </body>
</html>
