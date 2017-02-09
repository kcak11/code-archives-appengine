<%
String hURL=request.getParameter("url");
if(hURL!=null){
%>
<script type="text/javascript">
window.onunload=function(e){};
document.cookie="currenturl="+encodeURIComponent("<%=hURL%>")+";path=/";
</script>
<%
}else{
%>
<script type="text/javascript">
window.onunload=function(e){};
window.top.location="http://code-archives.appspot.com";
</script>
<%}%>