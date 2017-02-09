<jsp:include page="../contentHeader.jsp">
<jsp:param name="docTitle" value="CodeArchives - Data Access Object (DAO) Design Pattern" />
</jsp:include>


<!-- start content here -->

<div class="dpHeading">
<span style="font-weight:bold;">Data Access Object (DAO) Design Pattern</span>
</div>
<br/>
<br/>
<span style="font-size:16px;border-bottom:2px solid #ff0000;">Graphical Representation:</span>
<br/>
<br/>

<div id="img_dataaccessobject">
</div>
<iframe style="display:none;" onload="(function(){new ImageLoader('img_dataaccessobject','archive/resources/images/dp/dataaccessobject.png',590,381).loadImage();})();"></iframe>

<div>

<br/><br/><h2><span>Context</span></h2>

<p><span>Access to data
varies depending on the source of the data. Access to persistent storage, such
as to a database, varies greatly depending on the type of storage (relational
databases, object-oriented databases, flat files, and so forth) and the vendor
implementation.</span></p>

<br/><br/><h2><span>Problem</span></h2>

<p><span>Many real-world
Java 2 Platform, Enterprise Edition (J2EE) applications need to use persistent
data at some point. For many applications, persistent storage is implemented
with different mechanisms, and there are marked differences in the APIs used to
access these different persistent storage mechanisms. Other applications may
need to access data that resides on separate systems. For example, the data may
reside in mainframe systems, Lightweight Directory Access Protocol (LDAP)
repositories, and so forth. Another example is where data is provided by
services through external systems such as business-to-business (B2B)
integration systems, credit card bureau service, and so forth.</span></p>

<p><span>Typically,
applications use shared distributed components such as entity beans to
represent persistent data. An application is considered to employ bean-managed
persistence (BMP) for its entity beans when these entity beans explicitly
access the persistent storage-the entity bean includes code to directly access
the persistent storage. An application with simpler requirements may forego
using entity beans and instead use session beans or servlets to directly access
the persistent storage to retrieve and modify the data. Or, the application
could use entity beans with container-managed persistence, and thus let the
container handle the transaction and persistent details.</span></p>

<p><span>Applications
can use the JDBC API to access data residing in a relational database
management system (RDBMS). The JDBC API enables standard access and
manipulation of data in persistent storage, such as a relational database. The
JDBC API enables J2EE applications to use SQL statements, which are the
standard means for accessing RDBMS tables. However, even within an RDBMS
environment, the actual syntax and format of the SQL statements may vary
depending on the particular database product.</span></p>

<p><span>There is even
greater variation with different types of persistent storage. Access
mechanisms, supported APIs, and features vary between different types of
persistent stores such as RDBMS, object-oriented databases, flat files, and so
forth. Applications that need to access data from a legacy or disparate system
(such as a mainframe, or B2B service) are often required to use APIs that may
be proprietary. Such disparate data sources offer challenges to the application
and can potentially create a direct dependency between application code and
data access code. When business components-entity beans, session beans, and
even presentation components like servlets and helper objects for JavaServer
Pages (JSP) pages --need to access a data source, they can use the appropriate
API to achieve connectivity and manipulate the data source. But including the
connectivity and data access code within these components introduces a tight
coupling between the components and the data source implementation. Such code
dependencies in components make it difficult and tedious to migrate the
application from one type of data source to another. When the data source
changes, the components need to be changed to handle the new type of data
source.</span></p>

<br/><br/><h2><span>Forces</span></h2>

<p><span>-<span>                   
</span></span><span><span>Components such as bean-managed entity beans, session beans,
servlets, and other objects like helpers for JSP pages need to retrieve and
store information from persistent stores and other data sources like legacy
systems, B2B, LDAP, and so forth.</span></span></p>

<p><span>-<span>                   
</span></span><span><span>Persistent storage APIs vary depending on the product vendor.
Other data sources may have APIs that are nonstandard and/or proprietary. These
APIs and their capabilities also vary depending on the type of storage-RDBMS,
object-oriented database management system (OODBMS), XML documents, flat files,
and so forth. There is a lack of uniform APIs to address the requirements to
access such disparate systems.</span></span></p>

