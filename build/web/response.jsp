<%-- 
    Document   : response
    Created on : 14 Dec, 2022, 12:37:44 PM
    Author     : user
--%>
<%@page import="java.sql.*" %>
<% Class.forName("com.mysql.jdbc.Driver"); %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
                <%! 
                public class Actor{
                    String URL = "jdbc:mysql://localhost:3306/sum";
                    String USERNAME = "root";
                    String PASSWORD = "12345";

                    Connection connection = null;
                    PreparedStatement selectActors = null;
                    ResultSet resultset = null;

                    public Actor(){
                        try {
                               connection = DriverManager.getConnection(URL, USERNAME, PASSWORD);
                                
                                selectActors = connection.prepareStatement(
                                "SELECT * FROM data");
                        } catch (SQLException e){
                                e.printStackTrace();
                        }
                    }
                    public ResultSet getActors(){
                        try{
                            resultset = selectActors.executeQuery();
                        }catch(SQLException e){
                            e.printStackTrace();
                        }
                        return resultset;
                    }
                }
        %>
        <% 
            Actor actor = new Actor();
            ResultSet actors = actor.getActors();
            int d = 0;
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
        %>
<% while(actors.next()) { %>

    <%
         String a = (String) actors.getString("f");
         String b = (String) actors.getString("s");
        if(a.equals(firstname) && b.equals(lastname)){ 
    %>
<p>Welcome <%= actors.getString("s") + actors.getString("f")%></p>
<% d = 1; %>
<% } %>
<% } %>
<% if(d == 0){ %>
<p>u r not a user </p>
<% } %>
<form name="h" action="login.jsp" method="POST">
     <input type="submit" value="login" name="l" />
 </form>
  <form name="h" action="delete.jsp" method="POST">
     <input type="submit" value="delete" name="l" />
 </form>
    </body>
</html>
