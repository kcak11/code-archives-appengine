<jsp:include page="contentHeader.jsp">
<jsp:param name="docTitle" value="CodeArchives - Hibernate" />
</jsp:include>

<img src="archive/resources/images/topics/hibernate.png"/>

<!-- start content here -->
<table class="infobox vevent" style="width: 597px; height: 309px;" cellspacing="5">
	<caption class="summary" style="">
		&nbsp;</caption>
	<tbody>
		
		<tr>
			<th scope="row" style="text-align: left; white-space: nowrap;">
				<span>Developer(s)</span></th>
			<td style="">
				<span>Red Hat</span></td>
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
				<span>Cross-platform</span> (<span class="mw-redirect">JVM</span>)</td>

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
				<span>Object-relational mapping</span></td>
		</tr>
		<tr>
			<th scope="row" style="text-align: left; white-space: nowrap;">
				<span>License</span></th>

			<td style="">
				<span>GNU Lesser General Public License</span></td>
		</tr>
	</tbody>
</table>
<p>
	<b>Hibernate</b> is an <span>object-relational mapping</span> (ORM) library for the <span>Java</span> language, providing a <span>framework</span> for mapping an <span>object-oriented</span> <span>domain model</span> to a traditional <span>relational database</span>. Hibernate solves <span>object-relational impedance mismatch</span> problems by replacing direct <span>persistence</span>-related database accesses with high-level object handling functions.</p>

<p>
	Hibernate is <span>free software</span> that is distributed under the <span>GNU Lesser General Public License</span>.</p>
<p>
	Hibernate's primary feature is mapping from Java classes to database tables (and from Java data types to <span>SQL</span> data types). Hibernate also provides data query and retrieval facilities. Hibernate generates the SQL calls and attempts to relieve the developer from manual result set handling and object conversion and keep the application portable to all supported SQL databases with little performance overhead.</p>

<h2>
	<span class="mw-headline" id="Mapping">Mapping</span></h2>
<p>
	Mapping Java classes to database tables is accomplished through the configuration of an <span>XML</span> file or by using <span>Java Annotations</span>. When using an XML file, Hibernate can <span>generate</span> skeletal <span>source code</span> for the persistence classes. This is unnecessary when annotation is used. Hibernate can use the XML file or the annotation to maintain the <span>database schema</span>.</p>

<p>
	Facilities to arrange <span>one-to-many</span> and <span>many-to-many</span> relationships between classes are provided. In addition to managing association between objects, Hibernate can also manage <span>reflexive</span> associations where an object has a one-to-many relationship with other instances of its own <span>type</span>.</p>
<p>
	Hibernate supports the mapping of custom value types. This makes the following scenarios possible:</p>

<ul>
	<li>
		Overriding the default SQL type that Hibernate chooses when mapping a column to a property.</li>
	<li>
		Mapping Java <span>Enum</span> to columns as if they were regular properties.</li>
	<li>
		Mapping a single property to multiple columns.</li>

</ul>
<h2>
	<span class="mw-headline" id="Persistence">Persistence</span></h2>
<p>
	Hibernate provides transparent persistence for <span>Plain Old Java Objects</span> (POJOs). The only strict requirement for a persistent class is a no-argument <span class="mw-redirect">constructor</span>, not necessarily <i>public</i>. Proper behavior in some applications also requires special attention to the <i>equals()</i> and <i>hashCode()</i> methods.<sup style="display:none;" class="reference" id="cite_ref-0"><span><span>[</span>1<span>]</span></span></sup></p>

<p>
	Collections of data objects are typically stored in Java collection objects such as Set and List. <span>Java generics</span>, introduced in Java 5, are supported. Hibernate can be configured to <span class="mw-redirect">lazy load</span> associated collections. Lazy loading is the default as of Hibernate 3.</p>
<p>
	Related objects can be configured to <i>cascade</i> operations from one to the other. For example, a parent such as an Album object can be configured to cascade its save and/or delete operation to its child Track objects. This can reduce development time and ensure <span>referential integrity</span>. A <i>dirty checking</i> feature avoids unnecessary database write actions by performing SQL updates only on the modified fields of persistent objects.</p>

<h2>
	<span class="mw-headline" id="Hibernate_Query_Language_.28HQL.29">Hibernate Query Language (HQL)</span></h2>
