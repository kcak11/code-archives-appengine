<jsp:include page="../contentHeader.jsp">
<jsp:param name="docTitle" value="CodeArchives - Framework Downloads" />
</jsp:include>


<!-- start content here -->

<table>
<tr>
<td><img src="archive/resources/images/dloadicon.png"/></td>
<td><span style="font-size:22px;text-align:left;">Framework Downloads</span></td>
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
<li><span style="font-size:16px;cursor:pointer;border-bottom:2px solid #ff0000;" onclick="(function(){window.open('http://www.springsource.org/download','ca_download_win'+new Date().getTime());})();">Spring Framework</span><br/><br/></li>
<li><span style="font-size:16px;cursor:pointer;border-bottom:2px solid #ff0000;" onclick="(function(){window.open('http://struts.apache.org/download.cgi','ca_download_win'+new Date().getTime());})();">Struts Framework</span><br/><br/></li>
<li><span style="font-size:16px;cursor:pointer;border-bottom:2px solid #ff0000;" onclick="(function(){window.open('http://www.hibernate.org/downloads','ca_download_win'+new Date().getTime());})();">Hibernate Framework</span><br/><br/></li>
<li><span style="font-size:16px;cursor:pointer;border-bottom:2px solid #ff0000;" onclick="(function(){window.open('http://www.oracle.com','ca_download_win'+new Date().getTime());})();">JSF Framework</span><br/><br/></li>
</ul>



<!-- end content here -->

<jsp:include page="../contentFooter.jsp"/>