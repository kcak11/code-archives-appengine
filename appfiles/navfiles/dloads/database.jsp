<jsp:include page="../contentHeader.jsp">
<jsp:param name="docTitle" value="CodeArchives - Database Downloads" />
</jsp:include>


<!-- start content here -->

<table>
<tr>
<td><img src="archive/resources/images/dloadicon.png"/></td>
<td><span style="font-size:22px;text-align:left;">Database Downloads</span></td>
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
<li><span style="font-size:16px;cursor:pointer;border-bottom:2px solid #ff0000;" onclick="(function(){window.open('http://www.oracle.com','ca_download_win'+new Date().getTime());})();">Oracle Database</span><br/><br/></li>
<li><span style="font-size:16px;cursor:pointer;border-bottom:2px solid #ff0000;" onclick="(function(){window.open('http://dev.mysql.com/downloads/','ca_download_win'+new Date().getTime());})();">MySql Database</span><br/><br/></li>
</ul>

<!-- end content here -->

<jsp:include page="../contentFooter.jsp"/>