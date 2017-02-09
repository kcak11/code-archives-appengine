<jsp:include page="../contentHeader.jsp">
<jsp:param name="docTitle" value="CodeArchives - Service Locator Design Pattern" />
</jsp:include>


<!-- start content here -->

<div class="dpHeading">
<span style="font-weight:bold;">Service Locator Design Pattern</span>
</div>
<br/>
<br/>
<span style="font-size:16px;border-bottom:2px solid #ff0000;">Graphical Representation:</span>
<br/>
<br/>

<div id="img_servicelocator">
</div>
<iframe style="display:none;" onload="(function(){new ImageLoader('img_servicelocator','archive/resources/images/dp/servicelocator.png',697,450).loadImage();})();"></iframe>

<div>

<br/><br/><h2><span>Context</span></h2>

<p><span>Service lookup
and creation involves complex interfaces and network operations.</span></p>

<br/><br/><h2><span>Problem</span></h2>

<p><span>J2EE clients
interact with service components, such as Enterprise JavaBeans (EJB) and Java
Message Service (JMS) components, which provide business services and
persistence capabilities. To interact with these components, clients must
either locate the service component (referred to as a lookup operation) or
create a new component. For instance, an EJB client must locate the enterprise
bean's home object, which the client then uses either to find an object or to
create or remove one or more enterprise beans. Similarly, a JMS client must
first locate the JMS Connection Factory to obtain a JMS Connection or a JMS
Session.</span></p>

<p><span>All Java 2
Platform, Enterprise Edition (J2EE) application clients use the JNDI common
facility to look up and create EJB and JMS components. The JNDI API enables
clients to obtain an initial context object that holds the component name to
object bindings. The client begins by obtaining the initial context for a
bean's home object. The initial context remains valid while the client session
is valid. The client provides the JNDI registered name for the required object
to obtain a reference to an administered object. In the context of an EJB
application, a typical administered object is an enterprise bean's home object.
For JMS applications, the administered object can be a JMS Connection Factory
(for a Topic or a Queue) or a JMS Destination (a Topic or a Queue).</span></p>

<p><span>So, locating a
JNDI-administered service object is common to all clients that need to access
that service object. That being the case, it is easy to see that many types of
clients repeatedly use the JNDI service, and the JNDI code appears multiple
times across these clients. This results in an unnecessary duplication of code
in the clients that need to look up services.</span></p>

<p><span>Also, creating
a JNDI initial context object and performing a lookup on an EJB home object
utilizes significant resources. If multiple clients repeatedly require the same
bean home object, such duplicate effort can negatively impact application
performance.</span></p>

<p><span>Let us examine
the lookup and creation process for various J2EE components.</span></p>

<p><span>1.<span>                 
</span></span><span><span>The lookup and creation of enterprise beans relies upon the
following:</span></span></p>

<p><span>o<span>                             
</span></span><span><span>A correct setup of the JNDI environment so that it connects to the
naming and directory service used by the application. Setup entails providing
the location of the naming service and the necessary authentication credentials
to access that service.</span></span></p>

<p><span>o<span>                             
</span></span><span><span>The JNDI service can then provide the client with an initial
context that acts as a placeholder for the component name-to-object bindings.
The client requests this initial context to look up the EJBHome object for the
required enterprise bean by providing the JNDI name for that EJBHome object.</span></span></p>

<p><span>o<span>                             
</span></span><span><span>Find the EJBHome object using the initial context's lookup
mechanism.</span></span></p>

<p><span>o<span>                             
</span></span><span><span>After obtaining the EJBHome object, create, remove, or find the
enterprise bean, using the EJBHome object's create, move, and find (for entity
beans only).</span></span></p>

<p><span>2.<span>                 
</span></span><span><span>The lookup and creation of JMS components (Topic, Queue,
QueueConnection, QueueSession, TopicConnection, TopicSession, and so forth)
involves the following steps. Note that in these steps, Topic refers to the
publish/subscribe messaging model and Queue refers to the point-to-point
messaging model.</span></span></p>

<p><span>o<span>                             
</span></span><span><span>Set up the JNDI environment to the naming service used by the
application. Setup entails providing the location of the naming service and the
necessary authentication credentials to access that service.</span></span></p>

<p><span>o<span>                             
</span></span><span><span>Obtain the initial context for the JMS service provider from the
JNDI naming service.</span></span></p>

<p><span>o<span>                             
</span></span><span><span>Use the initial context to obtain a Topic or a Queue by supplying
the JNDI name for the topic or the queue. </span></span><span>Topic and Queue are
JMSDestination objects.</span></p>

<p><span>o<span>                             
</span></span><span><span>Use the initial context to obtain a TopicConnectionFactory or a
QueueConnectionFactory by supplying the JNDI name for the topic or queue connection
factory.</span></span></p>

<p><span>o<span>                             
</span></span><span><span>Use the TopicConnectionFactory to obtain a TopicConnection or
QueueConnectionFactory to obtain a QueueConnection.</span></span></p>

<p><span>o<span>                             
</span></span><span><span>Use the TopicConnection to obtain a TopicSession or a
QueueConnection to obtain a QueueSession.</span></span></p>

<p><span>o<span>                             
</span></span><span><span>Use the TopicSession to obtain a TopicSubscriber or a
TopicPublisher for the required Topic. Use the QueueSession to obtain a
QueueReceiver or a QueueSender for the required Queue.</span></span></p>

<p><span>The process to
look up and create components involves a vendor-supplied context factory
implementation. This introduces vendor dependency in the application clients
that need to use the JNDI lookup facility to locate the enterprise beans and
JMS components, such as topics, queues, and connection factory objects.</span></p>

<br/><br/><h2><span>Forces</span></h2>

