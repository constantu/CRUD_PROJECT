<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false" %>

<html>
<head>
  <title>UserData</title>

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
<h1>User Details</h1>

<c:if test="${!empty user.name}">

<tr>
<table class="tg">
  <tr>
    <th width="80">User Id</th>
    <th width="120">Name</th>
    <th width="80">Age</th>
    <th width="80">isAdmin</th>
    <th width="80">Registration Date</th>
  </tr>
  <tr>
    <td>${user.id}</td>
    <td>${user.name}</td>
    <td>${user.age}</td>
    <td>${user.isAdmin}</td>
    <td>${user.createDate}</td>
  </tr>
</table>
</tr>
</c:if>
<c:if test="${empty user.name}">
  <h2><c:out value="There is no User with such Id" /></h2>
</c:if>
</table>
<br>
</br>
<a href="<c:url value="/users"/>" target="_blank">Back to User list</a>
</body>
</html>