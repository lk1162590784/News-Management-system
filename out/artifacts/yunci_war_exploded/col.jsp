<%@ page import="dao.tabledao" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: 11625
  Date: 2021/11/25
  Time: 17:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String title=request.getParameter("title");
    String  i = (String) session.getAttribute("i1");
    String sql="select * from " +i+ " where title='"+title+"'";
    System.out.println(sql);
    tabledao tabledao=new tabledao();
    String content=tabledao.connect1(sql);
    System.out.println(content);
%>
<p id="demo">
   <%=content%>
</p>
</body>
</html>
