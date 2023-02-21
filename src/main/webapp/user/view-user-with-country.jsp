<%--
  Created by IntelliJ IDEA.
  User: macbook
  Date: 21/02/2023
  Time: 22:47
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Result user search by country</title>
</head>
<body>
<h1>Result user search by country</h1>
<p>
    <button>
        <a href="/users">Back user list</a>
    </button>
</p>
<div align="center">
    <table border="1" cellpadding="5">
        <caption><h2>List of Users</h2></caption>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Email</th>
            <th>Country</th>
            <th>Actions</th>
        </tr>
        <c:forEach items="${listUser}" var="user">
            <tr>
                <td><c:out value="${user.id}"/></td>
                <td><c:out value="${user.name}"/></td>
                <td><c:out value="${user.email}"/></td>
                <td><c:out value="${user.country}"/></td>
                <td>
                    <button>
                        <a href="/users?action=edit&id=${user.id}">Edit</a>
                    </button>
                    <button>
                        <a href="/users?action=delete&id=${user.id}">Delete</a>
                    </button>
                    <button>
                        <a href="/users?action=view&id=${user.id}">View</a>
                    </button>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>
