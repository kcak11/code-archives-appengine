<jsp:include page="../contentHeader.jsp">
<jsp:param name="docTitle" value="CodeArchives - Proxy Design Pattern" />
</jsp:include>


<!-- start content here -->

<div class="dpHeading">
<span style="font-weight:bold;">Proxy Design Pattern</span>
</div>
<br/>
<br/>
<span style="font-size:16px;border-bottom:2px solid #ff0000;">Graphical Representation:</span>
<br/>
<br/>

<div id="img_proxy">
</div>
<iframe style="display:none;" onload="(function(){new ImageLoader('img_proxy','archive/resources/images/dp/proxy.png',477,320).loadImage();})();"></iframe>

<div>

<br/><br/><h3><span>Intent</span></h3>

<p><span>-<span>                    
</span></span><span><span>Provide
a surrogate or placeholder for another object to control access to it.</span></span></p>

<p><span>-<span>                    
</span></span><span><span>Use
an extra level of indirection to support distributed, controlled, or
intelligent access.</span></span></p>

<p><span>-<span>                    
</span></span><span><span>Add
a wrapper and delegation to protect the real component from
undue complexity.</span></span></p>

<br/><br/><h3><span>Problem</span></h3>

<p><span>You need to support resource-hungry
objects, and you do not want to instantiate such objects unless and until they
are actually requested by the client.</span></p>

<br/><br/><h3><span>Discussion</span></h3>

<p><span>Design a surrogate, or proxy, object
that: instantiates the real object the first time the client makes a request of
the proxy, remembers the identity of this real object, and forwards the
instigating request to this real object. Then all subsequent requests are
simply forwarded directly to the encapsulated real object.</span></p>

<p><span>There are four common situations in
which the Proxy pattern is applicable.</span></p>

<p><span>1.<span>             
</span></span><span><span>A
virtual proxy is a placeholder for "expensive to create" objects. The real
object is only created when a client first requests/accesses the object.</span></span></p>

<p><span>2.<span>             
</span></span><span><span>A
remote proxy provides a local representative for an object that resides in a
different address space. This is what the "stub" code in RPC and
CORBA provides.</span></span></p>

<p><span>3.<span>             
</span></span><span><span>A
protective proxy controls access to a sensitive master object. The "surrogate" object
checks that the caller has the access permissions required prior to forwarding
the request.</span></span></p>

<p><span>4.<span>             
</span></span><span><span>A
smart proxy interposes additional actions when an object is accessed. </span></span><span>Typical uses include:<span> </span><br>
<br>
</span></p>

<p><span>o<span>                                       
</span></span><span><span>Counting
the number of references to the real object so that it can be freed
automatically when there are no more references (aka smart pointer),</span></span></p>

<p><span>o<span>                                       
</span></span><span><span>Loading
a persistent object into memory when it's first referenced,</span></span></p>

<p><span>o<span>                                       
</span></span><span><span>Checking
that the real object is locked before it is accessed to ensure that no other
object can change it.</span></span></p>

<br/><br/><h3><span>Structure</span></h3>

<p><span>By defining a Subject interface, the
presence of the Proxy object standing in place of the RealSubject is
transparent to the client.</span></p>

<br/><br/><h3><span>Check list</span></h3>

<p><span>1.<span>             
</span></span><span><span>Identify
the leverage or "aspect" that is best implemented as a wrapper
or surrogate.</span></span></p>

<p><span>2.<span>             
</span></span><span><span>Define
an interface that will make the proxy and the original
component interchangeable.</span></span></p>

<p><span>3.<span>             
</span></span><span><span>Consider
defining a Factory that can encapsulate the decision of whether a proxy or
original object is desirable.</span></span></p>

<p><span>4.<span>             
</span></span><span><span>The
wrapper class holds a pointer to the real class and implements
the interface.</span></span></p>

<p><span>5.<span>             
</span></span><span><span>The
pointer may be initialized at construction, or on first use.</span></span></p>

<p><span>6.<span>             
</span></span><span><span>Each
wrapper method contributes its leverage, and delegates to the
wrappee object.</span></span></p>

<br/><br/><h3><span>Rules of thumb</span></h3>

<p><span>-<span>                    
</span></span><span><span>Adapter
provides a different interface to its subject. Proxy provides the same
interface. </span></span><span>Decorator
provides an enhanced interface.</span></p>

<p><span>Decorator
and Proxy have different purposes but similar structures. Both describe how to
provide a level of indirection to another object, and the implementations keep
a reference to the object to which they forward requests.</span></p>

</div>
<!-- end content here -->

<jsp:include page="../contentFooter.jsp"/>