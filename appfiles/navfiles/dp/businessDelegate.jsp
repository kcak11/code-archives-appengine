<jsp:include page="../contentHeader.jsp">
<jsp:param name="docTitle" value="CodeArchives - Business Delegate Design Pattern" />
</jsp:include>


<!-- start content here -->

<div class="dpHeading">
<span style="font-weight:bold;">Business Delegate Design Pattern</span>
</div>
<br/>
<br/>
<span style="font-size:16px;border-bottom:2px solid #ff0000;">Graphical Representation:</span>
<br/>
<br/>

<div id="img_businessdelegate">
</div>
<iframe style="display:none;" onload="(function(){new ImageLoader('img_businessdelegate','archive/resources/images/dp/businessdelegate.png',875,359).loadImage();})();"></iframe>

<div>

<br/><br/><h3><span>Context</span></h3>

<p><span>A
multi-tiered, distributed system requires remote method invocations to send and
receive data across tiers. Clients are exposed to the complexity of dealing
with distributed components.</span></p>

<br/><br/><h3><span>Problem</span></h3>

<p><span>Presentation-tier
components interact directly with business services. This direct interaction
exposes the underlying implementation details of the business service
application program interface (API) to the presentation tier. As a result, the
presentation-tier components are vulnerable to changes in the implementation of
the business services: When the implementation of the business services change,
the exposed implementation code in the presentation tier must change too.</span></p>

<p><span>Additionally,
there may be a detrimental impact on network performance because
presentation-tier components that use the business service API make too many
invocations over the network. This happens when presentation-tier components
use the underlying API directly, with no client-side caching mechanism or aggregating
service.</span></p>

<p><span>Lastly,
exposing the service APIs directly to the client forces the client to deal with
the networking issues associated with the distributed nature of Enterprise
JavaBeans (EJB) technology.</span></p>

<br/><br/><h3><span>Forces</span></h3>

<p><span>-<span>                   
</span></span><span><span>Presentation-tier clients need access to business services.</span></span></p>

<p><span>-<span>                   
</span></span><span><span>Different clients, such as devices, Web clients, and thick
clients, need access to business service.</span></span></p>

<p><span>-<span>                   
</span></span><span><span>Business services APIs may change as business requirements evolve.</span></span></p>

<p><span>-<span>                   
</span></span><span><span>It is desirable to minimize coupling between presentation-tier clients
and the business service, thus hiding the underlying implementation details of
the service, such as lookup and access.</span></span></p>

<p><span>-<span>                   
</span></span><span><span>Clients may need to implement caching mechanisms for business
service information.</span></span></p>

<p><span>-<span>                   
</span></span><span><span>It is desirable to reduce network traffic between client and
business services.</span></span></p>

<br/><br/><h3><span>Solution</span></h3>

<p><b><span>Use a
Business Delegate to reduce coupling between presentation-tier clients and
business services. The Business Delegate hides the underlying implementation
details of the business service, such as lookup and access details of the EJB
architecture.</span></b></p>

<p><span>The Business
Delegate acts as a client-side business abstraction; it provides an abstraction
for, and thus hides, the implementation of the business services. Using a
Business Delegate reduces the coupling between presentation-tier clients and
the system's business services. Depending on the implementation strategy, the
Business Delegate may shield clients from possible volatility in the
implementation of the business service API. Potentially, this reduces the
number of changes that must be made to the presentation-tier client code when
the business service API or its underlying implementation changes.</span></p>

<p><span>However,
interface methods in the Business Delegate may still require modification if
the underlying business service API changes. Admittedly, though, it is more
likely that changes will be made to the business service rather than to the
Business Delegate.</span></p>

<p><span>Often,
developers are skeptical when a design goal such as abstracting the business
layer causes additional upfront work in return for future gains. However, using
this pattern or its strategies results in only a small amount of additional
upfront work and provides considerable benefits. The main benefit is hiding the
details of the underlying service. For example, the client can become
transparent to naming and lookup services. The Business Delegate also handles
the exceptions from the business services, such as java.rmi.Remote exceptions,
Java Messages Service (JMS) exceptions and so on. The Business Delegate may
intercept such service level exceptions and generate application level
exceptions instead. Application level exceptions are easier to handle by the
clients, and may be user friendly. The Business Delegate may also transparently
perform any retry or recovery operations necessary in the event of a service
failure without exposing the client to the problem until it is determined that
the problem is not resolvable. These gains present a compelling reason to use
the pattern.</span></p>

<p><span>Another
benefit is that the delegate may cache results and references to remote
business services. Caching can significantly improve performance, because it
limits unnecessary and potentially costly round trips over the network.</span></p>

<p><span>A Business
Delegate uses a component called the Lookup Service. The Lookup Service is
responsible for hiding the underlying implementation details of the business
service lookup code. The Lookup Service may be written as part of the Delegate,
but we recommend that it be implemented as a separate component, as outlined in
the Service Locator pattern </span></p>

<p><span>When the
Business Delegate is used with a Session Facade, typically there is a
one-to-one relationship between the two. This one-to-one relationship exists
because logic that might have been encapsulated in a Business Delegate relating
to its interaction with multiple business services (creating a one-to-many
relationship) will often be factored back into a Session Facade.</span></p>

