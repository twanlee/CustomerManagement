<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 6/3/2020
  Time: 9:14 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Customer List</title>
</head>
<body>
<h1>Customer</h1>
<p>
    <a href="./customer?action=create"> Create new customer</a>
</p>

<table border="1">
    <tr>
        <th>Name</th>
        <th>Email</th>
        <th>Address</th>
        <th>Edit</th>
        <th>Delete</th>
    </tr>
    <c:forEach items='${requestScope["customers"]}' var="customer">
        <tr>
            <td><a href="./customer?action=view&id=${customer.getId()}">${customer.getName()}</a> </td>
            <td>${customer.getEmail()}</td>
            <td>${customer.getAddress()}</td>
            <td><a href="./customer?action=edit&id=${customer.getId()}">Edit</a> </td>
            <td><a href="./customer?action=delete&id=${customer.getId()}">Delete</a> </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
