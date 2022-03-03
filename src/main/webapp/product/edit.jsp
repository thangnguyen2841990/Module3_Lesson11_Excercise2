<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: nguye
  Date: 3/3/2022
  Time: 4:21 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit product</title>
</head>
<body>
<h1>Edit product</h1>
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
        <legend>Product Information</legend>
        <table>
            <tr>
                <td>Name</td>
                <td><input type="text" id="name" name="name" value="${requestScope['product'].getName()}"></td>
            </tr>
            <tr>
                <td>Price</td>
                <td><input type="text" id="price" name="price" value="${requestScope['product'].getPrice()}"></td>
            </tr>
            <tr>
                <td>Amount</td>
                <td><input type="text" id="amount" name="amount" value="${requestScope['product'].getAmount()}"></td>
            </tr>
            <tr>
                <td>Description</td>
                <td><input type="text" id="description" name="description" value="${requestScope['product'].getDescription()}"></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="Edit product"></td>
            </tr>
        </table>
    </fieldset>
</form>

</body>
</html>