<p><span>Finally, it
should be noted that this pattern could be used to reduce coupling between
other tiers, not simply the presentation and the business tiers.</span></p>

<p><span><span>The BusinessDelegate uses a LookupService for
locating the business service. The business service is used to invoke the
business methods on behalf of the client. The Get ID method shows that the
BusinessDelegate can obtain a String version of the handle (such as EJBHandle
object) for the business service and return it to the client as a String. The
client can use the String version of the handle at a later time to reconnect to
the business service it was using when it obtained the handle. This technique
will avoid new lookups, since the handle is capable of reconnecting to its
business service instance. It should be noted that handle objects are
implemented by the container provider and may not be portable across containers
from different vendors.</span></span></p>

<h4><span>BusinessDelegate</span></h4>

<p><span>The
BusinessDelegate's role is to provide control and protection for the business
service. The BusinessDelegate can expose two types of constructors to clients.
One type of request instantiates the BusinessDelegate without an ID, while the
other instantiates it with an ID, where ID is a String version of the reference
to a remote object, such as EJBHome or EJBObject.</span></p>

<p><span>When initialized
without an ID, the BusinessDelegate requests the service from the Lookup
Service, typically implemented as a Service Locator, which returns the Service Factory, such as EJBHome.
The BusinessDelegate requests that the Service Factory locate, create, or
remove a BusinessService, such as an enterprise bean.</span></p>

<p><span>When
initialized with an ID string, the BusinessDelegate uses the ID string to
reconnect to the BusinessService. Thus, the BusinessDelegate shields the client
from the underlying implementation details of BusinessService naming and
lookup. Furthermore, the presentation-tier client never directly makes a remote
invocation on a BusinessSession; instead, the client uses the BusinessDelegate.</span></p>

<h4><span>LookupService</span></h4>

<p><span>The BusinessDelegate
uses the LookupService to locate the BusinessService. The LookupService
encapsulates the implementation details of BusinessService lookup.</span></p>

<h4><span>BusinessService</span></h4>

<p><span>The
BusinessService is a business-tier component, such as an enterprise bean or a
JMS component, that provides the required service to the client.</span></p>

<br/><br/><h3><span>Strategies</span></h3>

<h4><span>Delegate Proxy Strategy</span></h4>

<p><span>The Business
Delegate exposes an interface that provides clients access to the underlying
methods of the business service API. In this strategy, a Business Delegate provides
proxy function to pass the client methods to the session bean it is
encapsulating. The Business Delegate may additionally cache any necessary data,
including the remote references to the session bean's home or remote objects to
improve performance by reducing the number of lookups. The Business Delegate
may also convert such references to String versions (IDs) and vice versa, using
the services of a Service Locator.</span></p>

<p><span>The example
implementation for this strategy is discussed in the "Sample Code"
section of this pattern.</span></p>

<br/><br/><h3><span>Consequences</span></h3>

<p><span>-<span>                   
</span></span><span><b><span>Reduces Coupling, Improves Manageability</span></b></span><span><br>
The Business Delegate reduces coupling between the presentation tier and the
business tier by hiding all business-tier implementation details. It is easier
to manage changes because they are centralized in one place, the Business
Delegate.</span></p>

<p><span>-<span>                   
</span></span><span><b><span>Translates Business Service Exceptions</span></b></span><span><br>
The Business Delegate is responsible for translating any network or
infrastructure-related exceptions into business exceptions, shielding clients
from knowledge of the underlying implementation specifics.</span></p>

<p><span>-<span>                   
</span></span><span><b><span>Implements Failure Recovery and Thread Synchronization</span></b></span><span><br>
The Business Delegate on encountering a business service failure, may implement
automatic recovery features without exposing the problem to the client. If the
recovery succeeds, the client need not know about the failure. If the recovery
attempt does not succeed, then the Business Delegate needs to inform the client
of the failure. Additionally, the business delegate methods may be
synchronized, if necessary.</span></p>

<p><span>-<span>                   
</span></span><span><b><span>Exposes Simpler, Uniform Interface to Business Tier</span></b></span><span><br>
The Business Delegate, to better serve its clients, may provide a variant of
the interface provided by the underlying enterprise beans.</span></p>

<p><span>-<span>                   
</span></span><span><b><span>Impacts Performance</span></b></span><span><br>
The Business Delegate may provide caching services (and better performance) to
the presentation tier for common service requests.</span></p>

<p><span>-<span>                   
</span></span><span><b><span>Introduces Additional Layer</span></b></span><span><br>
The Business Delegate may be seen as adding an unnecessary layer between the
client and the service, thus introducing added complexity and decreasing
flexibility. Some developers may feel that it is an extra effort to develop
Business Delegates with implementations that use the Delegate Proxy strategy.
At the same time, the benefits of the pattern typically outweigh such
drawbacks.</span></p>

<p><b><span>Hides Remoteness</span></b><span><br>
While location transparency is one of the benefits of this pattern, a different
problem may arise due to the developer treating a remote service as if it was a
local one. This may happen if the client developer does not understand that the
Business Delegate is a client side proxy to a remote service. Typically, a
method invocations on the Business Delegate results in a remote method
invocation under the wraps. Ignoring this, the developer may tend to make
numerous method invocations to perform a single task, thus increasing the
network traffic.</span></p>

</div>
<!-- end content here -->

<jsp:include page="../contentFooter.jsp"/>