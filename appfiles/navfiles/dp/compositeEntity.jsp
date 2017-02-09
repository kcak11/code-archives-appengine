<jsp:include page="../contentHeader.jsp">
<jsp:param name="docTitle" value="CodeArchives - Composite Entity Design Pattern" />
</jsp:include>


<!-- start content here -->

<div class="dpHeading">
<span style="font-weight:bold;">Composite Entity Design Pattern</span>
</div>
<br/>
<br/>
<span style="font-size:16px;border-bottom:2px solid #ff0000;">Graphical Representation:</span>
<br/>
<br/>

<div id="img_compositeentity">
</div>
<iframe style="display:none;" onload="(function(){new ImageLoader('img_compositeentity','archive/resources/images/dp/compositeentity.png',612,262).loadImage();})();"></iframe>

<div>

<br/><br/><h2><span>Context</span></h2>

<p><span>Entity beans
are not intended to represent every persistent object in the object model.
Entity beans are better suited for coarse-grained persistent business objects.</span></p>

<br/><br/><h2><span>Problem</span></h2>

<p><span>In a Java 2
Platform, Enterprise Edition (J2EE) application, clients -- such as applications,
JavaServer Pages (JSP) pages, servlets, JavaBeans components -- access entity
beans via their remote interfaces. Thus, every client invocation potentially
routes through network stubs and skeletons, even if the client and the
enterprise bean are in the same JVM, OS, or machine. When entity beans are
fine-grained objects, clients tend to invoke more individual entity bean
methods, resulting in high network overhead.</span></p>

<p><span>Entity beans
represent distributed persistent business objects. Whether developing or
migrating an application to the J2EE platform, object granularity is very
important when deciding what to implement as an entity bean. Entity beans
should represent coarse-grained business objects, such as those that provide
complex behavior beyond simply getting and setting field values. These
coarse-grained objects typically have dependent objects. A dependent object is
an object that has no real domain meaning when not associated with its
coarse-grained parent.</span></p>

<p><span>A recurring
problem is the direct mapping of the object model to an Enterprise JavaBeans
(EJB) model (specifically entity beans). This creates a relationship between
the entity bean objects without consideration of coarse-grained versus
fine-grained (or dependent) objects. Determining what to make coarse-grained
versus fine-grained is typically difficult and can best be done via modeling
relationships in Unified Modeling Language (UML) models.</span></p>

<p><span>There are a
number of areas impacted by the fine-grained entity bean design approach:</span></p>

<p><span>-<span>                   
</span></span><span><b><span>Entity Relationships</span></b></span><span><span> </span></span><span>- Directly mapping an object model to an EJB model does not take
into account the impact of relationships between the objects. The inter-object
relationships are directly transformed into inter-entity bean relationships. As
a result, an entity bean might contain or hold a remote reference to another
entity bean. However, maintaining remote references to distributed objects
involves different techniques and semantics than maintaining references to
local objects. Besides increasing the complexity of the code, it reduces
flexibility, because the entity bean must change if there are any changes in
its relationships.</span></p>

<p><span>Also, there
is no guarantee as to the validity of the entity bean references to other
entity beans over time. Such references are established dynamically using the
entity's home object and the primary key for that entity bean instance. This
implies a high maintenance overhead of reference validity checking for each
such entity-bean-to-entity-bean reference.</span></p>

<p><span>-<span>                   
</span></span><span><b><span>Manageability</span></b></span><span><span> </span></span><span>- Implementing
fine-grained objects as entity beans results in a large number of entity beans
in the system. An entity bean is defined using several classes. For each entity
bean component, the developer must provide classes for the home interface, the
remote interface, the bean implementation, and the primary key.</span></p>

<p><span>In
addition, the container may generate classes to support the entity bean
implementation. When the bean is created, these classes are realized as real
objects in the container. In short, the container creates a number of objects
to support each entity bean instance. Large numbers of entity beans result in
more classes and code to maintain for the development team. It also results in
a large number of objects in the container. </span><span>This can negatively
impact the application performance.</span></p>

<p><span>-<span>                   
</span></span><span><b><span>Network Performance</span></b></span><span><span> </span></span><span>- Fine-grained entity beans potentially have more inter-entity
bean relationships. Entity beans are distributed objects. When one entity bean
invokes a method on another entity bean, the call is potentially treated as a
remote call by the container, even if both entity beans are in the same
container or JVM. If the number of entity-bean-to-entity-bean relationships
increases, then this decreases system scalability due to heavy network
overhead.</span></p>

