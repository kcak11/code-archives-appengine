<jsp:include page="../contentHeader.jsp">
<jsp:param name="docTitle" value="CodeArchives - Front Controller Design Pattern" />
</jsp:include>


<!-- start content here -->

<div class="dpHeading">
<span style="font-weight:bold;">Front Controller Design Pattern</span>
</div>
<br/>
<br/>
<span style="font-size:16px;border-bottom:2px solid #ff0000;">Graphical Representation:</span>
<br/>
<br/>

<div id="img_frontcontroller">
</div>
<iframe style="display:none;" onload="(function(){new ImageLoader('img_frontcontroller','archive/resources/images/dp/frontcontroller.png',649,462).loadImage();})();"></iframe>

<div>

<br/><br/><h2><span>Context</span></h2>

<p><span>The
presentation-tier request handling mechanism must control and coordinate
processing of each user across multiple requests. Such control mechanisms may
be managed in either a centralized or decentralized manner.</span></p>

<br/><br/><h2><span>Problem</span></h2>

<p><span>The system
requires a centralized access point for presentation-tier request handling to
support the integration of system services, content retrieval, view management,
and navigation. When the user accesses the view directly without going through
a centralized mechanism, two problems may occur:</span></p>

<p><span>-<span>                   
</span></span><span><span>Each view is required to provide its own system services, often
resulting in duplicate code.</span></span></p>

<p><span>-<span>                   
</span></span><span><span>View navigation is left to the views. This may result in
commingled view content and view navigation.</span></span></p>

<p><span>Additionally,
distributed control is more difficult to maintain, since changes will often
need to be made in numerous places.</span></p>

<br/><br/><h2><span>Forces</span></h2>

<p><span>-<span>                   
</span></span><span><span>Common system services processing completes per request. For
example, the security service completes authentication and authorization
checks.</span></span></p>

<p><span>-<span>                   
</span></span><span><span>Logic that is best handled in one central location is instead
replicated within numerous views.</span></span></p>

<p><span>-<span>                   
</span></span><span><span>Decision points exist with respect to the retrieval and
manipulation of data.</span></span></p>

<p><span>-<span>                   
</span></span><span><span>Multiple views are used to respond to similar business requests.</span></span></p>

<p><span>-<span>                   
</span></span><span><span>A centralized point of contact for handling a request may be
useful, for example, to control and log a user's progress through the site.</span></span></p>

<p><span>-<span>                   
</span></span><span><span>System services and view management logic are relatively
sophisticated.</span></span></p>

<br/><br/><h2><span>Solution</span></h2>

<p><b><span>Use a
controller as the initial point of contact for handling a request. The
controller manages the handling of the request, including invoking security
services such as authentication and authorization, delegating business
processing, managing the choice of an appropriate view, handling errors, and
managing the selection of content creation strategies.</span></b></p>

<p><span>The controller
provides a centralized entry point that controls and manages Web request
handling. By centralizing decision points and controls, the controller also
helps reduce the amount of Java code, called<span> </span><em><span>scriptlets,</span></em><span> </span>embedded in the JavaServer Pages (JSP)
page.</span></p>

<p><span>Centralizing
control in the controller and reducing business logic in the view promotes code
reuse across requests. It is a preferable approach to the alternative-embedding
code in multiple views-because that approach may lead to a more error-prone,
reuse-by-copy- and-paste environment.</span></p>

<p><span>Typically, a
controller coordinates with a dispatcher component. Dispatchers are responsible
for view management and navigation. Thus, a dispatcher chooses the next view
for the user and vectors control to the resource. Dispatchers may be
encapsulated within the controller directly or can be extracted into a separate
component.</span></p>

<p><span>While the
Front Controller pattern suggests centralizing the handling of all requests, it
does not limit the number of handlers in the system, as does a Singleton. An
application may use multiple controllers in a system, each mapping to a set of
distinct services.</span></p>

<br/><br/><h3><span>Participants and Responsibilities</span></h3>

<h4><span>Controller</span></h4>

<p><span>The controller
is the initial contact point for handling all requests in the system. The
controller may delegate to a helper to complete authentication and
authorization of a user or to initiate contact retrieval.</span></p>

<h4><span>Dispatcher</span></h4>

<p><span>A dispatcher
is responsible for view management and navigation, managing the choice of the
next view to present to the user, and providing the mechanism for vectoring
control to this resource.</span></p>

<p><span>A dispatcher
can be encapsulated within a controller or can be a separate component working
in coordination. The dispatcher provides either a static dispatching to the
view or a more sophisticated dynamic dispatching mechanism.</span></p>

<p><span>The dispatcher
uses the RequestDispatcher object (supported in the servlet specification) and
encapsulates some additional processing.</span></p>

<h4><span>Helper</span></h4>

<p><span>A helper is
responsible for helping a view or controller complete its processing. Thus,
helpers have numerous responsibilities, including gathering data required by
the view and storing this intermediate model, in which case the helper is
sometimes referred to as a value bean. Additionally, helpers may adapt this
data model for use by the view. Helpers can service requests for data from the
view by simply providing access to the raw data or by formatting the data as
Web content.</span></p>

<p><span>A view may
work with any number of helpers, which are typically implemented as JavaBeans
components (JSP 1.0+) and custom tags (JSP 1.1+). Additionally, a helper may
represent a Command object, a delegate (see "Business Delegate" on
page 248), or an XSL Transformer, which is used in combination with a
stylesheet to adapt and convert the model into the appropriate form.</span></p>

<h4><span>View</span></h4>

<p><span>A view
represents and displays information to the client. The view retrieves
information from a model. Helpers support views by encapsulating and adapting
the underlying data model for use in the display.</span></p>

<br/><br/><h3><span>Strategies</span></h3>

<p><span>There are
several strategies for implementing a controller.</span></p>

<h4><span>Servlet Front Strategy</span></h4>

<p><span>This strategy
suggests implementing the controller as a servlet. Though semantically
equivalent, it is preferred to the JSP Front Strategy. The controller manages
the aspects of request handling that are related to business processing and
control flow. These responsibilities are related to, but logically independent
of, display formatting, and are more appropriately encapsulated in a servlet
rather than in a JSP page.</span></p>

<br/><br/><h2><span>Consequences</span></h2>

<p><span>-<span>                   
</span></span><span><b><span>Centralizes Control</span></b></span><span><br>
A controller provides a central place to handle system services and business
logic across multiple requests. A controller manages business logic processing
and request handling. Centralized access to an application means that requests
are easily tracked and logged. Keep in mind, though, that as control centralizes,
it is possible to introduce a single point of failure. In practice, this rarely
is a problem, though, since multiple controllers typically exist, either within
a single server or in a cluster.</span></p>

<p><span>-<span>                   
</span></span><span><b><span>Improves Manageability of Security</span></b></span><span><br>
A controller centralizes control, providing a choke point for illicit access
attempts into the Web application. In addition, auditing a single entrance into
the application requires fewer resources than distributing security checks
across all pages.</span></p>

<p><b><span>Improves Reusability</span></b><span><br>
A controller promotes cleaner application partitioning and encourages reuse, as
code that is common among components moves into a controller or is managed by a
controller.</span></p>

</div>
<!-- end content here -->

<jsp:include page="../contentFooter.jsp"/>