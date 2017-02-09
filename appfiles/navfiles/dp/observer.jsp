<jsp:include page="../contentHeader.jsp">
<jsp:param name="docTitle" value="CodeArchives - Observer Design Pattern" />
</jsp:include>


<!-- start content here -->

<div class="dpHeading">
<span style="font-weight:bold;">Observer Design Pattern</span>
</div>
<br/>
<br/>
<span style="font-size:16px;border-bottom:2px solid #ff0000;">Graphical Representation:</span>
<br/>
<br/>

<div id="img_observer">
</div>
<iframe style="display:none;" onload="(function(){new ImageLoader('img_observer','archive/resources/images/dp/observer.png',490,376).loadImage();})();"></iframe>

<div>

<br/><br/><h3><span>Intent</span></h3>

<p><span>-<span>                    
</span></span><span><span>Define
a one-to-many dependency between objects so that when one object changes state,
all its dependents are notified and updated automatically.</span></span></p>

<p><span>-<span>                    
</span></span><span><span>Encapsulate
the core (or common or engine) components in a Subject abstraction, and the
variable (or optional or user interface) components in an Observer hierarchy.</span></span></p>

<p><span>-<span>                    
</span></span><span><span>The
"View" part of Model-View-Controller.</span></span></p>

<br/><br/><h3><span>Problem</span></h3>

<p><span>A large monolithic design does not
scale well as new graphing or monitoring requirements are levied.</span></p>

<br/><br/><h3><span>Discussion</span></h3>

<p><span>Define an object that is the "keeper"
of the data model and/or business logic (the Subject). Delegate all "view"
functionality to decoupled and distinct Observer objects. Observers register
themselves with the Subject as they are created. Whenever the Subject changes,
it broadcasts to all registered Observers that it has changed, and each
Observer queries the Subject for that subset of the Subject's state that it is
responsible for monitoring.</span></p>

<p><span>This allows the number and "type" of
"view" objects to be configured dynamically, instead of being statically
specified at compile-time.</span></p>

<p><span>The protocol described above
specifies a "pull" interaction model. Instead of the Subject "pushing" what has
changed to all Observers, each Observer is responsible for "pulling" its
particular "window of interest" from the Subject. The "push" model compromises
reuse, while the "pull" model is less efficient.</span></p>

<p><span>Issues that are discussed, but left
to the discretion of the designer, include: implementing event compression
(only sending a single change broadcast after a series of consecutive changes
has occurred), having a single Observer monitoring multiple Subjects, and
ensuring that a Subject notify its Observers when it is about to go away.</span></p>

<p><span>The Observer pattern captures the
lion's share of the Model-View-Controller architecture that has been a part of
the Smalltalk community for years.</span></p>

<br/><br/><h3><span>Check list</span></h3>

<p><span>1.<span>             
</span></span><span><span>Differentiate
between the core (or independent) functionality and the optional (or dependent) functionality.</span></span></p>

<p><span>2.<span>             
</span></span><span><span>Model
the independent functionality with a "subject" abstraction.</span></span></p>

<p><span>3.<span>             
</span></span><span><span>Model
the dependent functionality with an "observer" hierarchy.</span></span></p>

<p><span>4.<span>             
</span></span><span><span>The
Subject is coupled only to the Observer base class.</span></span></p>

<p><span>5.<span>             
</span></span><span><span>The
client configures the number and type of Observers.</span></span></p>

<p><span>6.<span>             
</span></span><span><span>Observers
register themselves with the Subject.</span></span></p>

<p><span>7.<span>             
</span></span><span><span>The
Subject broadcasts events to all registered Observers.</span></span></p>

<p><span>8.<span>             
</span></span><span><span>The
Subject may "push" information at the Observers, or, the Observers may "pull"
the information they need from the Subject.</span></span></p>

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

<p><span>On the other
hand, Mediator can leverage Observer for dynamically registering colleagues and
communicating with them.</span></p>

</div>
<!-- end content here -->

<jsp:include page="../contentFooter.jsp"/>