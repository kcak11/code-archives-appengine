<jsp:include page="contentHeader.jsp">
<jsp:param name="docTitle" value="CodeArchives - Struts Framework" />
</jsp:include>

<img src="archive/resources/images/topics/struts.png"/>

<!-- start content here -->
<table class="infobox vevent" style="width: 566px; height: 259px;" cellspacing="5">
	<caption class="summary" style="">
		&nbsp;</caption>
	<tbody>
		<tr>
			<th scope="row" style="text-align: left; white-space: nowrap;">
				<span>Developer(s)</span></th>
			<td style="">
				<span>Apache Software Foundation</span></td>
		</tr>
		<tr>

			<th scope="row" style="text-align: left; white-space: nowrap;">
				<span>Written in</span></th>
			<td style="">
				<span>Java</span></td>
		</tr>
		<tr>
			<th scope="row" style="text-align: left; white-space: nowrap;">
				<span>Operating system</span></th>

			<td style="">
				<span>Cross-platform</span></td>
		</tr>
		<tr>
			<th scope="row" style="text-align: left; white-space: nowrap;">
				<span>Type</span></th>
			<td style="">
				<span>Web application framework</span></td>

		</tr>
		<tr>
			<th scope="row" style="text-align: left; white-space: nowrap;">
				<span>License</span></th>
			<td style="">
				<span>Apache License</span> 2.0</td>
		</tr>

	</tbody>
</table>
<p>
	<b>Apache Struts</b> is an <span class="mw-redirect">open-source</span> <span>web application framework</span> for developing <span class="mw-redirect">Java EE</span> <span>web applications</span>. It uses and extends the <span>Java Servlet</span> <span>API</span> to encourage developers to adopt a <span class="mw-redirect">model-view-controller</span> (MVC) architecture. It was originally created by <span>Craig McClanahan</span> and donated to the <span class="mw-redirect">Apache Foundation</span> in May, 2000. Formerly located under the Apache <span>Jakarta Project</span> and known as <b>Jakarta Struts</b>, it became a top level Apache project in 2005.</p>

<h2>
	<span class="mw-headline" id="Design_goals_and_overview">Design goals and overview</span></h2>
<p>
	In a standard <span>Java EE</span> web application, the client will typically submit information to the server via a <span>web form</span>. The information is then either handed over to a <span>Java Servlet</span> that processes it, interacts with a database and produces an <span class="mw-redirect">HTML</span>-formatted response, or it is given to a <span>JavaServer Pages</span> (JSP) document that intermingles HTML and Java code to achieve the same result. Both approaches are often considered inadequate for large projects because they mix application logic with presentation and make maintenance difficult.</p>

<p>
	The goal of Struts is to separate the <i>model</i> (application logic that interacts with a database) from the <i>view</i> (HTML pages presented to the client) and the <i>controller</i> (instance that passes information between view and model). Struts provides the controller (a servlet known as <code>ActionServlet</code>) and facilitates the writing of templates for the view or presentation layer (typically in JSP, but <span class="mw-redirect">XML</span>/<span class="mw-redirect">XSLT</span> and <span class="mw-redirect">Velocity</span> are also supported). The web application programmer is responsible for writing the model code, and for creating a central configuration file <code>struts-config.xml</code> that binds together model, view and controller.</p>

<p>
	Requests from the client are sent to the controller in the form of "Actions" defined in the configuration file; if the controller receives such a request it calls the corresponding Action class that interacts with the application-specific model code. The model code returns an "ActionForward", a string telling the controller what output page to send to the client. Information is passed between model and view in the form of special <span class="mw-redirect">JavaBeans</span>. A powerful custom tag library allows it to read and write the content of these beans from the presentation layer without the need for any embedded Java code.</p>
<p>
	Struts is categorized as a request-based web application framework.<sup style="display:none;" class="reference" id="cite_ref-0"><span><span>[</span>1<span>]</span></span></sup></p>

<p>
	Struts also supports <span>internationalization</span> by web forms, and includes a template mechanism called "Tiles" that (for instance) allows the presentation layer to be composed from independent header, footer, and content components.</p>
<h2>
	<span class="mw-headline" id="History">History</span></h2>
<p>
	The Apache Struts Project was launched in May 2000 by Craig R. McClanahan to provide a standard MVC framework to the Java community. In July 2001, version 1.0 was released.</p>

<p>
	Struts 2 was originally known as <span>WebWork 2</span>. After having been developed separately for several years, WebWork and Struts were combined in 2008 to create Struts 2.<span class="external autonumber" rel="nofollow"></span></p>
<h2>
	<span class="mw-headline" id="Competing_MVC_frameworks">Competing MVC frameworks</span></h2>
<p>
	Although Struts is a well-documented, mature, and popular framework for building front ends to Java applications, there are other frameworks categorized as "lightweight" <span class="mw-redirect">MVC</span> frameworks such as <span class="mw-redirect">Spring MVC</span>, <span>Stripes</span>, <span>Wicket</span>, <span>Play!</span>, and <span class="mw-redirect">Tapestry</span>. The new <span>XForms</span> standards and frameworks may also be another option to building complex web Form validations with Struts in the future.</p>

<p>
	The <span>WebWork</span> framework spun off from Apache Struts aiming to offer enhancements and refinements while retaining the same general architecture of the original Struts framework. However, it was announced in December 2005 that Struts would re-merge with <span>WebWork</span>. WebWork 2.2 has been adopted as Apache Struts2, which reached its first full release in February 2007.</p>
<p>
	In 2004 Sun launched an addition to the Java platform, called <span>JavaServer Faces</span> (JSF). Aside from the original Struts framework, the Apache project previously offered a JSF-based framework called <span>Shale</span>, which was retired in May 2009.<sup style="display:none;" class="reference" id="cite_ref-1"><span><span>[</span>2<span>]</span></span></sup></p>

<p>
	Other MVC frameworks that are Java based include <span>WebObjects</span> and <span>Grails (framework)</span>.</p>
<!-- end content here -->

<jsp:include page="contentFooter.jsp"/>