<p><span>-<span>                   
</span></span><span><b><span>Database Schema Dependency</span></b></span><span><span> </span></span><span>- When the entity beans are fine-grained, each entity bean
instance usually represents a single row in a database. This is not a proper
application of the entity bean design, since entity beans are more suitable for
coarse-grained components. Fine-grained entity bean implementation typically is
a direct representation of the underlying database schema in the entity bean
design. When clients use these fine-grained entity beans, they are essentially
operating at the row level in the database, since each entity bean is
effectively a single row. Because the entity bean directly models a single
database row, the clients become dependent on the database schema. When the
schema changes, the entity bean definitions must change as well. Further, since
the clients are operating at the same granularity, they must observe and react
to this change. This schema dependency causes a loss of flexibility and
increases the maintenance overhead whenever schema changes are required.</span></p>

<p><span>-<span>                   
</span></span><span><b><span>Object Granularity (Coarse-Grained versus Fine-Grained)</span></b></span><span><span> </span></span><span>- Object granularity impacts data transfer between the enterprise
bean and the client. In most applications, clients typically need a larger
chunk of data than one or two rows from a table. In such a case, implementing
each of these fine-grained objects as an entity bean means that the client
would have to manage the relationships between all these fine-grained objects.
Depending on the data requirements, the client might have to perform many
lookups of a number of entity beans to obtain the required information.</span></p>

<br/><br/><h2><span>Forces</span></h2>

<p><span>-<span>                   
</span></span><span><span>Entity beans are best implemented as coarse-grained objects due to
the high overhead associated with each entity bean. Each entity bean is
implemented using several objects, such as EJB home object, remote object, bean
implementation, and primary key, and each is managed by the container services.</span></span></p>

<p><span>-<span>                   
</span></span><span><span>Applications that directly map relational database schema to
entity beans (where each row in a table is represented by an entity bean
instance) tend to have a large number of fine-grained entity beans. It is
desirable to keep the entity beans coarse-grained and reduce the number of
entity beans in the application.</span></span></p>

<p><span>-<span>                   
</span></span><span><span>Direct mapping of object model to EJB model yields fine-grained
entity beans. Fine-grained entity beans usually map to the database schema.
This entity-to-database row mapping causes problems related to performance,
manageability, security, and transaction handling. Relationships between tables
are implemented as relationships between entity beans, which means that entity
beans hold references to other entity beans to implement the fine-grained
relationships. It is very expensive to manage inter-entity bean relationships,
because these relationships must be established dynamically, using the entity
home objects and the enterprise beans' primary keys.</span></span></p>

<p><span>-<span>                   
</span></span><span><span>Clients do not need to know the implementation of the database
schema to use and support the entity beans. With fine-grained entity beans, the
mapping is usually done so that each entity bean instance maps to a single row
in the database. This fine-grained mapping creates a dependency between the
client and the underlying database schema, since the clients deal with the
fine-grained beans and they are essentially a direct representation of the
underlying schema. This results in tight coupling between the database schema
and entity beans. A change to the schema causes a corresponding change to the
entity bean, and in addition requires a corresponding change to the clients.</span></span></p>

<p><span>-<span>                   
</span></span><span><span>There is an increase in chattiness of applications due to
intercommunication among fine-grained entity beans. Excessive inter-entity bean
communication often leads to a performance bottleneck. Every method call to the
entity bean is made via the network layer, even if the caller is in the same
address space as the called bean (that is, both the client, or caller entity
bean, and the called entity bean are in the same container). While some
container vendors optimize for this scenario, the developer cannot rely on this
optimization in all containers.</span></span></p>

<p><span>-<span>                   
</span></span><span><span>Additional chattiness can be observed between the client and the
entity beans because the client may have to communicate with many fine-grained
entity beans to fulfill a requirement. It is desirable to reduce the
communication between or among entity beans and to reduce the chattiness between
the client and the entity bean layer.</span></span></p>

<br/><br/><h2><span>Solution</span></h2>

<p><b><span>Use
Composite Entity to model, represent, and manage a set of interrelated
persistent objects rather than representing them as individual fine-grained
entity beans. A Composite Entity bean represents a graph of objects.</span></b></p>

<p><span>In order to
understand this solution, let us first define what is meant by persistent
objects and discuss their relationships.</span></p>