<p><span>-<span>                   
</span></span><span><span>Components typically use proprietary APIs to access external
and/or legacy systems to retrieve and store data.</span></span></p>

<p><span>-<span>                   
</span></span><span><span>Portability of the components is directly affected when specific
access mechanisms and APIs are included in the components.</span></span></p>

<p><span>-<span>                   
</span></span><span><span>Components need to be transparent to the actual persistent store
or data source implementation to provide easy migration to different vendor
products, different storage types, and different data source types.</span></span></p>

<br/><br/><h2><span>Solution</span></h2>

<p><b><span>Use a Data
Access Object (DAO) to abstract and encapsulate all access to the data source.
The DAO manages the connection with the data source to obtain and store data.</span></b></p>

<p><span>The DAO
implements the access mechanism required to work with the data source. The data
source could be a persistent store like an RDBMS, an external service like a
B2B exchange, a repository like an LDAP database, or a business service
accessed via CORBA Internet Inter-ORB Protocol (IIOP) or low-level sockets. The
business component that relies on the DAO uses the simpler interface exposed by
the DAO for its clients. The DAO completely hides the data source
implementation details from its clients. Because the interface exposed by the
DAO to clients does not change when the underlying data source implementation
changes, this pattern allows the DAO to adapt to different storage schemes
without affecting its clients or business components. Essentially, the DAO acts
as an adapter between the component and the data source.</span></p>

<br/><br/><h3><span>Participants and Responsibilities</span></h3>

<h4><span>BusinessObject</span></h4>

<p><span>The
BusinessObject represents the data client. It is the object that requires
access to the data source to obtain and store data. A BusinessObject may be
implemented as a session bean, entity bean, or some other Java object, in
addition to a servlet or helper bean that accesses the data source.</span></p>

<h4><span>DataAccessObject</span></h4>

<p><span>The
DataAccessObject is the primary object of this pattern. The DataAccessObject
abstracts the underlying data access implementation for the BusinessObject to
enable transparent access to the data source. The BusinessObject also delegates
data load and store operations to the DataAccessObject.</span></p>

<h4><span>DataSource</span></h4>

<p><span>This
represents a data source implementation. A data source could be a database such
as an RDBMS, OODBMS, XML repository, flat file system, and so forth. A data
source can also be another system (legacy/mainframe), service (B2B service or
credit card bureau), or some kind of repository (LDAP).</span></p>

<h4><span>TransferObject</span></h4>

<p><span>This
represents a Transfer Object used as a data carrier. The DataAccessObject may
use a Transfer Object to return data to the client. The DataAccessObject may
also receive the data from the client in a Transfer Object to update the data
in the data source.</span></p>

<br/><br/><h3><span>Strategies</span></h3>

<h4><span>Automatic DAO Code Generation Strategy</span></h4>

<p><span>Since each
BusinessObject corresponds to a specific DAO, it is possible to establish
relationships between the BusinessObject, DAO, and underlying implementations
(such as the tables in an RDBMS). Once the relationships are established, it is
possible to write a simple application-specific code-generation utility that
generates the code for all DAOs required by the application. The metadata to
generate the DAO can come from a developer-defined descriptor file.
Alternatively, the code generator can automatically introspect the database and
provide the necessary DAOs to access the database. If the requirements for DAOs
are sufficiently complex, consider using third-party tools that provide
object-to-relational mapping for RDBMS databases. These tools typically include
GUI tools to map the business objects to the persistent storage objects and
thereby define the intermediary DAOs. The tools automatically generate the code
once the mapping is complete, and may provide other value-added features such
as results caching, query caching, integration with application servers,
integration with other third-party products (e.g., distributed caching), and so
forth.</span></p>

<h4><span>Factory for Data Access Objects Strategy</span></h4>

<p><span>The DAO
pattern can be made highly flexible by adopting the Abstract Factory [GoF] and
the Factory Method [GoF] patterns</span></p>

