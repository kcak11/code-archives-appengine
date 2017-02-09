<jsp:include page="contentHeader.jsp">
<jsp:param name="docTitle" value="CodeArchives - Spring Framework" />
</jsp:include>

<img src="archive/resources/images/topics/spring.png"/>

<!-- start content here -->
<table class="infobox vevent" style="width: 654px; height: 273px;" cellspacing="5">
	<caption class="summary" style="">
		&nbsp;</caption>
	<tbody>
		<tr>
			<th scope="row" style="text-align: left; white-space: nowrap;">
				<span>Developer(s)</span></th>
			<td style="">
				<span>SpringSource</span></td>
		</tr>
		<tr>

			<th scope="row" style="text-align: left; white-space: nowrap;">
				Development status</th>
			<td style="">
				Active</td>
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
				<span>Platform</span></th>
			<td style="">
				<span>Java Virtual Machine</span></td>
		</tr>
		<tr>

			<th scope="row" style="text-align: left; white-space: nowrap;">
				<span>Type</span></th>
			<td style="">
				Application framework</td>
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
	The <b>Spring Framework</b> is an <span>open source</span> <span>application framework</span> for the <span class="mw-redirect">Java platform</span> <sup style="display:none;" class="reference" id="cite_ref-0"><span><span>[</span>1<span>]</span></span></sup></p>

<p>
	The first version was written by Rod Johnson who released the framework with the publication of his book <i>Expert One-on-One J2EE Design and Development</i> in October 2002. The framework was first released under the <span>Apache 2.0 license</span> in June 2003. The first milestone release, 1.0, was released in March 2004, with further milestone releases in September 2004 and March 2005. The Spring 1.2.6 framework won a <span>Jolt productivity award</span> and a <span class="new">JAX Innovation Award</span> in 2006.<sup style="display:none;" class="reference" id="cite_ref-1"><span><span>[</span>2<span>]</span></span></sup><sup style="display:none;" class="reference" id="cite_ref-2"><span><span>[</span>3<span>]</span></span></sup> Spring 2.0 was released in October 2006, and Spring 2.5 in November 2007. In December 2009 version 3.0 GA was released. The current version is 3.0.5.<sup style="display:none;" class="reference" id="cite_ref-3"><span><span>[</span>4<span>]</span></span></sup></p>

<p>
	The core features of the Spring Framework can be used by any Java application, but there are extensions for building web applications on top of the <span class="mw-redirect">Java EE</span> platform. Although the Spring Framework does not impose any specific <span class="mw-redirect">programming model</span>, it has become popular in the Java community as an alternative to, replacement for, or even addition to the <span>Enterprise JavaBean</span> (EJB) model.</p>
<h2>
	<span class="mw-headline" id="Modules">Modules</span></h2>
<p>

	The Spring Framework comprises several modules that provide a range of services:</p>
