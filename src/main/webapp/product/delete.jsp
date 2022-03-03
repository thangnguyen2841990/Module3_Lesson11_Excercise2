<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: nguye
  Date: 3/3/2022
  Time: 5:05 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Delete product</title>
</head>
<body>
<h1>Delete Customer</h1>
<p>
    <a href="/products">Back to product list</a>
</p>
<form method="post">
    <h3>Are you sure?</h3>
    <fieldset>
        <legend>Customer Information</legend>
        <table>
            <tr>
                <td>Name:</td>
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
            <tr>
                <td><input type="submit" value="Delete product"></td>
                <td><a href="/products">Back to product list</a></td>
            </tr>
        </table>
    </fieldset>
</form>


</body>
</html>
