<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title><%=request.getParameter("docTitle")%></title>
<meta http-equiv="Content-Type" content="text/html;charset=utf-8">
<meta name="Keywords" content="Java,Struts,Spring,JSF,Java Server Faces,Hibernate,Webservices,Video,AJAX,REST,Design Pattern,XML,tutorial,HTML,DHTML,CSS,XSL,XHTML,JavaScript,DOM,programming,learning,beginner's guide,howto,reference,free,examples,samples,source code,demos,tips,links,FAQ,forms,frames,Cascading Style Sheets,Dynamic HTML,HTMLGuide" >
<meta name="Description" content="Java Spring Struts JSF Webservices AJAX REST Video Tutorial HTML XHTML CSS JavaScript XML SQL Tutorials References Examples" >
<%
String titleStr=request.getParameter("docTitle");
titleStr=titleStr.replaceAll("\"","");
titleStr=titleStr.replaceAll("'","");
String baseURL=(String)session.getAttribute("staticBaseURL");
%>
<base href="<%=baseURL%>" >
</head>
<body style="display:none;">
<div id="SHMC9GxhviVNtXv6C5B17FV5zTAaGE33kHRmIc2aximoPf" style="display:none;"> </div>
<style type="text/css">
sup{display:none;}
</style>

<!-- URL Security Begin -->
<%
String homeURL=(String)session.getAttribute("staticBaseURL");
%>
<iframe src="about:blank" style="display:none;visibility:hidden;width:1px;height:1px;" onload="(function(){document.title='<%=titleStr%>';})();"></iframe>
<iframe src="about:blank" style="display:none;visibility:hidden;width:1px;height:1px;" onload="(function(){if(!document.getElementById('T0Z4HjxTsgnuaihN21foepcVS16Tar0b8V1tKr0J3usYpP5L1j0Ws45LP3vJ2i87NztTCu')){document.cookie='N21foepcVS16Tar0b8_redir='+encodeURIComponent(window.location)+';path=/';window.top.location='<%=homeURL%>';}})();"></iframe>
<!-- URL Security End -->
