<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: nguye
  Date: 3/3/2022
  Time: 3:59 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create new product</title>
</head>
<style>
    .message{
        color: green;
    }
</style>
<body>
<h1>Create new Product</h1>
<p>
    <c:if test="${requestScope['message'] != null}">
        <span class="message">${requestScope['message']}</span>
    </c:if>
</p>
<p>
    <a href="/products">Back to product list</a>
</p>
<form method="post">
    <fieldset>
        <legend>Product information</legend>
    <table>
        <tr>
            <td>Name</td>
            <td><input type="text" id="name" name="name" ></td>
        </tr>
        <tr>
            <td>Price</td>
            <td><input type="text" id="price" name="price"></td>
        </tr>
        <tr>
            <td>Amount</td>
            <td><input type="text" id="amount" name="amount"></td>
        </tr>
        <tr>
            <td>Description</td>
            <td><input type="text" id="description" name="description"></td>
        </tr>
        <tr>
            <td></td>
            <td><input type="submit" value="Create new product"></td>
        </tr>
    </table>

    </fieldset>
</form>
</body>
</html>
