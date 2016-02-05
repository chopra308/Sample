<%@taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<<style>
<!--

-->
a {
	border-style: dashed;
}
</style>
<div style="border-color:maroon; color:red; font-size:50">
	<center>
		<bean:message key="title"/>
	</center>
</div>

<html:form action="reg" >
<pre>
<bean:message key="id"/>		<html:text property="id"/>	
<bean:message key="name"/>		<html:text property="name"/>
<bean:message key="email"/>		<html:text property="email"/>
<bean:message key="address"/>	<html:text property="address"/>
						
	<html:submit><bean:message key="submit"/></html:submit>

	<a href="./changeLang.do?language=en">English</a>
	<a href="./changeLang.do?language=hi">Hindi</a>
	<a href="./changeLang.do?language=ur">Urdu</a>
</pre>

</html:form>