<%@page import="com.usermanagment.model.User"%>
<%@page import="java.util.List"%>
<%@page import="com.usermanagment.dao.UserDaoImpl"%>
<%@page import="com.usermanagment.dao.UserDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table border="1px" cellspacing="5px" cellpadding="10px">
<tr>
    <td>Id</td>
    <td>Name</td>
    <td>Email</td>
    <td>Country</td>
    <td>Modify</td>
    <td>Remove</td>
</tr>
<%
UserDao ud=new UserDaoImpl();
List<User> ulist=ud.ListOfAllUser();
for(User u:ulist)
   {
	%>
	<tr>
	<td><%=u.getId()%></td>
	<td><%=u.getName()%></td>
	<td><%=u.getEmail() %></td>
	<td><%=u.getCountry()%></td>
	<td><a href="UpdateCourse.jsp?id=<%=u.getId()%>">update</a></td>
	<td><a href="DeleteCourse.jsp?id=<%=u.getId()%>">delete</a></td>
	</tr>
	<%}
%>
   
</table><br><br>



</body>
</html>