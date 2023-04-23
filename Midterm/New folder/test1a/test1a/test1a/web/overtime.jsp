<head>
    <title>Overtime Pay Result</title>
</head>
<body>
<h1>Overtime Pay Calculation</h1>
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
    <tr>
        <td width="300">Overtime Pay Amount (over 40 hours): </td>
        <td>${pay.getOvertimepay()}</td>
    </tr>
</table>