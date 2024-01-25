<!DOCTYPE html>
<%@page import="com.usermanagment.model.User"%>
<%@page import="java.util.List"%>
<%@page import="com.usermanagment.dao.UserDaoImpl"%>
<%@page import="com.usermanagment.dao.UserDao"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<link href="${contextPath}/resource/bootstrap.min.css" rel="stylesheet">

</head>
<body>
<center>

<h1>User Managment</h1>
<br>
<h4>
<u><i><a href="AddUser.html">AddNewUser</a></i></u>  &nbsp;&nbsp;
<u><i><a href="ListAllUsers.jsp">ListOfUser</a></i></u>
</h4>
<%

int i=Integer.parseInt(request.getParameter("id"));
UserDao ud= new UserDaoImpl();
 User u=ud.fetchUserById(i);
%>
<form action="UpdateUserServlet" method="post">
<table>
<center class=" text-primary mt-2 p-2"><b><h3>Update User Details</h3></b></center>
<tr>
   <td >User Id</td>
   <td ><input type="text" name="uid" value="<%=u.getId() %>" readonly="readonly" class="form-control mb-2"></td>
</tr>
<tr>
   <td>User Name</td>
   <td><input type="text" name="uname" value="<%=u.getName() %>" class="form-control mb-2"></td>
</tr>
<tr>
   <td>User Email</td>
   <td><input type="text" name="uemail" value="<%=u.getEmail() %>" class="form-control mb-2"></td>
</tr>
<tr>
   <td>User Country</td>
   <td><input type="text" name="ucountry" value="<%=u.getCountry() %>" class="form-control mb-2"></td>
</tr>
<br>
<tr>
   <td><input type="reset" class="btn btn-danger mb-2 ml-5 p-2  btn-sm"></td>
   <td><input type="submit" value="Add user" class="btn btn-primary mb-2 ml-5 p-2 btn-sm"></td>
</tr>
</table>
</form>
</center>
</body>
</html>