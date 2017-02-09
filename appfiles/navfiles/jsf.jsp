<jsp:include page="contentHeader.jsp">
<jsp:param name="docTitle" value="CodeArchives - Java Server Faces" />
</jsp:include>

<img src="archive/resources/images/topics/jsf.png"/>

<!-- start content here -->
<p>
	<b>JavaServer Faces</b> (<b>JSF</b>) is a <span>Java</span-based <span>Web application framework</span intended to simplify <span class="mw-redirect">development</span integration of web-based <span>user interfaces</span.</p>

<p>
	JSF is a request-driven <span class="mw-redirect">MVC</span web framework based on component driven UI design model, using XML files called view templates or <span>Facelets</span views. Requests are processed by the FacesServlet, which loads the appropriate view template, builds a component tree, processes events, and renders the response (typically HTML) to the client. The state of UI components (and some other objects) is saved at the end of each request (called <b>stateSaving</b> (note: <i>transient</i> <b>true</b>)), and restored upon next creation of that view. Several types of state-saving are available, including Client-side and Server-side state saving. Out of the box, JSF 1.x uses <span>JavaServer Pages</span (JSP) for its display technology, but can also accommodate other technologies (such as <span>XUL</span and <span>Facelets</span). JSF 2 uses Facelets by default for this purpose. Facelets is a more efficient, simple, and yet more powerful view description language (VDL).</p>

<h2>
	<span class="mw-headline" id="Core_features">Core features</span></h2>
<ul>
	<li>
		<span class="mw-redirect">Managed Beans</span: A <span>dependency injection</span system (easily interfaced with <span class="external text" rel="nofollow">CDI</span, Spring, or Guice) - also called "Backing Beans" or "Page Beans"</li>

	<li>
		A template-based component system, for rapid composite component creation - without the need for Java classes.</li>
	<li>
		Built in <span>Ajax</span support using &lt;f:ajax /&gt; (since JSF v2.0).</li>
	<li>

		Built in support for bookmarking &amp; page-load actions.</li>
	<li>
		Integration with the <span>Unified Expression Language</span (<span class="external text" rel="nofollow">EL</span), which is core to the function of JSF. Views may access managed bean fields and methods via EL: &lt;my:component rendered="&#35;{myBean.userLoggedIn}" /&gt;</li>

	<li>
		A default set of HTML and web-application specific UI components.</li>
	<li>
		A <span>server-side</span <span class="mw-redirect">event model</span&nbsp;: For dispatching events and attaching listeners to core system functionality, such as "Before Render Response" or "After Validation"</li>

	<li>
		State management, supporting: "request", "session", "application", "flash", and "view" scoped Java beans.</li>
	<li>

		Two XML-based <span class="mw-redirect">tag libraries</span (core and html) for expressing a JavaServer Faces interface within a view template (can be used with both <span>JSP</span or Facelets)</li>
</ul>
<h2>
	<span class="mw-headline" id="JSF_versions">JSF versions</span></h2>
<ul>
	<li>

		JSF 2.0 (2009-06-28) - Current version, major release for ease of use, enhanced functionality, and performance. Coincides with <span>Java EE</span 6.</li>
	<li>
		JSF 1.2 (2006-05-11) - Many improvements to core systems and APIs. Coincides with <span>Java EE</span 5.</li>

	<li>
		JSF 1.1 (2004-05-27) - (DEPRECATED) bug fix release. There were no spec or HTML renderkit changes.</li>
	<li>
		JSF 1.0 (2004-03-11) - (DEPRECATED) the initial release of the JSF specification.</li>
</ul>
<h2>
	<span class="mw-headline" id="JSF_and_Ajax">JSF and Ajax</span></h2>

<p>
	JSF is often mentioned together with <span>Ajax</span, a <span>Rich Internet application</span technology. Ajax is a combination of technologies that makes it possible to create rich user interfaces. The user interface components in <span class="new">Mojarra</span (the JSF reference implementation<sup style="display:none;" class="reference" id="cite_ref-0"><span><span>[</span>1<span>]</span></span</sup>) and MyFaces were originally developed for HTML only, and Ajax had to be added via JavaScript. This has changed, however:</p>
<p>

	Because JSF supports multiple output formats, Ajax-enabled components can easily be added to enrich JSF-based user interfaces. The JSF 2.0 specification provides built in support for Ajax by standardizing the Ajax request lifecycle, and providing simple development interfaces to Ajax events, allowing any event triggered by the client to go through proper validation, conversion, and finally method invocation, before returning the result to the browser via an XML DOM update.</p>
<p>
	JSF 2 includes support for <span class="mw-redirect">graceful degradation</span when <span>JavaScript</span is disabled in the browser.</p>
<h2>
	<span class="mw-headline" id="Ajax-enabled_components_and_frameworks">Ajax-enabled components and frameworks</span></h2>

<p>
	The following companies and projects offer Ajax-based JSF frameworks or component libraries:</p>
<ul>
	<li>
		<span class="mw-redirect">jBoss</span <i><span class="mw-redirect">RichFaces</span</i> (<i><span>Ajax4jsf</span</i>), Ajax-enabled JSF components for Layout, File Upload, Forms, Inputs and many other features.</li>
	<li>

		<span>ICEfaces</span, open-source, Java JSF extension framework and rich components, Ajax without JavaScript</li>
	<li>
		<span>Oracle</span <i>ADF Faces Rich Client</i>, <span>Oracle Application Development Framework</span</li>
	<li>
		<span>Backbase</span <i>Enterprise Ajax&nbsp;- JSF Edition</i>, <span>Ajax framework</span</li>

	<li>
		<span>IBM Lotus Notes</span - <span>XPages</span</li>
	<li>
		<span class="mw-redirect">MyFaces</span, The <span class="mw-redirect">Apache Foundation</span JSF Implementation with Ajax Components</li>

	<li>
		<span>Sun</span <i>Java BluePrints AJAX Components</i></li>
	<li>
		<span class="mw-redirect">ZK</span Ajax framework with JSF components</li>
</ul>
<h2>
	<span class="mw-headline" id="Latest_developments">Latest developments</span></h2>

<p>
	<span>Facelets</span (which was designed specifically for JavaServer Faces) was adopted as the official view technology for JSF 2.0. This eliminates the well-known life-cycle conflicts that existed with JSP, forcing workarounds by Java developers. Facelets allows easy component/tag creation using XML markup instead of Java code, the chief complaint against JSF 1.x.</p>
<p>
	The new JSF developments also provide wide accessibility to <b>Java 5 annotations</b> such as @ManagedBean, @ManagedProperty and @FacesComponent which removes the need for faces-config.xml in all cases save framework extension. Navigation has been simplified, removing the need for faces-config.xml navigation cases. Page transitions can be invoked simply by passing the name of the desired View/Facelet.</p>
<p>
	Addition of Partial State Saving and DOM updates are part of the built in standardized <span>Ajax</span support.</p>

<p>
	The latest JSF release has built-in support for handling resources like images, CSS and Javascript, allowing artifacts to be included with component libraries, separated into JAR files, or simply co-located into a consistent place within the web-application. Includes logical naming and versioning of resources.</p>
<p>
	JSF 2.0 also includes a number of other changes like adding support for events, RAILS_ENV style development stages and significantly expanding the standard set of components.</p>
<!-- end content here -->

<jsp:include page="contentFooter.jsp"/>