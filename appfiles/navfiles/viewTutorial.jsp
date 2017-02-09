<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>CodeArchives - Online Tutorials</title>
<meta http-equiv="Content-Type" content="text/html;charset=utf-8">
<script type="text/javascript">
try{window.focus();}catch(e){/**/}
</script>
<script type="text/javascript">
try{
document.oncontextmenu=function(e){return false;};
}catch(cmenuerr){/**/}
</script>
<script type="text/javascript">

  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-12203959-2']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();

</script>
</head>
<body>
<div style="text-align:right;color:rgb(156,90,60);"><span style="cursor:pointer;font-family:Verdana;font-size:11px;" onclick="window.close();">[Close (x)]</span></div>
<!-- start content here -->
<%
String baseURL=(String)session.getAttribute("staticBaseURL");
String tutorialID=request.getParameter("tutorialID");
%>
<%
if(tutorialID==null || "".equals(tutorialID)){
%>
<script type="text/javascript">
alert("Error occured playing the Tutorial !!!\nThe window will now close.");
window.close();
</script>
<%}%>

<div style="text-align:center;"><img src="<%=baseURL%>archive/resources/images/catutor.png" style="width:443px;height:114px;" alt="Code Archives - Online Tutorials"></div>
<br><br>
<div align="center">
<script type="text/javascript">
document.open("text/html","replace");
document.write("<"+"ifr"+"ame width=\"531\" height=\"436\" src=\"http://www.youtube.com/embed/<%=tutorialID%>\" frameborder=\"0\" allowfullscreen><"+"/ifr"+"ame>");
document.close();
</script>
</div>

<!-- end content here -->

</body>
</html>