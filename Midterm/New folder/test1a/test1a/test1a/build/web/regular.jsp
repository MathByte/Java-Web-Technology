<html>
    <head>
        <title>Regular Pay Result</title>
    </head>
    <body>
        <h1>Regular Pay Calculation</h1>
        <table width="400" border="1">
            <tr>
                <td width="300">Employee Name: </td>
                <td>${pay.employeename}</td>
            </tr>
            <tr>
                <td width="300">Hours Worked This Week: </td>
                <td>${pay.hours}</td>
            </tr>
            <tr>
                <td width="300">Gross Pay Amount: </td>
                <td>${pay.getGrosspay()}</td>
            </tr>
        </table>
    </body>
</html>