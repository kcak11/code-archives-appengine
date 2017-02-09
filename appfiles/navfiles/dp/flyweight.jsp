<jsp:include page="../contentHeader.jsp">
<jsp:param name="docTitle" value="CodeArchives - Flyweight Design Pattern" />
</jsp:include>


<!-- start content here -->

<div class="dpHeading">
<span style="font-weight:bold;">Flyweight Design Pattern</span>
</div>
<br/>
<br/>
<span style="font-size:16px;border-bottom:2px solid #ff0000;">Graphical Representation:</span>
<br/>
<br/>

<div id="img_flyweight">
</div>
<iframe style="display:none;" onload="(function(){new ImageLoader('img_flyweight','archive/resources/images/dp/flyweight.png',550,360).loadImage();})();"></iframe>

<div>

<br/><br/><h3><span>Intent</span></h3>

<p><span>-<span>                    
</span></span><span><span>Use
sharing to support large numbers of fine-grained objects efficiently.</span></span></p>

<p><span>-<span>                    
</span></span><span><span>The
Motif GUI strategy of replacing heavy-weight widgets with
light-weight gadgets.</span></span></p>

<br/><br/><h3><span>Problem</span></h3>

<p><span>Designing objects down to the lowest
levels of system "granularity" provides optimal flexibility, but can be
unacceptably expensive in terms of performance and memory usage.</span></p>

<br/><br/><h3><span>Discussion</span></h3>

<p><span>The Flyweight pattern describes how
to share objects to allow their use at fine granularities without prohibitive
cost. Each "flyweight" object is divided into two pieces: the state-dependent
(extrinsic) part, and the state-independent (intrinsic) part. Intrinsic state
is stored (shared) in the Flyweight object. Extrinsic state is stored or
computed by client objects, and passed to the Flyweight when its operations
are invoked.</span></p>

<p><span>An illustration of this approach
would be Motif widgets that have been re-engineered as light-weight gadgets.
Whereas widgets are "intelligent" enough to stand on their own; gadgets exist
in a dependent relationship with their parent layout manager widget. Each
layout manager provides context-dependent event handling, real estate
management, and resource services to its flyweight gadgets, and each gadget is
only responsible for context-independent state and behavior.</span></p>

<br/><br/><h3><span>Structure</span></h3>

<p><span>Flyweights are stored in a Factory's
repository. The client restrains herself from creating Flyweights directly, and
requests them from the Factory. Each Flyweight cannot stand on its own. Any
attributes that would make sharing impossible must be supplied by the client
whenever a request is made of the Flyweight. If the context lends itself to
"economy of scale" (i.e. the client can easily compute or look-up the necessary
attributes), then the Flyweight pattern offers appropriate leverage.</span></p>

<br/><br/><h3><span>Check list</span></h3>

<p><span>1.<span>             
</span></span><span><span>Ensure
that object overhead is an issue needing attention, and, the client of the
class is able and willing to absorb responsibility realignment.</span></span></p>

<p><span>2.<span>             
</span></span><span><span>Divide
the target class's state into: shareable (intrinsic) state, and non-shareable
(extrinsic) state.</span></span></p>

<p><span>3.<span>             
</span></span><span><span>Remove
the non-shareable state from the class attributes, and add it the calling
argument list of affected methods.</span></span></p>

<p><span>4.<span>             
</span></span><span><span>Create
a Factory that can cache and reuse existing class instances.</span></span></p>

<p><span>5.<span>             
</span></span><span><span>The
client must use the Factory instead of the new operator to
request objects.</span></span></p>

<p><span>6.<span>             
</span></span><span><span>The
client (or a third party) must look-up or compute the non-shareable state, and
supply that state to class methods.</span></span></p>

<br/><br/><h3><span>Rules of thumb</span></h3>

<p><span>-<span>                    
</span></span><span><span>Whereas
Flyweight shows how to make lots of little objects, Facade shows how to make a
single object represent an entire subsystem.</span></span></p>

<p><span>-<span>                    
</span></span><span><span>Flyweight
is often combined with Composite to implement shared leaf nodes.</span></span></p>

<p><span>-<span>                    
</span></span><span><span>Terminal
symbols within Interpreter's abstract syntax tree can be shared
with Flyweight.</span></span></p>

<p><span>Flyweight
explains when and how State objects can be shared.</span></p>

</div>
<!-- end content here -->

<jsp:include page="../contentFooter.jsp"/>