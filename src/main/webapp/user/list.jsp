<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>User Management Application</title>
</head>
<link rel="stylesheet" href="/css/style.css">
<body>
<center>
    <h1>User Management</h1>
    <h2>
        <a href="/users?action=create">Add user</a>
    </h2>
</center>
<p>
    <c:if test="${requestScope['message'] != null}">
        <span class="message">${requestScope['message']}</span>
    </c:if>
</p>
<div>
    <form method="post" action="/users?action=sort" class="form-sort-by-name">
        <select name="typeOfSoft">
            <option value="byName">User name</option>
            <option value="byCountry">Country</option>
        </select>
        <input type="submit" value="Sort">
    </form>
    <form method="post" action="/users?action=findByCountry" class="form-find-by-country">
        <input type="text" name="country" placeholder="Enter country name...">
        <input type="submit" value="Find">
    </form>
</div>
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