<jsp:include page="../contentHeader.jsp">
<jsp:param name="docTitle" value="CodeArchives - Model View Controller(MVC) Design Pattern" />
</jsp:include>


<!-- start content here -->

<div class="dpHeading">
<span style="font-weight:bold;">Model View Controller(MVC) Design Pattern</span>
</div>
<br/>
<br/>
<span style="font-size:16px;border-bottom:2px solid #ff0000;">Graphical Representation:</span>
<br/>
<br/>

<div id="img_mvc">
</div>
<iframe style="display:none;" onload="(function(){new ImageLoader('img_mvc','archive/resources/images/dp/mvc.png',453,303).loadImage();})();"></iframe>

<div>

<br/><br/><h3><span>Context</span></h3>

<p><span>Application
presents content to users in numerous pages containing various data. Also, the
engineering team responsible for designing, implementing, and maintaining the
application is composed of individuals with different skill sets.</span></p>

<br/><br/><h3><span>Problem</span></h3>

<p><span>Now, more
than ever, enterprise applications need to support multiple types of users with
multiple types of interfaces. For example, an online store may require an HTML
front for Web customers, a WML front for wireless customers, a Java</span><sup><span>TM</span></sup><span><span> </span></span><span>(JFC) / Swing interface for administrators, and an
XML-based Web service for suppliers</span></p>

<p><span>When
developing an application to support a single type of client, it is sometimes
beneficial to interweave data access and business rules logic with
interface-specific logic for presentation and control. Such an approach,
however, is inadequate when applied to enterprise systems that need to support
multiple types of clients. Different applications need to be developed, one to
support each type of client interface. Non-interface-specific code is
duplicated in each application, resulting in duplicate efforts in
implementation (often of the copy-and-paste variety), as well as testing and
maintenance. The task of determining what to duplicate is expensive in itself,
since interface-specific and non-interface-specific code are intertwined. The
duplication efforts are inevitably imperfect. Slowly, but surely, applications
that are supposed to provide the same core functionality evolve into different
systems.</span></p>

<br/><br/><h3><span>Forces</span></h3>

<ul type="disc">
 <li><span>The same enterprise data needs to be accessed when
     presented in different views:<span> </span><i>e.g.</i><span> </span>HTML, WML, JFC/Swing, XML</span></li>
 <li><span>The same enterprise data needs to be updated through
     different interactions:<span> </span><i>e.g.</i><span> </span>link selections on an HTML page
     or WML card, button clicks on a JFC/Swing GUI, SOAP messages written in
     XML</span></li>
 <li><span>Supporting multiple types of views and interactions
     should not impact the components that provide the core functionality of
     the enterprise application</span></li>
</ul>

<br/><br/><h3><span>Solution</span></h3>

<p><span>By applying
the Model-View-Controller (MVC) architecture to a Java</span><sup><span>TM</span></sup><span><span> </span></span><span>2 Platform, Enterprise Edition (J2EE</span><sup><span>TM</span></sup><span>) application, you
separate core business model functionality from the presentation and control
logic that uses this functionality. Such separation allows multiple views to
share the same enterprise data model, which makes supporting multiple clients
easier to implement, test, and maintain.</span></p>

<h4><span>Participants &amp;
Responsibilities</span></h4>

<p><span>The MVC
architecture has its roots in Smalltalk, where it was originally applied to map
the traditional input, processing, and output tasks to the graphical user
interaction model. However, it is straightforward to map these concepts into
the domain of multi-tier enterprise applications.</span></p>

<ul type="disc">
 <li><b><span>Model</span></b><span><span> </span></span><span>- The model represents
     enterprise data and the business rules that govern access to and updates
     of this data. Often the model serves as a software approximation to a
     real-world process, so simple real-world modeling techniques apply when
     defining the model.</span></li>
 <li><b><span>View</span></b><span><span> </span></span><span>-The view renders the
     contents of a model. It accesses enterprise data through the model and
     specifies how that data should be presented. It is the view's
     responsibility to maintain consistency in its presentation when the model
     changes. This can be achieved by using a push model, where the view
     registers itself with the model for change notifications, or a pull model,
     where the view is responsible for calling the model when it needs to
     retrieve the most current data.</span></li>
 <li><b><span>Controller</span></b><span><span> </span></span><span>- The controller translates interactions with the view into
     actions to be performed by the model. In a stand-alone GUI client, user
     interactions could be button clicks or menu selections, whereas in a Web
     application, they appear as GET and POST HTTP requests. The actions
     performed by the model include activating business processes or changing
     the state of the model. Based on the user interactions and the outcome of
     the model actions, the controller responds by selecting an appropriate
     view.</span></li>
</ul>

<h4><span>Strategies</span></h4>

<p><span>-<span>        
</span></span><span><b><span>Web-based clients such as browsers.</span></b></span><span><span> </span></span><span>JavaServer Pages</span><sup><span>TM</span></sup><span><span> </span></span><span>(JSP</span><sup><span>TM</span></sup><span>) pages to render the view, Servlet as the controller, and
Enterprise JavaBeans</span><sup><span>TM</span></sup><span><span> </span></span><span>(EJB</span><sup><span>TM</span></sup><span>) components as the
model. </span><span>The Java Pet Store sample application illustrates this strategy.</span></p>

<p><span>-<span>        
</span></span><span><b><span>Centralized controller.</span></b></span><span><span> </span></span><span>Instead of having multiple servlets as controllers, a main
Servlet is used to make control more manageable. The<span> </span></span><span>Front Controller</span><span><span> </span></span><span>pattern describes this
strategy in more detail.</span></p>

<br/><br/><h3><span>Consequences</span></h3>

<p><span>-<span>        
</span></span><span><b><span>Re-use of Model components.</span></b></span><span><span> </span></span><span>The separation of model and view allows multiple views to
use the same enterprise model. Consequently, an enterprise application's model
components are easier to implement, test, and maintain, since all access to the
model goes through these components.</span></p>

<p><span>-<span>        
</span></span><span><b><span>Easier support for new types of clients.</span></b></span><span><span> </span></span><span>To support a new type of client, you simply write a view
and some controller logic and wire them into the existing enterprise application.</span></p>

<p><b><span>Increased design complexity.</span></b><span><span> </span></span><span>This pattern introduces some extra classes due to the
separation of model, view, and controller.</span></p>

</div>
<!-- end content here -->

<jsp:include page="../contentFooter.jsp"/>