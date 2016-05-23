<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="from" uri="http://www.springframework.org/tags/form" %>
<%@ page session="false" %>
<html>
<head>
    <title>Users Page</title>

    <style type="text/css">
        .tg {
            border-collapse: collapse;
            border-spacing: 0;
            border-color: #ccc;
        }

        .tg td {
            font-family: Arial, sans-serif;
            font-size: 14px;
            padding: 10px 5px;
            border-style: solid;
            border-width: 1px;
            overflow: hidden;
            word-break: normal;
            border-color: #ccc;
            color: #333;
            background-color: #fff;
        }

        .tg th {
            font-family: Arial, sans-serif;
            font-size: 14px;
            font-weight: normal;
            padding: 10px 5px;
            border-style: solid;
            border-width: 1px;
            overflow: hidden;
            word-break: normal;
            border-color: #ccc;
            color: #333;
            background-color: #f0f0f0;
        }

        .tg .tg-4eph {
            background-color: #f9f9f9
        }
    </style>
</head>
<body>
<a href="../../index.jsp">Back to main menu</a>

<br/>
<br/>

<h1>User List</h1>

<c:if test="${!empty users}">
    <table class="tg">
        <tr>
            <th width="80">User Id</th>
            <th width="120">Name</th>
            <th width="80">Age</th>
            <th width="80">isAdmin</th>
            <th width="80">Registration Date</th>
            <th width="60">Edit</th>
            <th width="60">Delete</th>
        </tr>
        <c:forEach items="${users}" var="user">
            <tr>
                <td>${user.id}</td>
                <td>${user.name}</td>
                <td>${user.age}</td>
                <td>${user.isAdmin}</td>
                <td>${user.createDate}</td>
                <td><a href="<c:url value='/edit/${user.id}'/>"target="_blank">Edit</a></td>
                <td><a href="<c:url value='/remove/${user.id}'/>"target="_blank">Delete</a></td>
            </tr>
        </c:forEach>
    </table>
    <br>

    <div id="pagination">

        <c:url value="users" var="prev">
            <c:param name="page" value="${page-1}"/>
        </c:url>
        <c:if test="${page>1}">
            <a href="<c:out value="${prev}"/>" class="pn prev">Prev</a>
        </c:if>

        <c:forEach begin="1" end="${maxPages}" step="1" varStatus="i">

            <c:choose>

                <c:when test="${page==i.index}">
                    <span>${i.index}</span>
                </c:when>

                <c:otherwise>
                    <c:url value="users" var="url">
                        <c:param name="page" value="${i.index}"/>
                    </c:url>
                    <a href="<c:out value="${url}"/>">${i.index}</a>
                </c:otherwise>

            </c:choose>

        </c:forEach>

        <c:url value="users" var="next">
            <c:param name="page" value="${page+1}"/>
        </c:url>

        <c:if test="${page+1<=maxPages}">
            <a href="<c:out value="${next}"/>" class="pn next">Next</a>
        </c:if>

    </div>
</c:if>


<h3>Add/Edit User</h3>
<div>
    <form:form action="/users/add" commandName="user">
        <table>
            <c:if test="${!empty user.name}">
                <tr>
                    <td>
                        <form:label path="id">
                            <spring:message text="ID"/>
                        </form:label>
                    </td>
                    <td>
                        <form:input path="id" readonly="true" size="8" disabled="true"/>
                        <form:hidden path="id"/>
                    </td>
                </tr>
            </c:if>
            <tr>
                <td>
                    <form:label path="name">
                        <spring:message text="Name"/>
                    </form:label>
                </td>
                <td>
                    <form:input path="name"/>
                </td>
            </tr>
            <tr>
                <td>
                    <form:label path="age">
                        <spring:message text="Age"/>
                    </form:label>
                </td>
                <td>
                    <form:input path="age"/>
                </td>
            </tr>
            <tr>
                <td>
                    <form:label path="isAdmin">
                        <spring:message text="Admin"/>
                    </form:label>
                </td>
                <td>
                    <form:input path="isAdmin"/>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <c:if test="${!empty user.name}">
                        <br>
                        <input type="submit"
                               value="<spring:message text="Edit User"/>"/>
                    </c:if>
                    <c:if test="${empty user.name}">
                        <br>
                        <input type="submit"
                               value="<spring:message text="Add User"/>"/>
                    </c:if>
                </td>
            </tr>
        </table>
    </form:form>
</div>

<h1>Search a User by ID</h1>

<%--<tr>
    <form action="<c:url value="/search/"/>">


        <input type="submit"
               name="id"
               value="<spring:message text="Search User"/>"/>

    </form>
</tr>--%>

<form action="users/{id}" class="form-inline">
    <div class="form-group">
        <input type="search" name="id" class="form-control">
    </div>
    <br>
    <input type="submit" value="Find" class="btn btn-default"/>
</form>



</body>
</html>
