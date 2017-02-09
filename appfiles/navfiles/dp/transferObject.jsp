<jsp:include page="../contentHeader.jsp">
<jsp:param name="docTitle" value="CodeArchives - Transfer Object Design Pattern" />
</jsp:include>


<!-- start content here -->

<div class="dpHeading">
<span style="font-weight:bold;">Transfer Object Design Pattern</span>
</div>
<br/>
<br/>
<span style="font-size:16px;border-bottom:2px solid #ff0000;">Graphical Representation:</span>
<br/>
<br/>

<div id="img_transferobject">
</div>
<iframe style="display:none;" onload="(function(){new ImageLoader('img_transferobject','archive/resources/images/dp/transferobject.png',622,453).loadImage();})();"></iframe>

<div>

<br/><br/><h2><span>Context</span></h2>

<p><span>Application
clients need to exchange data with enterprise beans.</span></p>

<br/><br/><h2><span>Problem</span></h2>

<p><span>Java 2
Platform, Enterprise Edition (J2EE) applications implement server-side business
components as session beans and entity beans. Some methods exposed by the
business components return data to the client. Often, the client invokes a
business object's get methods multiple times until it obtains all the attribute
values.</span></p>

<p><span>Session beans
represent the business services and are not shared between users. A session
bean provides coarse-grained service methods when implemented per the Session
Facade pattern.</span></p>

<p><span>Entity beans,
on the other hand, are multiuser, transactional objects representing persistent
data. An entity bean exposes the values of attributes by providing an accessor
method (also referred to as a<span> </span><em><span>getter</span></em><span> </span>or<span> </span><em><span>get
method</span></em>) for each attribute it wishes to expose.</span></p>

<p><span>Every method
call made to the business service object, be it an entity bean or a session
bean, is potentially remote. Thus, in an Enterprise JavaBeans (EJB) application
such remote invocations use the network layer regardless of the proximity of
the client to the bean, creating a network overhead. Enterprise bean method
calls may permeate the network layers of the system even if the client and the
EJB container holding the entity bean are both running in the same JVM, OS, or
physical machine. Some vendors may implement mechanisms to reduce this overhead
by using a more direct access approach and bypassing the network.</span></p>

<p><span>As the usage
of these remote methods increases, application performance can significantly
degrade. Therefore, using multiple calls to get methods that return single
attribute values is inefficient for obtaining data values from an enterprise
bean.</span></p>

<br/><br/><h2><span>Forces</span></h2>

<p><span>-<span>                   
</span></span><span><span>All access to an enterprise bean is performed via remote
interfaces to the bean. Every call to an enterprise bean is potentially a
remote method call with network overhead.</span></span></p>

<p><span>-<span>                   
</span></span><span><span>Typically, applications have a greater frequency of read
transactions than update transactions. The client requires the data from the
business tier for presentation, display, and other read-only types of
processing. The client updates the data in the business tier much less
frequently than it reads the data.</span></span></p>

<p><span>-<span>                   
</span></span><span><span>The client usually requires values for more than one attribute or
dependent object from an enterprise bean. Thus, the client may invoke multiple
remote calls to obtain the required data.</span></span></p>

<p><span>-<span>                   
</span></span><span><span>The number of calls made by the client to the enterprise bean
impacts network performance. Chattier applications-those with increased traffic
between client and server tiers-often degrade network performance.</span></span></p>

<br/><br/><h2><span>Solution</span></h2>

<p><b><span>Use a
Transfer Object to encapsulate the business data. A single method call is used
to send and retrieve the Transfer Object. When the client requests the enterprise
bean for the business data, the enterprise bean can construct the Transfer
Object, populate it with its attribute values, and pass it by value to the
client.</span></b></p>

<p><span>Clients
usually require more than one value from an enterprise bean. To reduce the
number of remote calls and to avoid the associated overhead, it is best to use
Transfer Objects to transport the data from the enterprise bean to its client.</span></p>

<p><span>When an
enterprise bean uses a Transfer Object, the client makes a single remote method
invocation to the enterprise bean to request the Transfer Object instead of
numerous remote method calls to get individual attribute values. The enterprise
bean then constructs a new Transfer Object instance, copies values into the
object and returns it to the client. The client receives the Transfer Object
and can then invoke accessor (or getter) methods on the Transfer Object to get
the individual attribute values from the Transfer Object. Or, the
implementation of the Transfer Object may be such that it makes all attributes
public. Because the Transfer Object is passed by value to the client, all calls
to the Transfer Object instance are local calls instead of remote method
invocations.</span></p>

<br/><br/><h3><span>Participants and Responsibilities</span></h3>

<h4><span>Client</span></h4>

<p><span>This
represents the client of the enterprise bean. The client can be an end-user
application, as in the case of a rich client application that has been designed
to directly access the enterprise beans. The client can be Business Delegates
(see "Business Delegate" on page 248) or a different BusinessObject.</span></p>

<h4><span>BusinessObject</span></h4>

<p><span>The
BusinessObject represents a role in this pattern that can be fulfilled by a
session bean, an entity bean, or a Data Access Object (DAO). The BusinessObject
is responsible for creating the Transfer Object and returning it to the client
upon request. The BusinessObject may also receive data from the client in the
form of a Transfer Object and use that data to perform an update.</span></p>

<h4><span>TransferObject</span></h4>