<ul>
	<li>
		<b><span class="mw-redirect">Inversion of Control</span> container</b>: configuration of application components and lifecycle management of Java objects</li>
	<li>
		<b><span>Aspect-oriented programming</span></b>: enables implementation of cross-cutting routines</li>

	<li>
		<b><span>Data access</span></b>: working with <span class="mw-redirect">relational database management systems</span> on the Java platform using <span class="mw-redirect">JDBC</span> and <span>object-relational mapping</span> tools</li>
	<li>

		<b><span>Transaction management</span></b>: unifies several transaction management APIs and coordinates transactions for Java objects</li>
	<li>
		<b><span class="mw-redirect">Model-view-controller</span></b>: an <span class="mw-redirect">HTTP</span> and <span class="mw-redirect">Servlet</span>-based framework providing hooks for extension and customization</li>
	<li>

		<b>Remote Access framework</b>: configurative <span>RPC</span>-style export and import of Java objects over networks supporting <span>RMI</span>, <span class="mw-redirect">CORBA</span> and <span class="mw-redirect">HTTP</span>-based protocols including <span class="mw-redirect">web services</span> (<span class="mw-redirect">SOAP</span>)</li>

	<li>
		<b><span>Convention-over-configuration</span></b>: a rapid application development solution for Spring-based enterprise applications is offered in the <span>Spring Roo</span> module</li>
	<li>
		<b><span>Batch processing</span></b>: a framework for high-volume processing featuring reusable functions including logging/tracing, transaction management, job processing statistics, job restart, skip, and resource management</li>
	<li>

		<b><span>Authentication</span> and <span>authorization</span></b>: configurable security processes that support a range of standards, protocols, tools and practices via the <span>Spring Security</span> sub-project (formerly Acegi Security System for Spring).</li>
	<li>
		<b>Remote Management</b>: configurative exposure and management of Java objects for local or remote configuration via <span class="mw-redirect">JMX</span></li>

	<li>
		<b>Messaging</b>: configurative registration of message listener objects for transparent message consumption from <span>message queues</span> via <span>JMS</span>, improvement of message sending over standard JMS APIs</li>
	<li>
		<b><span>Testing</span></b>: support classes for writing unit tests and integration tests</li>

</ul>
<h3>
	<span class="mw-headline" id="Inversion_of_Control_container">Inversion of Control container</span></h3>
<p>
	Central to the Spring Framework is its <span class="mw-redirect">Inversion of Control</span> container, which provides a consistent means of configuring and managing Java objects using <span class="mw-redirect">callbacks</span>. The container is responsible for managing object lifecycles: creating objects, calling initialization methods, and configuring objects by wiring them together.</p>
<p>
	Objects created by the container are also called <i>Managed Objects</i> or <i>Beans</i>. Typically, the container is configured by loading XML files containing <i>Bean definitions</i> which provide the information required to create the beans.</p>

<p>
	Objects can be obtained by means of <i>Dependency lookup</i> or <i><span>Dependency injection</span></i>. <i>Dependency lookup</i> is a pattern where a caller asks the container object for an object with a specific name or of a specific type. <i>Dependency injection</i> is a pattern where the container passes objects by name to other objects, via either <span class="mw-redirect">constructors</span>, properties, or <span>factory methods</span>.</p>

<p>
	In many cases it's not necessary to use the container when using other parts of the Spring Framework, although using it will likely make an application easier to configure and customize. The Spring container provides a consistent mechanism to configure applications and integrates with almost all Java environments, from small-scale applications to large enterprise applications.</p>
<p>
	The container can be turned into a partially-compliant <span class="mw-redirect">EJB3</span> container by means of the <span class="external text" rel="nofollow">Pitchfork</span> project. The Spring Framework is criticized by some as not being standards compliant.<sup style="display:none;" class="reference" id="cite_ref-4"><span><span>[</span>5<span>]</span></span></sup> However, <span class="external text" rel="nofollow">SpringSource</span> doesn't see EJB3 compliance as a major goal, and claims that the Spring Framework and the container allow for more powerful programming models.<sup style="display:none;" class="reference" id="cite_ref-5"><span><span>[</span>6<span>]</span></span></sup></p>

<h3>
	<span class="mw-headline" id="Aspect-oriented_programming_framework">Aspect-oriented programming framework</span></h3>
<p>
	The Spring Framework has its own <span>AOP</span> framework which modularizes <span>cross-cutting concerns</span> in <span class="mw-redirect">aspects</span>. The motivation for creating a separate AOP framework comes from the belief that it would be possible to provide basic AOP features without too much complexity in either design, implementation, or configuration. The SAOP framework also takes full advantage of the Spring Container.</p>
<p>

	The Spring AOP framework is interception based, and is configured at <span>runtime</span>. This removes the need for a compilation step or <span class="new">load-time weaving</span>. On the other hand, interception only allows for public or protected method execution on existing objects at a <span>join point</span>.</p>
