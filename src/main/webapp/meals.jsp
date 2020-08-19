<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.time.format.DateTimeFormatter" %>

<html lang="ru">
<head>
    <title>Meals</title>
</head>
<body>
<h3><a href="index.html">Home</a></h3>
<hr>
<h2>Meals</h2>
<a href="meals?action=create">Add Meal</a>
<table border="1">
    <tr>
        <th>id</th>
        <th>Название</th>
        <th>Время</th>
        <th>Калории</th>
        <th>Excess</th>
    </tr>
    <c:forEach var="mealTo" items="${mealList}">
        <jsp:useBean id="mealTo" scope="page" type="ru.javawebinar.topjava.model.MealTo"/>
        <c:if test="${mealTo.excess == true}">
            <tr style="color: red;">
                <td><c:out value="${mealTo.id}"/></td>
                <td><c:out value="${mealTo.description}"/></td>
                <td> ${mealTo.dateTime.format(DateTimeFormatter.ofPattern("dd.MM.yyyy HH:mm"))}</td>
                <td><c:out value="${mealTo.calories}"/></td>
                <td><c:out value="${mealTo.excess}"/></td>
                <td><a href="meals?action=update&mealId=${mealTo.id}">Update</a></td>
                <td><a href="meals?action=delete&mealId=${mealTo.id}">Delete</a></td>

            </tr>
        </c:if>
        <c:if test="${mealTo.excess == false}">
            <tr style="color: cornflowerblue;">
                <td><c:out value="${mealTo.id}"/></td>
                <td><c:out value="${mealTo.description}"/></td>
                <td> ${mealTo.dateTime.format(DateTimeFormatter.ofPattern("dd.MM.yyyy HH:mm"))}</td>
                <td><c:out value="${mealTo.calories}"/></td>
                <td><c:out value="${mealTo.excess}"/></td>
                <td><a href="meals?action=update&mealId=${mealTo.id}">Update</a></td>
                <td><a href="meals?action=delete&mealId=${mealTo.id}">Delete</a></td>

            </tr>
        </c:if>
    </c:forEach>
</table>
</body>
</html>