<p><span>The
TransferObject is an arbitrary serializable Java object referred to as a
Transfer Object. A Transfer Object class may provide a constructor that accepts
all the required attributes to create the Transfer Object. The constructor may
accept all entity bean attribute values that the Transfer Object is designed to
hold. Typically, the members in the Transfer Object are defined as public, thus
eliminating the need for get and set methods. If some protection is necessary,
then the members could be defined as protected or private, and methods are
provided to get the values. By offering no methods to set the values, a
Transfer Object is protected from modification after its creation. If only a
few members are allowed to be modified to facilitate updates, then methods to
set the values can be provided. Thus, the Transfer Object creation varies
depending on an application's requirements. It is a design choice as to whether
the Transfer Object's attributes are private and accessed via getters and
setters, or all the attributes are made public.</span></p>

<br/><br/><h2><span>Consequences</span></h2>

<p><span>-<span>                   
</span></span><span><b><span>Simplifies Entity Bean and Remote Interface</span></b></span><span><br>
The entity bean provides a<span> </span></span><code><span>getData()</span></code><span><span> </span></span><span>method to get the Transfer Object containing the attribute values.
This may eliminate having multiple get methods implemented in the bean and
defined in the bean's remote interface. Similarly, if the entity bean provides
a<span> </span></span><code><span>setData()</span></code><span><span> </span></span><span>method to update the entity bean attribute values in a single
method call, it may eliminate having multiple set methods implemented in the
bean and defined in the bean's remote interface.</span></p>

<p><span>-<span>                   
</span></span><span><b><span>Transfers More Data in Fewer Remote Calls</span></b></span><span><br>
Instead of multiple client calls over the network to the BusinessObject to get
attribute values, this solution provides a single method call. At the same
time, this one method call returns a greater amount of data to the client than
the individual accessor methods each returned. When considering this pattern,
you must consider the trade-off between fewer network calls versus transmitting
more data per call. Alternatively, you can provide both individual attribute
accessor methods (fine-grained get and set methods) and Transfer Object methods
(coarse-grained get and set methods). The developer can choose the appropriate
technique depending on the requirement.</span></p>

<p><span>-<span>                   
</span></span><span><b><span>Reduces Network Traffic</span></b></span><span><br>
A Transfer Object transfers the values from the entity bean to the client in
one remote method call. The Transfer Object acts as a data carrier and reduces
the number of remote network method calls required to obtain the attribute
values from the entity beans. The reduced chattiness of the application results
in better network performance.</span></p>

<p><span>-<span>                   
</span></span><span><b><span>Reduces Code Duplication</span></b></span><span><br>
By using the Entity Inherits Transfer Object Strategy and the Transfer Object
Factory Strategy, it is possible to reduce or eliminate the duplication of code
between the entity and its Transfer Object. However, with the use of Transfer
Object Factory Strategy, there could be increased complexity in implementation.
There is also a runtime cost associated with this strategy due to the use of
dynamic reflection. In most cases, the Entity Inherits Transfer Object Strategy
may be sufficient to meet the needs.</span></p>

<p><span>-<span>                   
</span></span><span><b><span>May Introduce Stale Transfer Objects</span></b></span><span><br>
Adopting the Updatable Transfer Objects Strategy allows the client to perform
modifications on the local copy of the Transfer Object. Once the modifications
are completed, the client can invoke the entity's<span> </span></span><code><span>setData()</span></code><span><span> </span></span><span>method and pass the modified Transfer Object to the entity. The
entity receives the modifications and merges the new (modified) values with its
attributes. However, there may be a problem with stale Transfer Objects. The
entity updates its values, but it is unaware of other clients that may have
previously requested the same Transfer Object. These clients may be holding in
their local cache Transfer Object instances that no longer reflect the current
copy of the entity's data. Because the entity is not aware of these clients, it
is not possible to propagate the update to the stale Transfer Objects held by
other clients.</span></p>

<p><span>-<span>                   
</span></span><span><b><span>May Increase Complexity due to Synchronization and Version Control</span></b></span><span><br>
The entity merges modified values into its own stored values when it receives a
mutable Transfer Object from a client. However, the entity must handle the
situation where two or more clients simultaneously request conflicting updates
to the entity's values. Allowing such updates may result in data conflicts.
Version control is one way of avoiding such conflict. As one of its attributes,
the entity can include a version number or a last-modified time stamp. The
version number or time stamp is copied over from the entity bean into the
Transfer Object. An update transaction can resolve conflicts using the time
stamp or version number attribute. If a client holding a stale Transfer Object
tries to update the entity, the entity can detect the stale version number or
time stamp in the Transfer Object and inform the client of this error
condition. The client then has to obtain the latest Transfer Object and retry
the update. In extreme cases this can result in client starvation-the client
might never accomplish its updates.</span></p>

<p><b><span>Concurrent Access and Transactions</span></b><span><br>
When two or more clients concurrently access the BusinessObject, the container
applies the transaction semantics of the EJB architecture. If, for an
enterprise bean, the transaction isolation level is set to</span><code><span>TRANSACTION_SERIALIZED</span></code><span><span> </span></span><span>in the deployment descriptor, the container provides the maximum
protection to the transaction and ensures its integrity. For example, suppose
the workflow for the first transaction involves obtaining a Transfer Object,
then subsequently modifying the BusinessObject attributes in the process. The second
transaction, since it is isolated to serialized transactions, will obtain the
Transfer Object with the correct (most recently updated) values. However, for
transactions with lesser restrictions than serialized, protection is less
rigid, leading to inconsistencies in the Transfer Objects obtained by competing
accesses. In addition, problems related to synchronization, stale Transfer
Objects, and version control will have to be dealt with.</span></p>

</div>
<!-- end content here -->

<jsp:include page="../contentFooter.jsp"/>