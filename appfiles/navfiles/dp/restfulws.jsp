<jsp:include page="../contentHeader.jsp">
<jsp:param name="docTitle" value="CodeArchives - RESTful WS Design Pattern" />
</jsp:include>


<!-- start content here -->

<div class="dpHeading">
<span style="font-weight:bold;">RESTful WS Design Pattern</span>
</div>
<br/>
<br/>
<span style="font-size:16px;border-bottom:2px solid #ff0000;">Graphical Representation:</span>
<br/>
<br/>

<div id="img_restfulws">
</div>
<iframe style="display:none;" onload="(function(){new ImageLoader('img_restfulws','archive/resources/images/dp/restfulws.png',823,471).loadImage();})();"></iframe>

<div>

<br/><br/><h3><span>The
basics of building a RESTful webservice</span></h3>

<p><span>It's another one of those buzz-words you seem to
hear a lot of lately; RESTful webservices. REST stands for REpresentational
State Transfer and is an architectural style that can already be found on the
Internet since back in the days (the HTTP protocol is an example of a REST
system). REST defines resources and representations. Resources can be found
using a URI and generally return a representation of the data requested (In XML
form, or JSON, or whatever tickles your fancy). There are all sorts of
platforms that you can use to implement a REST service in Java, but for this
article we'll make our own by abusing the HTTP protocol and using a servlet
(which might seem crude, but it get's the idea across).<span> </span><br>
<br>
First let's lay down some principles. A REST application is all about
resources. Each resource (user data, a picture, account transactions, etc.)
needs at least one URI on which it can be found. There are four methods that a
REST application can use, POST (update in SQL), GET (select in SQL), PUT
(insert in SQL) and DELETE (delete in SQL). These do exaclty what they say and
nothing more, a GET method never updates data. The service doesn't implement a
state system (like HTTP does with sessions), clients should keep their own
state, if necessary.<span> </span><br>
<br>
Then there's the method of communication, HTTP forms only allow PUT and GET.
Even when using </span><span>AJAX</span><span> you're stuck with these two, so you need to create a method of
communication above the HTTP layer. Let's keep it simple in this example and
say that our client is using an </span><span>AJAX</span><span> post to send a homemade querystring, containing
a set of key-value pairs and the method to use. For example, a querystring
could look like this : {GET; country=the </span><span>Netherlands</span><span>}. A string like this could be posted to a URI
(for example http://www.mywebsite.com/users) where it is parsed. It could then
return an XML document to the client containing, for example, all users from
the </span><span>Netherlands</span><span>. Another example : our
querystring look like this {POST, country=the </span><span>Netherlands</span><span>}, which is posted to
the URI http://www.mywebsite.com/users/Pieter%20Heijman to update the country
for the user "Pieter Heijman" to "the </span><span>Netherlands</span><span>" (remember, every
resource has it's own URI).</span></p>

<p><strong><span> </span></strong></p>

<p><strong><span> </span></strong></p>

<p><strong><span> </span></strong></p>

<p><strong><span>When to Use REST</span></strong></p>

<p><span> </span></p>

<p><span>Architects and developers need to decide when this particular
style is an appropriate choice for their applications. A RESTFul design may be
appropriate when</span></p>

<p><span>-<span>                    
</span></span><span><span>The web services are completely stateless. A good test is to
consider whether the interaction can survive a restart of the server.</span></span></p>

<p><span>-<span>                    
</span></span><span><span>A caching infrastructure can be leveraged for performance. If the
data that the web service returns is not dynamically generated and can be
cached, then the caching infrastructure that web servers and other
intermediaries inherently provide can be leveraged to improve performance.
However, the developer must take care because such caches are limited to the
HTTP<span> </span></span></span><code><span>GET</span></code><span><span> </span></span><span>method for most servers.</span></p>

<p><span>-<span>                    
</span></span><span><span>The service producer and service consumer have a mutual
understanding of the context and content being passed along. Because there is
no formal way to describe the web services interface, both parties must agree
out of band on the schemas that describe the data being exchanged and on ways
to process it meaningfully. In the real world, most commercial applications
that expose services as RESTful implementations also distribute so-called
value-added toolkits that describe the interfaces to developers in popular
programming languages.</span></span></p>

<p><span>-<span>                    
</span></span><span><span>Bandwidth is particularly important and needs to be limited. REST
is particularly useful for limited-profile devices such as PDAs and mobile
phones, for which the overhead of headers and additional layers of SOAP
elements on the XML payload must be restricted.</span></span></p>

<p><span>-<span>                    
</span></span><span><span>Web service delivery or aggregation into existing web sites can be
enabled easily with a RESTful style. Developers can use technologies such as<span> </span></span></span><span><a target="_blank"><span>Asynchronous JavaScript with XML (AJAX)</span></a></span><span><span> </span></span><span>and toolkits such as<span> </span></span><span><a target="_blank"><span>Direct Web Remoting (DWR)</span></a></span><span><span> </span></span><span>to consume the services in their web applications. Rather than starting
from scratch, services can be exposed with XML and consumed by HTML pages
without significantly refactoring the existing web site architecture. Existing
developers will be more productive because they are adding to something they
are already familiar with, rather than having to start from scratch with new
technology.</span></p>

<p><span>A SOAP-based design may be appropriate when</span></p>

<p><span>-<span>                    
</span></span><span><span>A formal contract must be established to describe the interface
that the web service offers. The Web Services Description Language (WSDL) describes
the details such as messages, operations, bindings, and location of the web
service.</span></span></p>

<p><span>-<span>                    
</span></span><span><span>The architecture must address complex nonfunctional requirements.
Many web services specifications address such requirements and establish a
common vocabulary for them. Examples include Transactions, Security,
Addressing, Trust, Coordination, and so on. Most real-world applications go
beyond simple CRUD operations and require contextual information and
conversational state to be maintained. With the RESTful approach, developers
must build this plumbing into the application layer themselves.</span></span></p>

<p><span>-<span>                    
</span></span><span><span>The architecture needs to handle asynchronous processing and
invocation. In such cases, the infrastructure provided by standards such as<span> </span></span></span><span><a target="_blank"><span>WSRM</span></a></span><span><span> </span></span><span>and APIs such as<span> </span></span><span><a target="_blank"><span>JAX-WS</span></a></span><span><span> </span></span><span>with their client-side
asynchronous invocation support can be leveraged out of the box.</span></p>

<p><a name="1"></a><strong><span> </span></strong></p>

<p><strong><span>RESTful Support in JAX-WS</span></strong></p>

<p><span>The<span> </span></span><span><a target="_blank"><span>Java API for XML Web
Services (JAX-WS)</span></a></span><span><span> </span></span><span>provides full support for
building and deploying RESTful web services. The API was developed through the
Java Community Process program as</span><span><a target="_blank"><span>JSR 224</span></a></span><span>. It is tightly
integrated with the<span> </span></span><span><a><span>Java Architecture for XML Binding (JAXB)</span></a></span><span><span> </span></span><span>for binding XML to Java technology data and is included in both
the<span> </span></span><span><a><span>Java Platform, Standard Edition (Java SE) 6</span></a></span><span><span> </span></span><span>and the</span><span><a><span>Java Platform, Enterprise Edition (Java EE) 5</span></a></span><span>.</span></p>

<p><strong><span>Building RESTful Services</span></strong></p>

<p><span><br>
<br>
<br>
</span></p>

<p><span><span> </span></span><span><br>
<br>
</span></p>

<p><span>JAX-WS
enables building RESTful endpoints through a<span> </span></span><code><span>javax.xml.ws.Provider</span></code><span><span> </span></span><span>interface in the API.<span> </span></span><code><span>Provider</span></code><span><span> </span></span><span>is a generic interface that can be implemented by a class as a
dynamic alternative to a service endpoint interface (SEI), and a service
implementing this interface can be deployed in a Java EE container or published
in a stand-alone mode through the JAX-WS<span> </span></span><code><span>Endpoint</span></code><span><span> </span></span><span>API.</span><span><span> </span></span><span><br>
<br>
</span></p>

<p><code><span>Provider</span></code><span><span> </span></span><span>is a low-level generic API, but using it requires the endpoint to
have an intimate knowledge of the desired message or payload structure being
passed to the service. Depending on how the<span> </span></span><code><span>provider</span></code><span><span> </span></span><span>is implemented, the supported types for<span> </span></span><code><span>T</span></code><span><span> </span></span><span>and their uses are the following:</span></p>

<p><span>-<span>                    
</span></span><span><code><b><span>javax.xml.transform.Source</span></b></code></span><span><b><span> </span></b></span><span>. Allows the<span> </span></span><code><span>provider</span></code><span><span> </span></span><span>to generate and consume XML directly</span></p>

<p><span>-<span>                    
</span></span><span><code><b><span>javax.activation.DataSource</span></b></code></span><span><b><span> </span></b></span><span>. Works with MIME-typed messages</span></p>

<p><span>-<span>                    
</span></span><span><code><b><span>javax.xml.soap.SOAPMessage</span></b></code></span><span><b><span> </span></b></span><span>. Conveniently works with and manipulates the entire SOAP
message</span></p>

</div>
<!-- end content here -->

<jsp:include page="../contentFooter.jsp"/>