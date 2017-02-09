<jsp:include page="../contentHeader.jsp">
<jsp:param name="docTitle" value="CodeArchives - Bridge Design Pattern" />
</jsp:include>


<!-- start content here -->

<div class="dpHeading">
<span style="font-weight:bold;">Bridge Design Pattern</span>
</div>
<br/>
<br/>
<span style="font-size:16px;border-bottom:2px solid #ff0000;">Graphical Representation:</span>
<br/>
<br/>

<div id="img_bridge">
</div>
<iframe style="display:none;" onload="(function(){new ImageLoader('img_bridge','archive/resources/images/dp/bridge.png',572,361).loadImage();})();"></iframe>


<div>

<br/><br/><h3><span>Intent</span></h3>

<p><span>-<span>                    
</span></span><span><span>Decouple
an abstraction from its implementation so that the two can
vary independently.</span></span></p>

<p><span>-<span>                    
</span></span><span><span>Publish
interface in an inheritance hierarchy, and bury implementation in its own
inheritance hierarchy.</span></span></p>

<p><span>-<span>                    
</span></span><span><span>Beyond encapsulation, to insulation</span></span></p>

<br/><br/><h3><span>Problem</span></h3>

<p><span><span> "</span></span><span>Hardening
of the software arteries" has occurred by using subclassing of an abstract base
class to provide alternative implementations. This locks in compile-time
binding between interface and implementation. The abstraction and
implementation cannot be independently extended or composed.</span></p>

<br/><br/><h3><span>Motivation</span></h3>

<p><span>Consider the domain of
"thread scheduling".</span></p>

<p><span><span>There
are two types of thread schedulers, and two types of operating systems or
"platforms". Given this approach to specialization, we have to define a class
for each permutation of these two dimensions. If we add a new platform (say ---
Java's Virtual Machine), what would our hierarchy look like?</span></span></p>

<p><span><span>What if
we had three kinds of thread schedulers, and four kinds of platforms? What if
we had five kinds of thread schedulers, and ten kinds of platforms? The number
of classes we would have to define is the product of the number of scheduling
schemes and the number of platforms.</span></span></p>

<p><span><span>The
Bridge design pattern proposes refactoring this exponentially explosive
inheritance hierarchy into two orthogonal hierarchies - one for
platform-independent abstractions, and the other for
platform-dependent implementations.</span></span></p>

<br/><br/><h3><span>Discussion</span></h3>

<p><span>Decompose the component's interface
and implementation into orthogonal class hierarchies. The interface class
contains a pointer to the abstract implementation class. This pointer is
initialized with an instance of a concrete implementation class, but all
subsequent interaction from the interface class to the implementation class is
limited to the abstraction maintained in the implementation base class. The
client interacts with the interface class, and it in turn "delegates" all
requests to the implementation class.</span></p>

<p><span>The interface object is the "handle"
known and used by the client; while the implementation object, or "body", is
safely encapsulated to ensure that it may continue to evolve, or be entirely
replaced (or shared at run-time.</span></p>

<p><span>Use the Bridge pattern when:</span></p>

<p><span>-<span>                    
</span></span><span><span>you
want run-time binding of the implementation,</span></span></p>

<p><span>-<span>                    
</span></span><span><span>you
have a proliferation of classes resulting from a coupled interface and
numerous implementations,</span></span></p>

<p><span>-<span>                    
</span></span><span><span>you
want to share an implementation among multiple objects,</span></span></p>

<p><span>-<span>                    
</span></span><span><span>you
need to map orthogonal class hierarchies.</span></span></p>

<p><span>Consequences include:</span></p>

<p><span>-<span>                    
</span></span><span><span>decoupling the object's interface,</span></span></p>

<p><span>-<span>                    
</span></span><span><span>improved
extensibility (you can extend (i.e. subclass) the abstraction and
implementation hierarchies independently),</span></span></p>

<p><span>-<span>                    
</span></span><span><span>hiding details from clients.</span></span></p>

<p><span>Bridge is a synonym for the "handle/body"
idiom. This is a design mechanism that encapsulates an implementation class
inside of an interface class. The former is the body, and the latter is the
handle. The handle is viewed by the user as the actual class, but the work is
done in the body. "The handle/body class idiom may be used to decompose a
complex abstraction into smaller, more manageable classes. The idiom may
reflect the sharing of a single resource by multiple classes that control
access to it (e.g. reference counting)."</span></p>

<br/><br/><h3><span>Structure</span></h3>

<p><span>The Client doesn't want to deal with
platform-dependent details. The Bridge pattern encapsulates this complexity
behind an abstraction "wrapper".</span></p>

<p><span>Bridge emphasizes identifying and
decoupling "interface" abstraction from "implementation" abstraction.</span></p>

<br/><br/><h3><span>Check list</span></h3>

<p><span>1.<span>             
</span></span><span><span>Decide
if two orthogonal dimensions exist in the domain. These independent concepts
could be: abstraction/platform, or domain/infrastructure, or
front-end/back-end, or interface/implementation.</span></span></p>

<p><span>2.<span>             
</span></span><span><span>Design
the separation of concerns: what does the client want, and what do the
platforms provide.</span></span></p>

<p><span>3.<span>             
</span></span><span><span>Design
a platform-oriented interface that is minimal, necessary, and sufficient. Its
goal is to decouple the abstraction from the platform.</span></span></p>

<p><span>4.<span>             
</span></span><span><span>Define
a derived class of that interface for each platform.</span></span></p>

<p><span>5.<span>             
</span></span><span><span>Create
the abstraction base class that "has a" platform object and delegates the
platform-oriented functionality to it.</span></span></p>

<p><span>6.<span>             
</span></span><span><span>Define
specializations of the abstraction class if desired.</span></span></p>

<br/><br/><h3><span>Rules of thumb</span></h3>

<p><span>-<span>                    
</span></span><span><span>Adapter
makes things work after they're designed; Bridge makes them work before
they are.</span></span></p>

<p><span>-<span>                    
</span></span><span><span>Bridge
is designed up-front to let the abstraction and the implementation vary
independently. </span></span><span>Adapter is retrofitted to make unrelated classes
work together.</span></p>

<p><span>-<span>                    
</span></span><span><span>State,
Strategy, Bridge (and to some degree Adapter) have similar solution structures.
They all share elements of the "handle/body" idiom. They differ in intent -
that is, they solve different problems.</span></span></p>

<p><span>-<span>                    
</span></span><span><span>The
structure of State and Bridge are identical (except that Bridge admits
hierarchies of envelope classes, whereas State allows only one). The two
patterns use the same structure to solve different problems: State allows an
object's behavior to change along with its state, while Bridge's intent is to
decouple an abstraction from its implementation so that the two can
vary independently.</span></span></p>

<p><span>If interface
classes delegate the creation of their implementation classes (instead of
creating/coupling themselves directly), then the design usually uses the
Abstract Factory pattern to create the implementation objects.</span></p>

</div>
<!-- end content here -->

<jsp:include page="../contentFooter.jsp"/>