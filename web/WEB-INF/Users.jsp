<%-- 
    Document   : Users
    Created on : 27-Oct-2022, 10:47:01 AM
    Author     : jatin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User</title>
    </head>
    <body>
        <h1>Welcome</h1>
        <h2>${message}</h2>
        <div class="container">
        <form action="" method="post" id="addUser">
            <input type="text" name="addEmail" id="addEmail"><br>
            <input type="text" name="addFirstName" id="addFirstName"><br>
            <input type="text" name="addLastName" id="addLastName"><br>
            <select name="status" id="status">
                <option value="active" name="active">Active</option>
                <option value="inactive" name="inactive">Inactive</option>
            </select><br>
            <input type="text" name="createPassword" id="createPassword">
            <select name="type" id="type">
                <option value="System Admin">System Administrator</option>
                <option value="Regular User">Regular User</option>
                <option value="Company Admin">Company Administrator</option>
            </select>
            <input type="submit" value="addUser">
            <input type="hidden" name="action" value="add">
        </form>
        </div>
        <table>
            <thead>
                <tr>
                    <th>E-mail</th>
                    <th>First name</th>
                    <th>Last name</th>
                    <th>Role</th>
                    <th>Active</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="user" items="${users}">
                    <tr>
                        <td>${user.email}</td>
                        <td>${user.firstName}</td>
                        <td>${user.lastName}</td>
                        <td>${user.role.name}</td>
                        <td>${user.active}</td>
                    </tr>    
                </c:forEach>   
            </tbody>
        </table>
    </body>
</html>
