<jsp:include page="../contentHeader.jsp">
<jsp:param name="docTitle" value="CodeArchives - Strategy Design Pattern" />
</jsp:include>


<!-- start content here -->

<div class="dpHeading">
<span style="font-weight:bold;">Strategy Design Pattern</span>
</div>
<br/>
<br/>
<span style="font-size:16px;border-bottom:2px solid #ff0000;">Graphical Representation:</span>
<br/>
<br/>

<div id="img_strategy">
</div>
<iframe style="display:none;" onload="(function(){new ImageLoader('img_strategy','archive/resources/images/dp/strategy.png',514,239).loadImage();})();"></iframe>

<div>

<br/><br/><h3><span>Intent</span></h3>

<p><span>-<span>                    
</span></span><span><span>Define
a family of algorithms, encapsulate each one, and make them interchangeable.
Strategy lets the algorithm vary independently from the clients that use it.</span></span></p>

<p><span>-<span>                    
</span></span><span><span>Capture
the abstraction in an interface, bury implementation details in derived classes.</span></span></p>

<br/><br/><h3><span>Problem</span></h3>

<p><span>One of the dominant strategies of
object-oriented design is the "open-closed principle".</span></p>

<p><span>Figure demonstrates how this is
routinely achieved - encapsulate interface details in a base class, and bury
implementation details in derived classes. Clients can then couple themselves
to an interface, and not have to experience the upheaval associated with
change: no impact when the number of derived classes changes, and no impact
when the implementation of a derived class changes.</span></p>

<p><span>A generic value of the software
community for years has been, "maximize cohesion and minimize coupling". The
object-oriented design approach shown in figure is all about minimizing
coupling. Since the client is coupled only to an abstraction (i.e. a useful
fiction), and not a particular realization of that abstraction, the client
could be said to be practicing "abstract coupling" . an object-oriented variant
of the more generic exhortation "minimize coupling".</span></p>

<p><span>A more popular characterization of
this "abstract coupling" principle is "Program to an interface, not an implementation".</span></p>

<p><span>Clients should prefer the "additional
level of indirection" that an interface (or an abstract base class) affords.
The interface captures the abstraction (i.e. the "useful fiction") the client
wants to exercise, and the implementations of that interface are effectively hidden.</span></p>

<br/><br/><h3><span>Structure</span></h3>

<p><span>The Interface entity could represent
either an abstract base class, or the method signature expectations by the
client. In the former case, the inheritance hierarchy represents dynamic
polymorphism. In the latter case, the Interface entity represents template code
in the client and the inheritance hierarchy represents static polymorphism.</span></p>

<br/><br/><h3><span>Check list</span></h3>

<p><span>1.<span>             
</span></span><span><span>Identify
an algorithm (i.e. a behavior) that the client would prefer to access through a
"flex point".</span></span></p>

<p><span>2.<span>             
</span></span><span><span>Specify
the signature for that algorithm in an interface.</span></span></p>

<p><span>3.<span>             
</span></span><span><span>Bury
the alternative implementation details in derived classes.</span></span></p>

<p><span>4.<span>             
</span></span><span><span>Clients
of the algorithm couple themselves to the interface.</span></span></p>

<br/><br/><h3><span>Rules of thumb</span></h3>

<p><span>-<span>                    
</span></span><span><span>Strategy
is like Template Method except in its granularity.</span></span></p>

<p><span>-<span>                    
</span></span><span><span>State
is like Strategy except in its intent.</span></span></p>

<p><span>-<span>                    
</span></span><span><span>Strategy
lets you change the guts of an object. Decorator lets you change the skin.</span></span></p>

<p><span>-<span>                    
</span></span><span><span>State,
Strategy, Bridge (and to some degree Adapter) have similar solution structures.
They all share elements of the 'handle/body' idiom. They differ in intent -
that is, they solve different problems.</span></span></p>

<p><span>-<span>                    
</span></span><span><span>Strategy
has 2 different implementations, the first is similar to State. The difference
is in binding times (Strategy is a bind-once pattern, whereas State is more dynamic).</span></span></p>

<p><span>Strategy
objects often make good Flyweights.</span></p>

</div>

<!-- end content here -->

<jsp:include page="../contentFooter.jsp"/>