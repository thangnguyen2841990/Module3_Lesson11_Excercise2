<%--
  Created by IntelliJ IDEA.
  User: nguye
  Date: 3/3/2022
  Time: 5:35 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Find Product</title>
</head>
<body>
<h1>Find Product by name</h1>
<p><a href="/products">Back to product list</a></p>
<table>
    <tr>
        <td>Name</td>
        <td>${requestScope['product'].getName()}</td>
    </tr>
    <tr>
        <td>Price</td>
        <td>${requestScope['product'].getPrice()}</td>
    </tr>
    <tr>
        <td>Amount</td>
        <td>${requestScope['product'].getAmount()}</td>
    </tr>
    <tr>
        <td>Description</td>
        <td>${requestScope['product'].getDescription()}</td>
    </tr>
</table>
</body>
</html>
