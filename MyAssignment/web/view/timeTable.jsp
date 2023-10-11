<%-- 
    Document   : timeTable
    Created on : Oct 11, 2023, 12:24:52 PM
    Author     : phuc2
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <style>
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

    </style>
</head>
<body>
    <table>
        <thead>
            <tr>
                <th rowspan="2">
                    <span class="auto-style1"><strong>Year</strong></span>
                    <select name="ctl00$mainContent$drpYear" onchange="javascript:setTimeout('__doPostBack(\'ctl00$mainContent$drpYear\',\'\')', 0)" id="ctl00_mainContent_drpYear">
                        <option value="2020">2020</option>
                        <option value="2021">2021</option>
                        <option value="2022">2022</option>
                        <option selected="selected" value="2023">2023</option>
                        <option value="2024">2024</option>
                    </select>
                <br>
                Week
                <select name="ctl00$mainContent$drpSelectWeek" onchange="javascript:setTimeout('__doPostBack(\'ctl00$mainContent$drpSelectWeek\',\'\')', 0)" id="ctl00_mainContent_drpSelectWeek">

                    <option selected="selected" value="40">02/10 To 08/10</option>
                    <option value="41">09/10 To 15/10</option>

                </select>
                </th>
                <th align="center">Mon</th><th align="center">Tue</th><th align="center">Wed</th><th align="center">Thu</th><th align="center">Fri</th><th align="center">Sat</th><th align="center">Sun</th>
            </tr>
        
            <tr>
                <th align="center">02/10</th><th align="center">03/10</th><th align="center">04/10</th><th align="center">05/10</th><th align="center">06/10</th><th align="center">07/10</th><th align="center">08/10</th>
            </tr>
        </thead>
            <tbody>
                
                <tr>
                    <td>Slot 1 </td>
                    <td>
                        <a href="">SE1763</a>
                       
                        <p>
                            PRJ301
                            at- DE202
                        </p>
                        
                        
                        
                    </td>
                    <td>-</td>
                    <td>-</td>
                    <td>-</td>
                    <td>-</td>
                    <td>-</td>
                    <td>-</td>
                </tr>
                <tr>
                    <td>Slot 2 </td>
                    <td>-</td>
                    <td>-</td>
                    <td>-</td>
                    <td>-</td>
                    <td>-</td>
                    <td>-</td>
                    <td>-</td>
                </tr>
                <tr>
                    <td>Slot 3 </td>
                    <td>-</td>
                    <td>-</td>
                    <td>-</td>
                    <td>-</td>
                    <td>-</td>
                    <td>-</td>
                    <td>-</td>
                </tr>
                <tr>
                    <td>Slot 4 </td>
                    <td>-</td>
                    <td>-</td>
                    <td>-</td>
                    <td>-</td>
                    <td>-</td>
                    <td>-</td>
                    <td>-</td>
                </tr>
                <tr>
                    <td>Slot 5 </td>
                    <td>-</td>
                    <td>-</td>
                    <td>-</td>
                    <td>-</td>
                    <td>-</td>
                    <td>-</td>
                    <td>-</td>
                </tr>
                <tr>
                    <td>Slot 6 </td>
                    <td>-</td>
                    <td>-</td>
                    <td>-</td>
                    <td>-</td>
                    <td>-</td>
                    <td>-</td>
                    <td>-</td>
                </tr>
                    
                    
            </tbody>
    </table>
</body>
</html>
