<jsp:include page="../contentHeader.jsp">
<jsp:param name="docTitle" value="CodeArchives - Mediator Design Pattern" />
</jsp:include>


<!-- start content here -->

<div class="dpHeading">
<span style="font-weight:bold;">Mediator Design Pattern</span>
</div>
<br/>
<br/>
<span style="font-size:16px;border-bottom:2px solid #ff0000;">Graphical Representation:</span>
<br/>
<br/>

<div id="img_mediator">
</div>
<iframe style="display:none;" onload="(function(){new ImageLoader('img_mediator','archive/resources/images/dp/mediator.png',476,272).loadImage();})();"></iframe>

<div>

<br/><br/><h3><span>Intent</span></h3>

<p><span>-<span>                    
</span></span><span><span>Define
an object that encapsulates how a set of objects interact. Mediator promotes
loose coupling by keeping objects from referring to each other explicitly, and
it lets you vary their interaction independently.</span></span></p>

<p><span>-<span>                    
</span></span><span><span>Design
an intermediary to decouple many peers.</span></span></p>

<p><span>-<span>                    
</span></span><span><span>Promote
the many-to-many relationships between interacting peers to "full object status".</span></span></p>

<br/><br/><h3><span>Problem</span></h3>

<p><span>We want to design reusable
components, but dependencies between the potentially reusable pieces
demonstrates the "spaghetti code" phenomenon (trying to scoop a single serving
results in an "all or nothing clump").</span></p>

<p><span>The Mediator pattern promotes a
"many-to-many relationship network" to "full object status". Modelling the
inter-relationships with an object enhances encapsulation, and allows the
behavior of those inter-relationships to be modified or extended through subclassing.</span></p>

<p><span>An example where Mediator is useful
is the design of a user and group capability in an operating system. A group
can have zero or more users, and, a user can be a member of zero or more
groups. The Mediator pattern provides a flexible and non-invasive way to
associate and manage users and groups.</span></p>

<br/><br/><h3><span>Check list</span></h3>

<p><span>1.<span>             
</span></span><span><span>Identify
a collection of interacting objects that would benefit from mutual decoupling.</span></span></p>

<p><span>2.<span>             
</span></span><span><span>Encapsulate
those interactions in the abstraction of a new class.</span></span></p>

<p><span>3.<span>             
</span></span><span><span>Create
an instance of that new class and rework all "peer" objects to interact with
the Mediator only.</span></span></p>

<p><span>4.<span>             
</span></span><span><span>Balance
the principle of decoupling with the principle of distributing responsibility evenly.</span></span></p>

<p><span>5.<span>             
</span></span><span><span>Be
careful not to create a "controller" or "god" object.</span></span></p>

<br/><br/><h3><span>Rules of thumb</span></h3>

<p><span>-<span>                    
</span></span><span><span>Chain
of Responsibility, Command, Mediator, and Observer, address how you can
decouple senders and receivers, but with different trade-offs. Chain of
Responsibility passes a sender request along a chain of potential receivers.
Command normally specifies a sender-receiver connection with a subclass.
Mediator has senders and receivers reference each other indirectly. Observer
defines a very decoupled interface that allows for multiple receivers to be
configured at run-time.</span></span></p>

<p><span>-<span>                    
</span></span><span><span>Mediator
and Observer are competing patterns. The difference between them is that
Observer distributes communication by introducing "observer" and "subject"
objects, whereas a Mediator object encapsulates the communication between other
objects. We've found it easier to make reusable Observers and Subjects than to
make reusable Mediators.</span></span></p>

<p><span>-<span>                    
</span></span><span><span>On
the other hand, Mediator can leverage Observer for dynamically registering
colleagues and communicating with them.</span></span></p>

<p><span>Mediator is
similar to Facade in that it abstracts functionality of existing classes.
Mediator abstracts/centralizes arbitrary communication between colleague
objects, it routinely "adds value", and it is known/referenced by the colleague
objects (i.e. it defines a multidirectional protocol). In contrast, Facade
defines a simpler interface to a subsystem, it doesn't add new functionality,
and it is not known by the subsystem classes (i.e. it defines a unidirectional
protocol where it makes requests of the subsystem classes but not vice versa).</span></p>

</div>
<!-- end content here -->

<jsp:include page="../contentFooter.jsp"/>