<p><span>When the
underlying storage is subject to change from one implementation to another,
this strategy may be implemented using the Abstract Factory pattern. The
Abstract Factory can in turn build on and use the Factory Method
implementation, as suggested in<span> </span><em><span>Design Patterns: Elements of Reusable Object-Oriented
Software</span></em><span> </span>[GoF]. In
this case, this strategy provides an abstract DAO factory object (Abstract
Factory) that can construct various types of concrete DAO factories, each
factory supporting a different type of persistent storage implementation. Once
you obtain the concrete DAO factory for a specific implementation, you use it
to produce DAOs supported and implemented in that implementation.</span></p>

<p><span>The class
diagram for this strategy is shown in Figure 9.4. This class diagram shows a
base DAO factory, which is an abstract class that is inherited and implemented
by different concrete DAO factories to support storage implementation-specific
access. The client can obtain a concrete DAO factory implementation such as
RdbDAOFactory and use it to obtain concrete DAOs that work with that specific
storage implementation. For example, the data client can obtain an
RdbDAOFactory and use it to get specific DAOs such as RdbCustomerDAO,
RdbAccountDAO, and so forth. The DAOs can extend and implement a generic base
class (shown as DAO1 and DAO2) that specifically describe the DAO requirements
for the business object it supports. Each concrete DAO is responsible for
connecting to the data source and obtaining and manipulating data for the
business object it supports.</span></p>

<br/><br/><h2><span>Consequences</span></h2>

<p><span>-<span>                   
</span></span><span><b><span>Enables Transparency</span></b></span><span><br>
Business objects can use the data source without knowing the specific details
of the data source's implementation. Access is transparent because the
implementation details are hidden inside the DAO.</span></p>

<p><span>-<span>                   
</span></span><span><b><span>Enables Easier Migration</span></b></span><span><br>
A layer of DAOs makes it easier for an application to migrate to a different
database implementation. The business objects have no knowledge of the underlying
data implementation. Thus, the migration involves changes only to the DAO
layer. Further, if employing a factory strategy, it is possible to provide a
concrete factory implementation for each underlying storage implementation. In
this case, migrating to a different storage implementation means providing a
new factory implementation to the application.</span></p>

<p><span>-<span>                   
</span></span><span><b><span>Reduces Code Complexity in Business Objects</span></b></span><span>Because the DAOs manage
all the data access complexities, it simplifies the code in the business
objects and other data clients that use the DAOs. All implementation-related
code (such as SQL statements) is contained in the DAO and not in the business
object. </span><span>This improves code readability and development productivity.</span></p>

<p><span>-<span>                   
</span></span><span><b><span>Centralizes All Data Access into a Separate Layer</span></b></span><span><br>
Because all data access operations are now delegated to the DAOs, the separate
data access layer can be viewed as the layer that can isolate the rest of the
application from the data access implementation. This centralization makes the
application easier to maintain and manage.</span></p>

<p><span>-<span>                   
</span></span><span><b><span>Not Useful for Container-Managed Persistence</span></b></span><span><br>
Because the EJB container manages entity beans with container-managed
persistence (CMP), the container automatically services all persistent storage
access. Applications using container-managed entity beans do not need a DAO
layer, since the application server transparently provides this functionality.
However, DAOs are still useful when a combination of CMP (for entity beans) and
BMP (for session beans, servlets) is required.</span></p>

<p><span>-<span>                   
</span></span><span><b><span>Adds Extra Layer</span></b></span><span><br>
The DAOs create an additional layer of objects between the data client and the
data source that need to be designed and implemented to leverage the benefits
of this pattern. But the benefit realized by choosing this approach pays off
for the additional effort.</span></p>

<p><b><span>Needs Class Hierarchy Design</span></b><span><br>
When using a factory strategy, the hierarchy of concrete factories and the
hierarchy of concrete products produced by the factories need to be designed
and implemented. This additional effort needs to be considered if there is
sufficient justification warranting such flexibility. This increases the
complexity of the design. However, you can choose to implement the factory
strategy starting with the Factory Method pattern first, and then move towards
the Abstract Factory if necessary.</span></p>

</div>
<!-- end content here -->

<jsp:include page="../contentFooter.jsp"/>