<p>
	Compared to the <span>AspectJ</span> framework, Spring AOP is less powerful but also less complicated. Spring 1.2 includes support to configure AspectJ <span class="mw-redirect">aspects</span> in the container. Spring 2.0 added more integration with AspectJ; for example, the <span>pointcut</span> language is reused and can be mixed with SpAOP-based aspects. Further, Spring 2.0 added a Spring Aspects library which uses AspectJ to offer common Spring features such as declarative transaction management and dependency injection via AspectJ compile-time or load-time weaving. <span>SpringSource</span> also uses AspectJ for AOP in other Spring projects such as <span>Spring Roo</span> and Spring Insight, with <span>Spring Security</span> also offering an AspectJ-based aspect library.</p>

<p>
	Spring AOP has been designed to make it able to work with cross-cutting concerns inside the Spring Framework. Any object which is created and configured by the container can be <i>enriched</i> using Spring AOP.</p>
<p>
	The Spring Framework uses Spring AOP internally for transaction management, security, remote access, and <span class="mw-redirect">JMX</span>.</p>
<p>
	Since version 2.0 of the framework, Spring provides two approaches to the AOP configuration:</p>

<ul>
	<li>
		schema-based approach.</li>
	<li>
		@AspectJ-based annotation style.</li>
</ul>
<p>
	The Spring team decided not to introduce new AOP-related terminology; therefore, in the Spring reference documentation and API, terms such as <span>aspect</span>, <span>join point</span>, <span class="mw-redirect">advice</span>, <span>pointcut</span>, introduction, <span class="new">target object</span> (<span class="new">advised object</span>), <span class="new">AOP proxy</span>, and weaving all have the same meanings as in most other AOP frameworks (particularly <span>AspectJ</span>).</p>

<h3>
	<span class="mw-headline" id="Data_access_framework">Data access framework</span></h3>
<p>
	Spring's data access framework addresses common difficulties developers face when working with databases in applications. Support is provided for all popular data access frameworks in Java: <span class="mw-redirect">JDBC</span>, <span>iBatis</span>, <span>Hibernate</span>, <span>JDO</span>, <span>JPA</span>, <span>Oracle TopLink</span>, <span>Apache OJB</span>, and <span>Apache Cayenne</span>, among others.</p>

<p>
	For all of these supported frameworks, Spring provides these features:</p>
<ul>
	<li>
		<b>Resource management</b> - automatically acquiring and releasing database resources</li>
	<li>
		<b>Exception handling</b> - translating data access related exception to a Spring data access hierarchy</li>

	<li>
		<b>Transaction participation</b> - transparent participation in ongoing transactions</li>
	<li>
		<b>Resource unwrapping</b> - retrieving database objects from connection pool wrappers</li>
	<li>
		<b>Abstraction</b> for <span class="mw-redirect">BLOB</span> and <span>CLOB</span> handling</li>

</ul>
<p>
	All these features become available when using <i>Template</i> classes provided by Spring for each supported framework. Critics say these <i>Template</i> classes are intrusive and offer no advantage over using (for example) the <span>Hibernate</span> API.. directly.<sup style="display:none;" class="reference" id="cite_ref-6"><span><span>[</span>7<span>]</span></span></sup> In response, the Spring developers have made it possible to use the Hibernate and <span>JPA</span> APIs directly. This however requires transparent transaction management, as application code no longer assumes the responsibility to obtain and close database resources, and does not support exception translation.</p>

<p>
	Together with Spring's transaction management, its data access framework offers a flexible abstraction for working with data access frameworks. The Spring Framework doesn't offer a common data access API; instead, the full power of the supported APIs is kept intact. The Spring Framework is the only framework available in Java which offers managed data access environments outside of an application server or container.<sup style="display:none;" class="Template-Fact" style="white-space: nowrap;">[<i><span>citation needed</span></i>]</sup></p>
<p>
	While using Spring for transaction management with Hibernate, the following beans may have to be configured</p>
