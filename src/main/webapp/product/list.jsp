<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>List product</title>
</head>
<style>
    .findProductByName {
        margin-bottom: 20px;
        padding-bottom: 10px;
    }
</style>
<body>
<h1>Products</h1>
<p><a href="/products?action=create">Create new product</a>
</p>
<form method="post" action="/products?action=find">
        <div class="findProductByName">
            <h4>Find product by name</h4>
            <input type="text" name="inputProduct" placeholder="Enter product name: ">
            <input type="submit" value="Search">
        </div>

</form>
<table border="1">
    <tr>
        <td>Name</td>
        <td>Price</td>
        <td>Amount</td>
        <td>Description</td>

    </tr>
    <c:forEach items="${requestScope['products']}" var="product">
        <tr>
            <td><a href="/products?action=view&id=${product.getId()}">${product.getName()}</a></td>
            <td>${product.getPrice()}</td>
            <td>${product.getAmount()}</td>
            <td>${product.getDescription()}</td>
            <td><a href="/products?action=edit&id=${product.getId()}">Edit</a></td>
            <td><a href="/products?action=delete&id=${product.getId()}">Delete</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
