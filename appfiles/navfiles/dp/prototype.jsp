<jsp:include page="../contentHeader.jsp">
<jsp:param name="docTitle" value="CodeArchives - Prototype Design Pattern" />
</jsp:include>


<!-- start content here -->

<div class="dpHeading">
<span style="font-weight:bold;">Prototype Design Pattern</span>
</div>
<br/>
<br/>
<span style="font-size:16px;border-bottom:2px solid #ff0000;">Graphical Representation:</span>
<br/>
<br/>

<div id="img_prototype">
</div>
<iframe style="display:none;" onload="(function(){new ImageLoader('img_prototype','archive/resources/images/dp/prototype.png',511,322).loadImage();})();"></iframe>

<div>

<br/><br/><h3><span>Intent</span></h3>

<p><span>-<span>                    
</span></span><span><span>Specify
the kinds of objects to create using a prototypical instance, and create new
objects by copying this prototype.</span></span></p>

<p><span>-<span>                    
</span></span><span><span>Co-opt
one instance of a class for use as a breeder of all future instances.</span></span></p>

<p><span>-<span>                    
</span></span><span><span>The<span> </span></span></span><code><span>new</span></code><span><span> </span></span><span>operator considered harmful.</span></p>

<br/><br/><h3><span>Problem</span></h3>

<p><span>Application "hard wires" the class of
object to create in each "new" expression.</span></p>

<br/><br/><h3><span>Discussion</span></h3>

<p><span>Declare
an abstract base class that specifies a pure virtual "clone" method, and,
maintains a dictionary of all "cloneable" concrete derived classes. Any class
that needs a "polymorphic constructor" capability: derives itself from the
abstract base class, registers its prototypical instance, and implements the</span><code><span>clone()</span></code><span> operation.</span></p>

<p><span>The client then, instead of writing
code that invokes the "new" operator on a hard-wired class name, calls a
"clone" operation on the abstract base class, supplying a string or enumerated
data type that designates the particular concrete derived class desired.</span></p>

<br/><br/><h3><span>Structure</span></h3>

<p><span>The Factory knows how to find the
correct Prototype, and each Product knows how to spawn new instances of itself.</span></p>

<br/><br/><h3><span>Check list</span></h3>

<p><span>1.<span>             
</span></span><span><span>Add
a<span> </span></span></span><code><span>clone()</span></code><span><span> </span></span><span>method to the existing
"product" hierarchy.</span></p>

<p><span>2.<span>             
</span></span><span><span>Design
a "registry" that maintains a cache of prototypical objects. The registry could
be encapsulated in a new<span> </span></span></span><code><span>Factory</span></code><span><span> </span></span><span>class, or in the base class of the
"product" hierarchy.</span></p>

<p><span>3.<span>             
</span></span><span><span>Design
a factory method that: may (or may not) accept arguments, finds the correct
prototype object, calls<span> </span></span></span><code><span>clone()</span></code><span><span> </span></span><span>on that object, and returns
the result.</span></p>

<p><span>4.<span>             
</span></span><span><span>The
client replaces all references to the<span> </span></span></span><code><span>new</span></code><span><span> </span></span><span>operator with calls to the
factory method.</span></p>

<br/><br/><h3><span>Rules of thumb</span></h3>

<p><span>-<span>                    
</span></span><span><span>Sometimes
creational patterns are competitors: there are cases when either Prototype or
Abstract Factory could be used properly. At other times they are complementory:
Abstract Factory might store a set of Prototypes from which to clone and return
product objects. Abstract Factory, Builder, and Prototype can use Singleton in
their implementations.</span></span></p>

<p><span>-<span>                    
</span></span><span><span>Abstract
Factory classes are often implemented with Factory Methods, but they can be
implemented using Prototype.</span></span></p>

<p><span>-<span>                    
</span></span><span><span>Factory
Method: creation through inheritance. </span></span><span>Protoype: creation
through delegation.</span></p>

<p><span>-<span>                    
</span></span><span><span>Often,
designs start out using Factory Method (less complicated, more customizable,
subclasses proliferate) and evolve toward Abstract Factory, Protoype, or
Builder (more flexible, more complex) as the designer discovers where more
flexibility is needed.</span></span></p>

<p><span>-<span>                    
</span></span><span><span>Prototype
doesn't require subclassing, but it does require an "initialize" operation. </span></span><span>Factory Method requires
subclassing, but doesn't require Initialize.</span></p>

<p><span>-<span>                    
</span></span><span><span>Designs
that make heavy use of the Composite and Decorator patterns often can benefit
from Prototype as well.</span></span></p>

<p><span>-<span>                    
</span></span><span><span>Prototype
co-opts one instance of a class for use as a breeder of all
future instances.</span></span></p>

<p><span>-<span>                    
</span></span><span><span>Prototypes
are useful when object initialization is expensive, and you anticipate few
variations on the initialization parameters. In this context, Prototype can
avoid expensive "creation from scratch", and support cheap cloning of a
pre-initialized prototype.</span></span></p>

<p><span>Prototype is
unique among the other creational patterns in that it doesn't require a class -
only an object. Object-oriented languages like Self and Omega that do away with
classes completely rely on prototypes for creating new objects.</span></p>

</div>
<!-- end content here -->

<jsp:include page="../contentFooter.jsp"/>