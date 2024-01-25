
<%@page import="java.util.List"%>
<%@page import="com.usermanagment.model.User"%>
<%@page import="com.usermanagment.dao.UserDaoImpl"%>
<%@page import="com.usermanagment.dao.UserDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<link href="${contextPath}/resource/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<center><h1>User Managment</h1>
<br>
<h4>
<u><i><a href="AddUser.html">AddNewUser</a></i></u>  &nbsp;&nbsp;
<u><i><a href="ListAllUsers.jsp">ListOfUser</a></i></u></h4>
</center>

<%-- <form action="AddUser.html">

<b class="text-primary p-3 mb-3">Add New User</b>
<input type="submit" value="Add Course" class="btn btn-primary p-2">
</form>
--%>
<br>
<table class="table table-striped">
  <thead>
    <tr>
      <th scope="col">Id</th>
      <th scope="col">Name</th>
      <th scope="col">Fees</th>
      <th scope="col">Duration</th>
      <th scope="col"> Modify</th>
      <th scope="col">Remove</th>
    </tr>
  </thead>
  <tbody>
  <%
UserDao ud=new UserDaoImpl();
List<User> list=ud.ListOfAllUser();
for(User u:list)
   {
	%>
	  <tr>
<td><%=u.getId() %></td>
<td><%=u.getName() %></td>
<td><%=u.getEmail() %></td>
<td><%=u.getCountry() %></td>
<td><a href="updateUser.jsp?id=<%=u.getId()%>">update</td>
<td><a href="deleteUser.jsp?id=<%=u.getId()%>">delete</td>
 </tr>
	<%}
%>
    
  </tbody>
</table>


</body>
</html>