<ul>
	<li>
		DataSource like <code>com.mchange.v2.c3p0.ComboPooledDataSource</code> or <code><span class="external text" rel="nofollow">org.apache.commons.dbcp.BasicDataSource</span></code></li>

	<li>
		SessionFactory like <code><span class="external text" rel="nofollow">org.springframework.orm.hibernate3.LocalSessionFactoryBean</span></code> with a DataSource attribute</li>
	<li>
		HibernateProperties like <code><span class="external text" rel="nofollow">org.springframework.beans.factory.config.PropertiesFactoryBean</span></code></li>
	<li>
		TransactionManager like <code><span class="external text" rel="nofollow">org.springframework.orm.hibernate3.HibernateTransactionManager</span></code> with a SessionFactory attribute</li>

</ul>
<p>
	Other configurations</p>
<ul>
	<li>
		AOP configuration of cutting points using <code>&lt;aop:config&gt;</code></li>
	<li>
		Transaction semantics of AOP advice using <code>&lt;tx:advice&gt;</code></li>

</ul>
<h3>
	<span class="mw-headline" id="Transaction_management_framework">Transaction management framework</span></h3>
<p>
	Spring's transaction management framework brings an abstraction mechanism to the Java platform. Its abstraction is capable of:</p>
<ul>
	<li>
		working with local and <span>global transactions</span> (local transaction does not require an <span>application server</span>)</li>

	<li>
		working with <span>nested transactions</span></li>
	<li>
		working with transaction safepoints</li>
	<li>
		working in almost all environments of the <span class="mw-redirect">Java platform</span></li>

</ul>
<p>
	In comparison, <span>JTA</span> only supports <span>nested transactions</span> and <span>global transactions</span>, and requires an <span>application server</span> (and in some cases also deployment of applications in an application server).</p>
<p>

	The Spring Framework ships a <i>PlatformTransactionManager</i> for a number of transaction management strategies:</p>
<ul>
	<li>
		Transactions managed on a <span class="mw-redirect">JDBC</span> <i>Connection</i></li>
	<li>

		Transactions managed on <span>Object-relational mapping</span> <i>Units of Work</i></li>
	<li>
		Transactions managed via the JTA <i>TransactionManager</i> and <i>UserTransaction</i></li>
	<li>

		Transactions managed on other resources, like <span>object databases</span></li>
</ul>
<p>
	Next to this abstraction mechanism the framework also provides two ways of adding transaction management to applications:</p>
<ul>
	<li>
		Programmatically, by using Spring's <i>TransactionTemplate</i></li>

	<li>
		Configuratively, by using <span>metadata</span> like XML or Java 5 <span>annotations</span></li>
</ul>
<p>
	Together with Spring's data access framework - which integrates the transaction management framework - it is possible to set up a transactional system through configuration without having to rely on JTA or <span class="mw-redirect">EJB</span>. The transactional framework also integrates with <span>messaging</span> and <span>caching</span> engines.</p>

<p>
	The <span class="external text" rel="nofollow">BoneCP Spring/Hibernate page</span> contains a full example project of Spring used in conjunction with Hibernate.</p>
<h3>
	<span class="mw-headline" id="Model-view-controller_framework">Model-view-controller framework</span></h3>
<p>
	The Spring Framework features its own <span class="mw-redirect">MVC</span> framework, which wasn't originally planned. The Spring developers decided to write their own web framework as a reaction to what they perceived as the poor design of the popular <span class="mw-redirect">Jakarta Struts</span> web framework<sup style="display:none;" class="reference" id="cite_ref-7"><span><span>[</span>8<span>]</span></span></sup>, as well as deficiencies in other available frameworks. In particular, they felt there was insufficient separation between the presentation and request handling layers, and between the request handling layer and the model.<sup style="display:none;" class="reference" id="cite_ref-8"><span><span>[</span>9<span>]</span></span></sup></p>

