<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html:html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Collection</title>
</head>
<body>
	<h1>Collection</h1>
	<html:form action="reg" method="post">
	<table>
		<tr>
			<td>ID number</td>
			<td><html:text property="id"/></td>
			<td><html:errors property="e_id"/></td>
		</tr>
		<tr>
			<td>First Name</td>
			<td><html:text property="fname"/></td>
			<td><html:errors property="e_fname"/></td>
		</tr>
		<tr>
			<td>Last Name</td>
			<td><html:text property="lname"/></td>
			<td><html:errors property="e_lname"/></td>
		</tr>
		<tr>
			<td></td>
			<td><html:submit value="Register"></html:submit></td>
			<td></td>
		</tr>
	</table>
	</html:form>
</body>
</html:html>