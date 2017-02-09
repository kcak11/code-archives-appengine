<jsp:include page="../contentHeader.jsp">
<jsp:param name="docTitle" value="CodeArchives - Tool Downloads" />
</jsp:include>


<!-- start content here -->

<table>
<tr>
<td><img src="archive/resources/images/dloadicon.png"/></td>
<td><span style="font-size:22px;text-align:left;">Development Tools Downloads</span></td>
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
<li><span style="font-size:16px;cursor:pointer;border-bottom:2px solid #ff0000;" onclick="(function(){window.open('http://ant.apache.org/','ca_download_win'+new Date().getTime());})();">Apache ANT</span><br/><br/></li>
<li><span style="font-size:16px;cursor:pointer;border-bottom:2px solid #ff0000;" onclick="(function(){window.open('http://maven.apache.org/download.html','ca_download_win'+new Date().getTime());})();">Apache Maven</span><br/><br/></li>
<li><span style="font-size:16px;cursor:pointer;border-bottom:2px solid #ff0000;" onclick="(function(){window.open('http://tortoisesvn.net/downloads.html','ca_download_win'+new Date().getTime());})();">Tortoise SVN Client</span><br/><br/></li>
<li><span style="font-size:16px;cursor:pointer;border-bottom:2px solid #ff0000;" onclick="(function(){window.open('http://git-scm.com/download','ca_download_win'+new Date().getTime());})();">GIT - Fast Version Control System</span><br/><br/></li>
</ul>

<!-- end content here -->

<jsp:include page="../contentFooter.jsp"/>