<p>
	Hibernate provides an <span>SQL</span> inspired language called <span class="mw-redirect">Hibernate Query Language</span> (HQL) which allows SQL-like queries to be written against Hibernate's data objects. <i>Criteria Queries</i> are provided as an <span>object-oriented</span> alternative to HQL.</p>

<h2>
	<span class="mw-headline" id="Integration">Integration</span></h2>
<p>
	Hibernate can be used both in <span class="mw-redirect">standalone</span> <span>Java</span> applications and in <span class="mw-redirect">Java EE</span> applications using <span>servlets</span> or <span class="mw-redirect">EJB</span> session beans. It can also be included as a feature in other programming languages. For example, <span>Adobe</span> integrated Hibernate into version 9 of <span>ColdFusion</span> (which runs on J2EE app servers) with an abstraction layer of new functions and syntax added into <span class="mw-redirect">CFML</span>.</p>

<h2>
	<span class="mw-headline" id="Entities_and_components">Entities and components</span></h2>
<p>
	In Hibernate <span>jargon</span>, an <i>entity</i> is a stand-alone object in Hibernate's <span>persistent</span> mechanism which can be manipulated independently of other objects. In contrast, a <i>component</i> is subordinate to other entities and can be manipulated only with respect to other entities. For example, an Album object may represent an entity but the Tracks object associated with the Album objects would represent a <i>component</i> of the Album entity if it is assumed that Tracks can only be saved or retrieved from the database through the Album object. Unlike J2EE, it can switch databases.</p>

<h2>
	<span class="mw-headline" id="History">History</span></h2>
<p>
	Hibernate was started in 2001 by Gavin King as an alternative to using EJB2-style entity beans. Its mission back then was to simply offer better persistence capabilities than offered by EJB2 by simplifying the complexities and allowing for missing features.</p>
<p>
	Early in 2003, the Hibernate development team began Hibernate2 releases which offered many significant improvements over the first release.</p>
<p>
	<span>JBoss, Inc.</span> (now part of <span>Red Hat</span>) later hired the lead Hibernate developers and worked with them in supporting Hibernate.</p>

<p>
	As of 2010<sup style="display:none;" class="plainlinks noprint asof-tag update" style="display: none;"><span class="external text" rel="nofollow">[update]</span></sup> the current version of Hibernate is Version 3.x. This version introduced new features like a new Interceptor/Callback architecture, user defined filters, and JDK 5.0 <span>Annotations</span> (Java's <span>metadata</span> feature). As of 2010<sup style="display:none;" class="plainlinks noprint asof-tag update" style="display: none;"><span class="external text" rel="nofollow">[update]</span></sup> Hibernate 3 (version 3.5.0 and up) is a certified implementation of the <span>Java Persistence API 2.0</span> specification via a wrapper for the Core module which provides conformity with the <span class="external text" rel="nofollow">JSR 317</span> standard.<sup style="display:none;" class="reference" id="cite_ref-1"><span><span>[</span>2<span>]</span></span></sup></p>

<h2>
	<span class="mw-headline" id="Application_programming_interface">Application programming interface</span></h2>
<p>
	The Hibernate API is provided in the <span>Java package</span> <span class="external text" rel="nofollow">org.hibernate</span>.</p>
<h3>
	<span class="mw-headline" id="org.hibernate.SessionFactory_interface"><span class="external text" rel="nofollow">org.hibernate.SessionFactory</span> interface</span></h3>

<p>
	References immutable and threadsafe object creating new Hibernate sessions. Hibernate-based applications are usually designed to make use only of a single instance of the class implementing this interface (often exposed using a <span>singleton design pattern</span>).</p>
<h3>
	<span class="mw-headline" id="org.hibernate.Session_interface"><span class="external text" rel="nofollow">org.hibernate.Session</span> interface</span></h3>
<p>
	Represents a Hibernate session i.e. the main point of the manipulation performed on the database entities. The latter activities include (among the other things) managing the persistence state (transient, persisted, detached) of the objects, fetching the persisted ones from the database and the management of the transaction demarcation.</p>
<p>

	A session is intended to last as long as the logical transaction on the database. Due to the latter feature Session implementations are not expected to be threadsafe nor to be used by multiple clients.</p>
<!-- end content here -->

<jsp:include page="contentFooter.jsp"/>
