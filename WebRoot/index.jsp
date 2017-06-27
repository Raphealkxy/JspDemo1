<%@page import="java.io.IOException"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"   %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  
  <body>
  <%!
  String Mutitable()
  {
  //JspWriter outWriter;
  String s="";
        for(int i=1;i<=9;i++)
         { for(int j=1;j<=i;j++)
           {s=s+i+"*"+j+"="+i*j+"&nbsp;&nbsp;&nbsp;"; }
            s=s+"<br>";
         }
       
            
     return s;       
             
  
  }
  
 void printfl(JspWriter out) throws IOException
  {
         for(int i=1;i<=9;i++)
         { 
         for(int j=1;j<=i;j++)
            out.print(i+"*"+j+"="+i*j+"&nbsp;&nbsp;&nbsp;"); 
            out.print("<br>");}
  
  }
  
  %>
 
  <h1>这是一个九九乘法表</h1>
  <%=Mutitable() %>
  <h2>采用脚本的方式</h2>
  <% printfl(out); %>//调用没有返回值的是正常语句，不是赋值语句。
  </body>
</html>
