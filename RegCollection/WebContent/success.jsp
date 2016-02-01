<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
 <%@taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
 <%@taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Record inserted</title>
<style type="text/css">
	td {
		border: 1px solid red
	}

</style>
</head>
<body>

<h1>Successfully inserted</h1>


	<logic:iterate name="people" id="peopleid">
  		<!--<bean:define id="person" name="mapEntry" property="value"/>-->
  		<tr>
    		<td><bean:write name="peopleid" property="id"/></td>
    		<td><bean:write name="peopleid" property="fname"/></td>
    		<td><bean:write name="peopleid" property="lname"/></td>
 		 </tr>
	</logic:iterate>
</body>
</html>