<p>
	Like Struts, Spring MVC is a request-based framework. The framework defines <span>strategy</span> interfaces for all of the responsibilities which must be handled by a modern request-based framework. The goal of each interface is to be simple and clear so that it's easy for Spring MVC users to write their own implementations if they so choose. MVC paves the way for cleaner front end code. All interfaces are tightly coupled to the <span>Servlet API</span>. This tight coupling to the <span>Servlet API</span> is seen by some as a failure on the part of the Spring developers to offer a high-level abstraction for web-based applications<sup style="display:none;" class="Template-Fact" style="white-space: nowrap;">[<i><span>citation needed</span></i>]</sup>. However, this coupling makes sure that the features of the Servlet API remain available to developers while offering a high abstraction framework to ease working with said API.</p>

<p>
	The <i>DispatcherServlet</i> class is the <span>front controller</span><sup style="display:none;" class="reference" id="cite_ref-9"><span><span>[</span>10<span>]</span></span></sup> of the framework and is responsible for delegating control to the various interfaces during the execution phases of a <span>HTTP request</span>.</p>
<p>
	The most important interfaces defined by Spring MVC, and their responsibilities, are listed below:</p>

<ul>
	<li>
		HandlerMapping: selecting objects which handle incoming requests (handlers) based on any attribute or condition internal or external to those requests</li>
	<li>
		HandlerAdapter: execution of objects which handle incoming requests</li>
	<li>
		Controller: comes between Model and View to manage incoming requests and redirect to proper response. It essentially is like a gate that directs the incoming information. It switches between going into model or view.</li>
	<li>

		View: responsible for returning a response to the client. It is possible to go straight to view without going to the model part. It is also possible to go through all three.</li>
	<li>
		ViewResolver: selecting a <span class="new">View</span> based on a logical name for the view (use is not strictly required)</li>
	<li>
		HandlerInterceptor: interception of incoming requests comparable but not equal to <span>Servlet</span> filters (use is optional and not controlled by <i>DispatcherServlet</i>).</li>

	<li>
		LocaleResolver: resolving and optionally saving of the <span>locale</span> of an individual user</li>
	<li>
		MultipartResolver: facilitate working with file uploads by wrapping incoming requests</li>
</ul>
<p>
	Each <span>strategy</span> interface above has an important responsibility in the overall framework. The abstractions offered by these interfaces are powerful, so to allow for a set of variations in their implementations, Spring MVC ships with implementations of all these interfaces and together offers a feature set on top of the <span>Servlet API</span>. However, developers and vendors are free to write other implementations. Spring MVC uses the Java <code>java.util.Map</code> interface as a data-oriented abstraction for the <i>Model</i> where keys are expected to be string values.</p>

<p>
	The ease of testing the implementations of these interfaces seems one important advantage of the high level of abstraction offered by Spring MVC. <i>DispatcherServlet</i> is tightly coupled to the Spring <span class="mw-redirect">Inversion of Control</span> container for configuring the web layers of applications. However, applications can use other parts of the Spring Framework-including the container-and choose not to use Spring MVC.</p>
<p>
	Because Spring MVC uses the Spring container for configuration and assembly, web-based applications can take full advantage of the <span class="mw-redirect">Inversion of Control</span> features offered by the container. This framework allows for multilayering. It allows for the code to be broken apart and used more effectively in segments, while allowing the mvc to do the work. It allows for back and forth transmission of data. Some designs are more linear without allowing a forward and backward flow of information. MVC is designed very nicely to allow this interaction. It is used more than just in web design, but also in computer programming. It's very effective for web design. Basically allows a checks and balance system to occur where before being viewed it can be properly examined.</p>

<h3>
	<span class="mw-headline" id="Remote_access_framework">Remote access framework</span></h3>
