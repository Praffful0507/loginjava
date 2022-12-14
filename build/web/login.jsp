<%-- 
    Document   : login
    Created on : 14 Dec, 2022, 12:36:16 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>log in</h1>
 <form name="myform" action="response.jsp" method="POST">
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
        <form name="h" action="index.jsp" method="POST">
     <input type="submit" value="signup" name="l" />
 </form>
          <form name="h" action="delete.jsp" method="POST">
     <input type="submit" value="delete" name="l" />
 </form>
    </body>
</html>
