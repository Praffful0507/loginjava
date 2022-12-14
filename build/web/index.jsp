<%--
 Document : index
 Created on : 13-Dec-2022, 12:54:19 pm
 Author : prasenjitsaha
--%>

<%@page contentType="text/html"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
 <head>
 <meta http-equiv="Content-Type" content="text/html;
charset=UTF-8">
 <title>JSP Page</title>
 </head>
 <body>
 <h1>Sign up</h1>
 <form name="myform" action="output.jsp"
method="POST">
 <table border="0">
 <tbody>
 <tr>
 <td>First Name</td>
 <td><input type="text" name="first" value=""
size="50" /></td>
 </tr>
 <tr>
 <td>Last Name</td>
 <td><input type="text" name="last" value=""
size="50" /></td>
 </tr>
 </tbody>
 </table>
 <input type="submit" value="submit" name="submit" />
 <input type="reset" value="reset" name="reset" />
 </form>
 <form name="h" action="login.jsp" method="POST">
     <input type="submit" value="login" name="l" />
 </form>
  <form name="h" action="delete.jsp" method="POST">
     <input type="submit" value="delete" name="l" />
 </form>
 </body>
</html>