<p><span>-<span>                   
</span></span><span><span>EJB clients need to use the JNDI API to look up EJBHome objects by
using the enterprise bean's registered JNDI name.</span></span></p>

<p><span>-<span>                   
</span></span><span><span>JMS clients need to use JNDI API to look up JMS components by
using the JNDI names registered for JMS components, such as connection
factories, queues, and topics.</span></span></p>

<p><span>-<span>                   
</span></span><span><span>The context factory to use for the initial JNDI context creation
is provided by the service provider vendor and is therefore vendor- dependent.
The context factory is also dependent on the type of object being looked up.
The context for JMS is different from the context for EJB, with different
providers.</span></span></p>

<p><span>-<span>                   
</span></span><span><span>Lookup and creation of service components could be complex and may
be used repeatedly in multiple clients in the application.</span></span></p>

<p><span>-<span>                   
</span></span><span><span>Initial context creation and service object lookups, if frequently
required, can be resource-intensive and may impact application performance.
This is especially true if the clients and the services are located in
different tiers.</span></span></p>

<p><span>-<span>                   
</span></span><span><span>EJB clients may need to reestablish connection to a previously
accessed enterprise bean instance, having only its Handle object.</span></span></p>

<br/><br/><h2><span>Solution</span></h2>

<p><b><span>Use a
Service Locator object to abstract all JNDI usage and to hide the complexities
of initial context creation, EJB home object lookup, and EJB object
re-creation. Multiple clients can reuse the Service Locator object to reduce
code complexity, provide a single point of control, and improve performance by
providing a caching facility.</span></b></p>

<p><span>This pattern
reduces the client complexity that results from the client's dependency on and
need to perform lookup and creation processes, which are resource-intensive. To
eliminate these problems, this pattern provides a mechanism to abstract all
dependencies and network details into the Service Locator.</span></p>

<br/><br/><h3><span>Participants and Responsibilities</span></h3>

<h4><span>Client</span></h4>

<p><span>This is the
client of the Service Locator. The client is an object that typically requires
access to business objects such as a Business Delegate (see "Business
Delegate" on page 248).</span></p>

<h4><span>Service Locator</span></h4>

<p><span>The Service
Locator abstracts the API lookup (naming) services, vendor dependencies, lookup
complexities, and business object creation, and provides a simple interface to
clients. This reduces the client's complexity. In addition, the same client or
other clients can reuse the Service Locator.</span></p>

<h4><span>InitialContext</span></h4>

<p><span>The
InitialContext object is the start point in the lookup and creation process.
Service providers provide the context object, which varies depending on the
type of business object provided by the Service Locator's lookup and creation
service. A Service Locator that provides services for multiple types of
business objects (such as enterprise beans, JMS components, and so forth)
utilizes multiple types of context objects, each obtained from a different
provider (e.g., context provider for an EJB application server may be different
from the context provider for JMS service).</span></p>

<h4><span>ServiceFactory</span></h4>

<p><span>The
ServiceFactory object represents an object that provides life cycle management
for the BusinessService objects. The ServiceFactory object for enterprise beans
is an EJBHome object. The ServiceFactory for JMS components can be a JMS ConnectionFactory
object, such as a TopicConnectionFactory (for publish/subscribe messaging
model) or a QueueConnectionFactory (for point-to-point messaging model).</span></p>

<h4><span>BusinessService</span></h4>

<p><span>The
BusinessService is a role that is fulfilled by the service the client is seeking
to access. The BusinessService object is created or looked up or removed by the
ServiceFactory. The BusinessService object in the context of an EJB application
is an enterprise bean. The BusinessService object in the context of a JMS
application can be a TopicConnection or a QueueConnection. The TopicConnection
and QueueConnection can then be used to produce a JMSSession object, such as
TopicSession or a QueueSession respectively.</span></p>

<br/><br/><h2><span>Consequences</span></h2>

<p><span>-<span>                   
</span></span><span><b><span>Abstracts Complexity</span></b></span><span><br>
The Service Locator pattern encapsulates the complexity of this lookup and
creation process (described in the problem) and keeps it hidden from the
client. The client does not need to deal with the lookup of component factory
objects (EJBHome, QueueConnectionFactory, and TopicConnectionFactory, among
others) because the ServiceLocator is delegated that responsibility.</span></p>

<p><span>-<span>                   
</span></span><span><b><span>Provides Uniform Service Access to Clients</span></b></span><span><br>
The Service Locator pattern abstracts all the complexities, as explained
previously. In doing so, it provides a very useful and precise interface that
all clients can use. The pattern interface ensures that all types of clients in
the application uniformly access business objects, in terms of lookup and
creation. </span><span>This uniformity reduces development and maintenance overhead.</span></p>

<p><span>-<span>                   
</span></span><span><b><span>Facilitates Adding New Business Components</span></b></span><span><br>
Because clients of enterprise beans are not aware of the EJBHome objects, it's
possible to add new EJBHome objects for enterprise beans developed and deployed
at a later time without impacting the clients. JMS clients are not directly
aware of the JMS connection factories, so new connection factories can be added
without impacting the clients.</span></p>

<p><span>-<span>                   
</span></span><span><b><span>Improves Network Performance</span></b></span><span><br>
The clients are not involved in JNDI lookup and factory/home object creation.
Because the Service Locator performs this work, it can aggregate the network
calls required to look up and create business objects.</span></p>

<p><b><span>Improves Client Performance by Caching</span></b><span><br>
The Service Locator can cache the initial context objects and references to the
factory objects (EJBHome, JMS connection factories) to eliminate unnecessary
JNDI activity that occurs when obtaining the initial context and the other
objects. </span><span>This improves the application performance.</span></p>

</div>
<!-- end content here -->

<jsp:include page="../contentFooter.jsp"/>