<p><span>A persistent
object is an object that is stored in some type of data store. Multiple clients
usually share persistent objects. Persistent objects can be classified into two
types: coarse-grained objects and dependent objects.</span></p>

<p><span>A
coarse-grained object is self-sufficient. It has its own life cycle and manages
its relationships to other objects. Each coarse-grained object may reference or
contain one or more other objects. The coarse-grained object usually manages
the lifecycles of these objects. Hence, these objects are called dependent
objects. A dependent object can be a simple self-contained object or may in
turn contain other dependent objects.</span></p>

<p><span>The life cycle
of a dependent object is tightly coupled to the life cycle of the
coarse-grained object. A client may only indirectly access a dependent object
through the coarse-grained object. That is, dependent objects are not directly
exposed to clients because their parent (coarse-grained) object manages them.
Dependent objects cannot exist by themselves. Instead, they always need to have
their coarse-grained (or parent) object to justify their existence.</span></p>

<p><span>Typically, you
can view the relationship between a coarse-grained object and its dependent
objects as a tree. The coarse-grained object is the root of the tree (the root
node). Each dependent object can be a standalone dependent object (a leaf node)
that is a child of the coarse-grained object. Or, the dependent object can have
parent-child relationships with other dependent objects, in which case it is
considered a branch node.</span></p>

<p><span>A Composite
Entity bean can represent a coarse-grained object and all its related dependent
objects. Aggregation combines interrelated persistent objects into a single
entity bean, thus drastically reducing the number of entity beans required by
the application. This leads to a highly coarse-grained entity bean that can
better leverage the benefits of entity beans than can fine-grained entity
beans.</span></p>

<p><span>Without the
Composite Entity approach, there is a tendency to view each coarse-grained and
dependent object as a separate entity bean, leading to a large number of entity
beans.</span></p>

<br/><br/><h3><span>Participants and Responsibilities</span></h3>

<h4><span>CompositeEntity</span></h4>

<p><span>CompositeEntity
is the coarse-grained entity bean. The CompositeEntity may be the
coarse-grained object, or it may hold a reference to the coarse-grained object.
The "Strategies" section explains the different implementation
strategies for a Composite Entity.</span></p>

<h4><span>Coarse-Grained Object</span></h4>

<p><span>A
coarse-grained object is an object that has its own life cycle and manages its
own relationships to other objects. A coarse-grained object can be a Java
object contained in the Composite Entity. Or, the Composite Entity itself can
be the coarse-grained object that holds dependent objects. These strategies are
explained in the "Strategies" section.</span></p>

<h4><span>DependentObject1, DependentObject2, and DependentObject3</span></h4>

<p><span>A dependent
object is an object that depends on the coarse-grained object and has its life
cycle managed by the coarse-grained object. A dependent object can contain
other dependent objects; thus there may be a tree of objects within the
Composite Entity.</span></p>

<br/><br/><h3><span>Strategies</span></h3>

<p><span>This section
explains different strategies for implementing a Composite Entity. The
strategies consider possible alternatives and options for persistent objects
(coarse-grained and dependent) and the use of Transfer Objects.</span></p>

<h4><span>Composite Entity Contains Coarse-Grained Object Strategy</span></h4>

<p><span>In this
strategy, the Composite Entity holds or contains the coarse-grained object. The
coarse-grained object continues to have relationships with its dependent
objects. The structure section of this pattern describes this as the main
strategy.</span></p>

<h4><span>Composite Entity Implements Coarse-Grained Object Strategy</span></h4>

<p><span>In this
strategy, the Composite Entity itself is the coarse-grained object and it has
the coarse-grained object's attributes and methods. The dependent objects are
attributes of the Composite Entity. Since the Composite Entity is the
coarse-grained object, the entity bean expresses and manages all relationships
between the coarse-grained object and the dependent objects.</span></p>

<h4><span>Lazy Loading Strategy</span></h4>

<p><span>A Composite
Entity can be composed of many levels of dependent objects in its tree of objects.
Loading all the dependent objects when the Composite Entity's<span> </span></span><code><span>ejbLoad()</span></code><span><span> </span></span><span>method is called by the EJB Container may take considerable time
and resources. One way to optimize this is by using a lazy loading strategy for
loading the dependent objects. When the<span> </span></span><code><span>ejbLoad()</span></code><span><span> </span></span><span>method is called, at first only load those dependent objects that
are most crucial to the Composite Entity clients. Subsequently, when the
clients access a dependent object that has not yet been loaded from the
database, the Composite Entity can perform a load on demand. Thus, if some
dependent objects are not used, they are not loaded on initialization. However,
when the clients subsequently need those dependent objects, they get loaded at
that time. Once a dependent object is loaded, subsequent container calls to the</span><code><span>ejbLoad()</span></code><span><span> </span></span><span>method must include those dependent objects for reload to
synchronize the changes with the persistent store.</span></p>

