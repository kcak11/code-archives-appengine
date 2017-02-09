<jsp:include page="../contentHeader.jsp">
<jsp:param name="docTitle" value="CodeArchives - Chain of Responsibility Design Pattern" />
</jsp:include>


<!-- start content here -->

<div class="dpHeading">
<span style="font-weight:bold;">Chain of Responsibility Design Pattern</span>
</div>
<br/>
<br/>
<span style="font-size:16px;border-bottom:2px solid #ff0000;">Graphical Representation:</span>
<br/>
<br/>

<div id="img_chainofresponsibility">
</div>
<iframe style="display:none;" onload="(function(){new ImageLoader('img_chainofresponsibility','archive/resources/images/dp/chainofresponsibility.png',604,336).loadImage();})();"></iframe>

<div>

<br/><br/><h3><span>Intent</span></h3>

<p><span>-<span>                    
</span></span><span><span>Avoid
coupling the sender of a request to its receiver by giving more than one object
a chance to handle the request. Chain the receiving objects and pass the
request along the chain until an object handles it.</span></span></p>

<p><span>-<span>                    
</span></span><span><span>Launch-and-leave
requests with a single processing pipeline that contains many
possible handlers.</span></span></p>

<p><span>-<span>                    
</span></span><span><span>An
object-oriented linked list with recursive traversal.</span></span></p>

<br/><br/><h3><span>Problem</span></h3>

<p><span>There is a potentially variable
number of "handler" or "processing element" or "node" objects, and a stream of
requests that must be handled. Need to efficiently process the requests without
hard-wiring handler relationships and precedence, or
request-to-handler mappings.</span></p>

<br/><br/><h3><span>Discussion</span></h3>

<p><span>Encapsulate the processing elements
inside a "pipeline" abstraction; and have clients "launch and leave" their
requests at the entrance to the pipeline.</span></p>

<p><span>The pattern chains the receiving
objects together, and then passes any request messages from object to object
until it reaches an object capable of handling the message. The number and type
of handler objects isn't known a priori, they can be configured dynamically.
The chaining mechanism uses recursive composition to allow an unlimited number
of handlers to be linked.</span></p>

<p><span>Chain of Responsibility simplifies
object interconnections. Instead of senders and receivers maintaining
references to all candidate receivers, each sender keeps a single reference to
the head of the chain, and each receiver keeps a single reference to its
immediate successor in the chain.</span></p>

<p><span>Make sure there exists a "safety net"
to "catch" any requests which go unhandled.</span></p>

<p><span>Do not use Chain of Responsibility
when each request is only handled by one handler, or, when the client object
knows which service object should handle the request.</span></p>

<br/><br/><h3><span>Structure</span></h3>

<p><span>The derived classes know how to
satisfy Client requests. If the "current" object is not available or
sufficient, then it delegates to the base class, which delegates to the "next"
object, and the circle of life continues.</span></p>

<p><span><span>Multiple handlers could contribute to the handling of each request.
The request can be passed down the entire length of the chain, with the last
link being careful not to delegate to a "null next".</span></span></p>

<br/><br/><h3><span>Check list</span></h3>

<p><span>1.<span>             
</span></span><span><span>The
base class maintains a "next" pointer.</span></span></p>

<p><span>2.<span>             
</span></span><span><span>Each
derived class implements its contribution for handling the request.</span></span></p>

<p><span>3.<span>             
</span></span><span><span>If
the request needs to be "passed on", then the derived class "calls back" to the
base class, which delegates to the "next" pointer.</span></span></p>

<p><span>4.<span>             
</span></span><span><span>The
client (or some third party) creates and links the chain (which may include a
link from the last node to the root node).</span></span></p>

<p><span>5.<span>             
</span></span><span><span>The
client "launches and leaves" each request with the root of the chain.</span></span></p>

<p><span>6.<span>             
</span></span><span><span>Recursive
delegation produces the illusion of magic.</span></span></p>

<br/><br/><h3><span>Rules of thumb</span></h3>

<p><span>-<span>                    
</span></span><span><span>Chain
of Responsibility, Command, Mediator, and Observer, address how you can
decouple senders and receivers, but with different trade-offs. Chain of
Responsibility passes a sender request along a chain of
potential receivers.</span></span></p>

<p><span>-<span>                    
</span></span><span><span>Chain
of Responsibility can use Command to represent requests as objects.</span></span></p>

<p><span>Chain of
Responsibility is often applied in conjunction with Composite. </span><span>There, a component's parent
can act as its successor.</span></p>

</div>
<!-- end content here -->

<jsp:include page="../contentFooter.jsp"/>