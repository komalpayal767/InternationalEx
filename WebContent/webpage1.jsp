<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Compilers</title>
    </head>
    
  <%
        String lang =null,country=null;
        Locale l = null;
        ResourceBundle r =null;
        lang= request.getParameter("language");
        if(lang==null||lang.equals("English"))
        {
        lang="en";
        country="US";
        l= new Locale(lang,country);
        r=ResourceBundle.getBundle("global_en_US",l);
        }
        else
            
            if(lang.equals("German"))
            {
            lang="de";
            country="DE";
            l=new Locale(lang,country);
            r=ResourceBundle.getBundle("global_de_DE",l);
            }
            else
                
                if(lang.equals("French"))
                {
                lang="fr";
                country="FR";
                l=new Locale(lang,country);
                r=ResourceBundle.getBundle("global_fr_FR",l);
                }
            String str=r.getString("text1");
      
       //str=r.getString("text2");
        
     %>
  
    <body>
        <form action="webpage1.jsp" method="post">
            please select a language:<br/>
            <input type="radio" name="language" value="English">English
            <input type="radio" name="language" value="German">German
            <input type="radio" name="language" value="French">French</br>
            
            <input type="submit" value="Change Language">
            
        </form>
        
        
        <%--  SIGN_IN<br>
        USER_NAME<br>
        <input type=text name=username><br>
        PASSWORD<br>
         <input type=text name=password><br>
          <input type=submit name=action value="SIGN_IN"><br>--%>
        
        <form action="webpage2.jsp" method="post">
            <br/>
            <%=str%>
            <br/>
            
            <input type="submit" value="Next">
        
        </form>>
    </body>
</html>
s