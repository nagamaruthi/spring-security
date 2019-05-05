<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Form</title>
</head>
<style>
	.failed{
		color: red;
	}
</style>
<body>

<h3> Login Page</h3>
	<form:form action="${pageContext.request.contextPath}/authenticateTheUser" method="POST" >
	
		<c:if test="${param.error!=null}">
			<i class="failed">Please enter valid username and password!</i>
		</c:if>
		<br/><br/>
		User Name: <input type="text" name="username"/>
		<br/><br/>
	
		Password:  <input type="password" name="password"/>
		<br/><br/>
	
		<input type="submit" value="Login"/>
	</form:form>
</body>
</html>