<h4><span>Store Optimization (Dirty Marker) Strategy</span></h4>

<p><span>A common
problem with bean-managed persistence occurs when persisting the complete
object graph during an<span> </span></span><code><span>ejbStore()</span></code><span><span> </span></span><span>operation. Since the EJB Container has no way of knowing what data
has changed in the entity bean and its dependent objects, it puts the burden on
the developer to determine what and how to persist the data. Some EJB
containers provide a feature to identify what objects in Composite Entity's
graph need to be stored due to a prior update. This may be done by having the
developers implement a special method in the dependent objects, such as<span> </span></span><code><span>isDirty()</span></code><span>, that is called by the
container to check if the object has been updated since the previous</span><code><span>ejbStore()</span></code><span><span> </span></span><span>operation.</span></p>

<br/><br/><h2><span>Consequences</span></h2>

<p><span>-<span>                   
</span></span><span><b><span>Eliminates Inter-Entity Relationships</span></b></span><span><br>
Using the Composite Entity pattern, the dependent objects are composed into a
single entity bean, eliminating all inter-entity-bean relationships. This
pattern provides a central place to manage both relationships and object
hierarchy.</span></p>

<p><span>-<span>                   
</span></span><span><b><span>Improves Manageability by Reducing Entity Beans</span></b></span><span><br>
As discussed, implementing persistent objects as fine-grained entity beans
results in a large number of classes that need to be developed and maintained.
Using a Composite Entity reduces the number of EJB classes and code, and makes
maintenance easier. It improves the manageability of the application by having
fewer coarse-grained components instead of many more fine-grained components.</span></p>

<p><span>-<span>                   
</span></span><span><b><span>Improves Network Performance</span></b></span><span><br>
Aggregation of the dependent objects improves overall performance. Aggregation
eliminates all fine-grained communications between dependent objects across the
network. If each dependent object were designed as a fine-grained entity bean,
a huge network overhead would result due to inter-entity bean communications.</span></p>

<p><span>-<span>                   
</span></span><span><b><span>Reduces Database Schema Dependency</span></b></span><span><br>
When the Composite Entity pattern is used, it results in coarse-grained entity
bean implementations. The database schema is hidden from the clients, since the
mapping of the entity bean to the schema is internal to the coarse-grained
entity bean. Changes to the database schema may require changes to the
Composite Entity beans. However, the clients are not affected since the
Composite Entity beans do not expose the schema to the external world.</span></p>

<p><span>-<span>                   
</span></span><span><b><span>Increases Object Granularity</span></b></span><span><br>
With a Composite Entity, the client typically looks up a single entity bean
instead of a large number of fine-grained entity beans. The client requests the
Composite Entity for data. The Composite Entity can create a composite Transfer
Object that contains all the data from the entity bean and return the Transfer
Object to the client in a single remote method call. This reduces the
chattiness between the client and the business tier.</span></p>

<p><span>-<span>                   
</span></span><span><b><span>Facilitates Composite Transfer Object Creation</span></b></span><span><br>
By using this strategy, chattiness of the communication between the client and
the entity bean is reduced, since the Composite Entity bean can return a
composite Transfer Object by providing a mechanism to send serialized Transfer
Objects from the Composite Entity bean. Although a Transfer Object returns all
data in one remote call, the amount of data returned with this one call is much
larger than the amount of data returned by separate remote calls to obtain
individual entity bean properties. This trade-off works well when the goal is
to avoid repeated remote calls and multiple lookups.</span></p>

<p><b><span>Overhead of Multi-level Dependent Object Graphs</span></b><span><br>
If the dependent objects graph managed by the Composite Entity has many levels,
then the overhead of loading and storing the dependent objects increases. This
can be reduced by using the optimization strategies for load and store, but
then there may be an overhead associated with checking the dirty objects to
store and loading the required objects.</span></p>

</div>
<!-- end content here -->

<jsp:include page="../contentFooter.jsp"/>