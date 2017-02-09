<jsp:include page="../contentHeader.jsp">
<jsp:param name="docTitle" value="CodeArchives - Intercepting Filter Design Pattern" />
</jsp:include>


<!-- start content here -->

<div class="dpHeading">
<span style="font-weight:bold;">Intercepting Filter Design Pattern</span>
</div>
<br/>
<br/>
<span style="font-size:16px;border-bottom:2px solid #ff0000;">Graphical Representation:</span>
<br/>
<br/>

<div id="img_interceptingfilter">
</div>
<iframe style="display:none;" onload="(function(){new ImageLoader('img_interceptingfilter','archive/resources/images/dp/interceptingfilter.png',484,319).loadImage();})();"></iframe>

<div>

<br/><br/><h2><span>Context</span></h2>

<p><span>The
presentation-tier request handling mechanism receives many different types of
requests, which require varied types of processing. Some requests are simply
forwarded to the appropriate handler component, while other requests must be
modified, audited, or uncompressed before being further processed.</span></p>

<br/><br/><h2><span>Problem</span></h2>

<p><span>Preprocessing
and post-processing of a client Web request and response are required.</span></p>

<p><span>When a request
enters a Web application, it often must pass several entrance tests prior to
the main processing stage. </span><span>For example,</span></p>

<p><span>-<span>                   
</span></span><span><span>Has the client been authenticated?</span></span></p>

<p><span>-<span>                   
</span></span><span><span>Does the client have a valid session?</span></span></p>

<p><span>-<span>                   
</span></span><span><span>Is the client's IP address from a trusted network?</span></span></p>

<p><span>-<span>                   
</span></span><span><span>Does the request path violate any constraints?</span></span></p>

<p><span>-<span>                   
</span></span><span><span>What encoding does the client use to send the data?</span></span></p>

<p><span>-<span>                   
</span></span><span><span>Do we support the browser type of the client?</span></span></p>

<p><span>Some of these
checks are tests, resulting in a yes or no answer that determines whether
processing will continue. Other checks manipulate the incoming data stream into
a form suitable for processing.</span></p>

<p><span>The classic
solution consists of a series of conditional checks, with any failed check
aborting the request. Nested if/else statements are a standard strategy, but
this solution leads to code fragility and a copy-and-paste style of programming,
because the flow of the filtering and the action of the filters is compiled
into the application.</span></p>

<p><span>The key to
solving this problem in a flexible and unobtrusive manner is to have a simple
mechanism for adding and removing processing components, in which each
component completes a specific filtering action.</span></p>

<br/><br/><h2><span>Forces</span></h2>

<p><span>-<span>                   
</span></span><span><span>Common processing, such as checking the data-encoding scheme or
logging information about each request, completes per request.</span></span></p>

<p><span>-<span>                   
</span></span><span><span>Centralization of common logic is desired.</span></span></p>

<p><span>-<span>                   
</span></span><span><span>Services should be easy to add or remove unobtrusively without
affecting existing components, so that they can be used in a variety of
combinations, such as</span></span></p>

<p><span>o<span>                             
</span></span><span><span>Logging and authentication</span></span></p>

<p><span>o<span>                             
</span></span><span><span>Debugging and transformation of output for a specific client</span></span></p>

<p><span>o<span>                             
</span></span><span><span>Uncompressing and converting encoding scheme of input</span></span></p>

<br/><br/><h2><span>Solution</span></h2>

<p><b><span>Create
pluggable filters to process common services in a standard manner without
requiring changes to core request processing code. The filters intercept
incoming requests and outgoing responses, allowing preprocessing and post-processing.
We are able to add and remove these filters unobtrusively, without requiring
changes to our existing code.</span></b></p>

<p><span>We are able,
in effect, to decorate our main processing with a variety of common services,
such as security, logging, debugging, and so forth. These filters are
components that are independent of the main application code, and they may be
added or removed declaratively. For example, a deployment configuration file
may be modified to set up a chain of filters. The same configuration file might
include a mapping of specific URLs to this filter chain. When a client requests
a resource that matches this configured URL mapping, the filters in the chain
are each processed in order before the requested target resource is invoked.</span></p>

<br/><br/><h3><span>Participants and Responsibilities</span></h3>

<h4><span>FilterManager</span></h4>

<p><span>The
FilterManager manages filter processing. It creates the FilterChain with the
appropriate filters, in the correct order, and initiates processing.</span></p>

<h4><span>FilterChain</span></h4>

<p><span>The
FilterChain is an ordered collection of independent filters.</span></p>

<h4><span>FilterOne, FilterTwo, FilterThree</span></h4>

<p><span>These are the
individual filters that are mapped to a target. The FilterChain coordinates
their processing.</span></p>

<h4><span>Target</span></h4>

<p><span>The Target is
the resource requested by the client.</span></p>

<br/><br/><h2><span>Consequences</span></h2>

<p><span>-<span>                   
</span></span><span><b><span>Centralizes Control with Loosely Coupled Handlers</span></b></span><span><br>
Filters provide a central place for handling processing across multiple
requests, as does a controller. Filters are better suited to massaging requests
and responses for ultimate handling by a target resource, such as a controller.
Additionally, a controller often ties together the management of numerous
unrelated common services, such as authentication, logging, encryption, and so
forth, while filtering allows for much more loosely coupled handlers, which can
be combined in various combinations.</span></p>

<p><span>-<span>                   
</span></span><span><b><span>Improves Reusability</span></b></span><span><br>
Filters promote cleaner application partitioning and encourages reuse. These
pluggable interceptors are transparently added or removed from existing code,
and due to their standard interface, they work in any combination and are
reusable for varying presentations.</span></p>

<p><span>-<span>                   
</span></span><span><b><span>Declarative and Flexible Configuration</span></b></span><span><br>
Numerous services are combined in varying permutations without a single
recompile of the core code base.</span></p>

<p><b><span>Information Sharing is Inefficient</span></b><span><br>
Sharing information between filters can be inefficient, since by definition
each filter is loosely coupled. If large amounts of information must be shared
between filters, then this approach may prove to be costly.</span></p>

</div>
<!-- end content here -->

<jsp:include page="../contentFooter.jsp"/>