<p>
	Spring's Remote Access framework is an abstraction for working with various RPC-based technologies available on the <span class="mw-redirect">Java platform</span> both for client connectivity and exporting objects on servers. The most important feature offered by this framework is to ease configuration and usage of these technologies as much as possible by combining <span class="mw-redirect">Inversion of Control</span> and <span>AOP</span>.</p>

<p>
	The framework also provides fault-recovery (automatic reconnection after connection failure) and some optimizations for client-side use of <span class="mw-redirect">EJB</span> remote stateless session beans.</p>
<p>
	Spring provides support for these protocols and products out of the box:</p>
<ul>
	<li>
		<b><span>HTTP</span>-based protocols</b>

		<ul>
			<li>
				<span>Hessian</span>: binary serialization protocol, open-sourced and maintained by <span>CORBA</span>-based protocols</li>
			<li>
				<span>RMI</span> (1): method invocations using RMI infrastructure yet specific to Spring</li>

			<li>
				<span>RMI</span> (2): method invocations using RMI interfaces complying with regular RMI usage</li>
			<li>
				<span>RMI-IIOP</span> (<span>CORBA</span>): method invocations using RMI-IIOP/CORBA</li>
		</ul>

	</li>
	<li>
		<b><span>Enterprise JavaBean</span> client integration</b>
		<ul>
			<li>
				Local <span class="mw-redirect">EJB</span> stateless session bean connectivity: connecting to local stateless session beans</li>

			<li>
				Remote EJB stateless session bean connectivity: connecting to remote stateless session beans</li>
		</ul>
	</li>
	<li>
		<b><span class="mw-redirect">SOAP</span></b>
		<ul>
			<li>

				Integration with the <span>Apache Axis</span> web services framework</li>
		</ul>
	</li>
</ul>
<p>
	<span>Apache CXF</span> provides integration with the Spring Framework for RPC-style exporting of object on the server side.</p>

<p>
	Both client and server setup for all RPC-style protocols and products supported by the Spring Remote access framework (except for the <span>Apache Axis</span> support) is configured in the Spring Core container.</p>
<p>
	There is alternative open-source implementation (<span class="external text" rel="nofollow">Cluster4Spring</span>) of a remoting subsystem included into Spring Framework which is intended to support various schemes of remoting (1-1, 1-many, dynamic services discovering).</p>
<h3>
	<span class="mw-headline" id="Convention-Over-Configuration_Rapid_Application_Development">Convention-Over-Configuration Rapid Application Development</span></h3>

<p>
	<span>Spring Roo</span> is Spring's <span>Convention-over-configuration</span> solution for rapidly building applications in <span>Java</span>. It currently supports Spring Framework, <span>Spring Security</span> and <span>Spring Web Flow</span>, with remaining Spring projects scheduled to be added in due course. Roo differs from other <span>rapid application development</span> frameworks by focusing on:</p>

<ul>
	<li>
		Java platform productivity (as opposed to other languages)</li>
	<li>
		Usability (particularly via the shell features and usage patterns)</li>
	<li>
		Runtime avoidance (with associated deployment advantages)</li>
	<li>

		Lock-in avoidance (Roo can be removed within a few minutes from any application)</li>
	<li>
		Extensibility (via add-ons)</li>
</ul>
<h3>
	<span class="mw-headline" id="Batch_Framework">Batch Framework</span></h3>
<p>
	<span>Spring Batch</span> is a framework for <span>batch processing</span> that provides reusable functions that are essential in processing large volumes of records, including:</p>

<ul>
	<li>
		logging/tracing</li>
	<li>
		transaction management</li>
	<li>
		job processing statistics</li>
	<li>

		job restart</li>
	<li>
		skip</li>
	<li>
		resource management</li>
	<li>
		Convert checked Exception to Unchecked</li>

</ul>
<p>
	It also provides more advanced technical services and features that will enable extremely high-volume and high performance batch jobs through optimizations and partitioning techniques.</p>

<!-- end content here -->

<jsp:include page="contentFooter.jsp"/>