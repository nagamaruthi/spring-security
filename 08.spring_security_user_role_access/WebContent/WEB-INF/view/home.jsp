<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home Page</title>
</head>
<body>
	Home Page
	<br/><br/>
	
	<p>
	
	 		User:  <security:authentication property="principal.username"/>
	 		<br/><br/>
	 		Role is: <security:authentication property="principal.authorities"/>
	</p>
	
	<hr>
		<a href="${pageContext.request.contextPath}/leaders">Leadership Meeting</a>
	
	</hr>
	
	<hr>
		<a href="${pageContext.request.contextPath}/systems">Admin Page</a>
	
	</hr>
	<form:form action="${pageContext.request.contextPath}/logout" method="POST">
	 
		<input type="submit" value="Logout"/>
	</form:form>
</body>
</html>