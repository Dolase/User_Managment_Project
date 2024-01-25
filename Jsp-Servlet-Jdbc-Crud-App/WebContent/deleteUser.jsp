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
<%

int i=Integer.parseInt(request.getParameter("id"));
  UserDao ud=new UserDaoImpl();
  int res= ud.deleteUserData(i);
  if(res>0)
  {
	  %>
	  <jsp:forward page="ListAllUsers.jsp"></jsp:forward>
	  <%
  }
  else{
%>

<jsp:include page="ListAllUsers.jsp"></jsp:include>
 <%} %>
</body>
</html>