<%-- 
    Document   : output
    Created on : 13 Dec, 2022, 6:25:48 PM
    Author     : user
--%>
<%@page import="java.sql.*"%>
<%@page import="java.util.Date"%>
<% Class.forName("com.mysql.jdbc.Driver");%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>it is deleted succesful </h1>
<%!
 public class Id
 {
 String URL="jdbc:mysql://localhost:3306/sum";

 String USERNAME = "root";
 String PASSWORD ="12345";

 Connection connect = null;

 PreparedStatement ps = null;

 ResultSet rs = null;
 public Id()
 {
 try
 {
 connect = DriverManager.getConnection(URL,USERNAME, PASSWORD);
 ps = connect.prepareStatement("DELETE FROM data WHERE (f = ?) and (s = ?)");
 }
 catch(SQLException e)
 {
 e.printStackTrace();
 }
 }
 public int setId(String first, String last)
 {

 int result =0;
 try
 {
 ps.setString(1,first);
 ps.setString(2,last);
 result =ps.executeUpdate();

 }
 catch(SQLException e)
 {
 e.printStackTrace();
 }
 return result;
 }
 }
 %>
 <% 
 %>
 <%
 int result =0;
 String firstname = new String();
 String lastname = new String();
 if(request.getParameter("first")!= null)
 {
 firstname = request.getParameter("first");
 }
 if(request.getParameter("last")!= null)
 {
 lastname = request.getParameter("last");
 }
  Id id = new Id();
 result =id.setId(firstname,lastname);

 %>
      <% if(result != 0) { %>
        <table border="0">
        <tbody>
 <tr>

 <td>First Name</td>
 <td><%= firstname %></td>
 </tr>
 <tr>
 <td>Last Name</td>
 <td><%= lastname %></td>
 </tr>
 </tbody>
 </table>
 <%= result %>
 <% }else{ %>
 <p>it is not present </p>
 <% } %>
  <form name="h" action="login.jsp" method="POST">
     <input type="submit" value="login" name="l" />
 </form>
   <form name="h" action="delete.jsp" method="POST">
     <input type="submit" value="delete" name="l" />
 </form>
    </body>
</html>
