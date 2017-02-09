<%
response.setStatus(HttpServletResponse.SC_NOT_FOUND);
%>
<html>
<head>
<%
String baseURL=(String)session.getAttribute("staticBaseURL");
%>
<base href="<%=baseURL%>" >
<title>Oops ! - Page Not Found</title>
<style type="text/css">
body{
background-image:url('archive/resources/images/topborder.png');
background-repeat:repeat-x;
font-family:Verdana;
color:rgb(156,90,60);
font-size:16px;
font-weight:bold;
margin-top:0px;
padding-top:0px;
}
</head>
</style>
<body>
<img src="archive/resources/images/topborder.png" onload="(function(){setTimeout(function(){window.top.location='http://code-archives.appspot.com';},5000);})();"/>
<br/><br/><br/>
The page you have requested is not found on the server.<br/>
Please check the url.<br/>
<br/>
<br/>
[Server Returned Code = 404 Page Not Found]
<br/>
<br/>
You will now be redirected to the <a href="http://code-archives.appspot.com" style="text-decoration:none;"><span style="border-bottom:2px solid #ff0000;color:#000000;">HomePage</span></a> of the site.
<br/>
<br/>
&nbsp;
</body>
</html>