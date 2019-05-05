<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Leaders Page</title>
</head>
<body>
	Leaders Page
	<br/><br/>
	
	<p>
	
	 		User:  <security:authentication property="principal.username"/>
	 		<br/><br/>
	 		Role is: <security:authentication property="principal.authorities"/>
	</p>
	
	<a href="${pageContext.request.contextPath}/">Back to Home Page</a>
</body>
</html>