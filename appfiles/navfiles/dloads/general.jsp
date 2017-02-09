<jsp:include page="../contentHeader.jsp">
<jsp:param name="docTitle" value="CodeArchives - General Downloads" />
</jsp:include>


<!-- start content here -->

<table>
<tr>
<td><img src="archive/resources/images/dloadicon.png"/></td>
<td><span style="font-size:22px;text-align:left;">General Downloads</span></td>
</tr>
</table>
<br/>
<%
String baseTOSURL=(String)session.getAttribute("staticBaseURL");
%>
<span onclick="(function(){window.open('<%=baseTOSURL%>archive/Action/catos/'+(Math.random()*11).toString(36).split('.').join(''),'catos','left=11,top=11,width=600,height=550,resizable=no');})();" style="cursor:pointer;font-weight:bold;border-bottom:3px solid #ff0000;">Please Read "Code Archives Terms of Service" (Important !!!)</span>
<br/><br/><br/>
<br/>
<br/>

<ul>
<li><span style="font-size:16px;cursor:pointer;border-bottom:2px solid #ff0000;" onclick="(function(){window.open('http://code.google.com/','ca_download_win'+new Date().getTime());})();">Google Code Repository</span><br/><br/></li>
<li><span style="font-size:16px;cursor:pointer;border-bottom:2px solid #ff0000;" onclick="(function(){window.open('http://www.java.com','ca_download_win'+new Date().getTime());})();">Java.com</span><br/><br/></li>
<li><span style="font-size:16px;cursor:pointer;border-bottom:2px solid #ff0000;" onclick="(function(){window.open('http://download.oracle.com','ca_download_win'+new Date().getTime());})();">Oracle Downloads</span><br/><br/></li>
<li><span style="font-size:16px;cursor:pointer;border-bottom:2px solid #ff0000;" onclick="(function(){window.open('http://www.javadownload.net','ca_download_win'+new Date().getTime());})();">JavaDownload.net</span><br/><br/></li>
<li><span style="font-size:16px;cursor:pointer;border-bottom:2px solid #ff0000;" onclick="(function(){window.open('http://www.getjar.com','ca_download_win'+new Date().getTime());})();">GetJar.com</span><br/><br/></li>
<li><span style="font-size:16px;cursor:pointer;border-bottom:2px solid #ff0000;" onclick="(function(){window.open('http://www.cnet.com','ca_download_win'+new Date().getTime());})();">CNET.com</span><br/><br/></li>
</ul>

<!-- end content here -->

<jsp:include page="../contentFooter.jsp"/>