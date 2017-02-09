<jsp:include page="../contentHeader.jsp">
<jsp:param name="docTitle" value="CodeArchives - Decorator Design Pattern" />
</jsp:include>


<!-- start content here -->

<div class="dpHeading">
<span style="font-weight:bold;">Decorator Design Pattern</span>
</div>
<br/>
<br/>
<span style="font-size:16px;border-bottom:2px solid #ff0000;">Graphical Representation:</span>
<br/>
<br/>

<div id="img_decorator">
</div>
<iframe style="display:none;" onload="(function(){new ImageLoader('img_decorator','archive/resources/images/dp/decorator.png',496,418).loadImage();})();"></iframe>

<div>

<br/><br/><h3><span>Intent</span></h3>

<p><span>-<span>                    
</span></span><span><span>Attach
additional responsibilities to an object dynamically. Decorators provide a
flexible alternative to subclassing for extending functionality.</span></span></p>

<p><span>-<span>                    
</span></span><span><span>Client-specified
embellishment of a core object by recursively wrapping it.</span></span></p>

<p><span>-<span>                    
</span></span><span><span>Wrapping
a gift, putting it in a box, and wrapping the box.</span></span></p>

<br/><br/><h3><span>Problem</span></h3>

<p><span>You want to add behavior or state to
individual objects at run-time. Inheritance is not feasible because it is
static and applies to an entire class.</span></p>

<br/><br/><h3><span>Discussion</span></h3>

<p><span>Suppose you are working on a user
interface toolkit and you wish to support adding borders and scroll bars to
windows.</span></p>

<p><span><span>But the
Decorator pattern suggests giving the client the ability to specify whatever
combination of "features" is desired.</span></span></p>

<p><span>The solution to this class of
problems involves encapsulating the original object inside an abstract wrapper
interface. Both the decorator objects and the core object inherit from this
abstract interface. The interface uses recursive composition to allow an
unlimited number of decorator "layers" to be added to each core object.</span></p>

<p><span>Note that this pattern allows
responsibilities to be added to an object, not methods to an object's
interface. The interface presented to the client must remain constant as
successive layers are specified.</span></p>

<p><span>Also note that the core object's
identity has now been "hidden" inside of a decorator object. Trying to access
the core object directly is now a problem.</span></p>

<br/><br/><h3><span>Structure</span></h3>

<p><span>The
client is always interested in<span> </span></span><code><span>CoreFunctionality.doThis()</span></code><span>. The client may, or may not, be interested in<span> </span></span><code><span>OptionalOne.doThis()</span></code><span><span> </span></span><span>and<span> </span></span><code><span>OptionalTwo.doThis()</span></code><span>. Each of these classes always delegate to the Decorator base class,
and that class always delegates to the contained "wrappee" object.</span></p>

<br/><br/><h3><span>Check list</span></h3>

<p><span>1.<span>             
</span></span><span><span>Ensure
the context is: a single core (or non-optional) component, several optional
embellishments or wrappers, and an interface that is common to all.</span></span></p>

<p><span>2.<span>             
</span></span><span><span>Create
a "Lowest Common Denominator" interface that makes all
classes interchangeable.</span></span></p>

<p><span>3.<span>             
</span></span><span><span>Create
a second level base class (Decorator) to support the optional
wrapper classes.</span></span></p>

<p><span>4.<span>             
</span></span><span><span>The
Core class and Decorator class inherit from the LCD interface.</span></span></p>

<p><span>5.<span>             
</span></span><span><span>The
Decorator class declares a composition relationship to the LCD interface, and
this data member is initialized in its constructor.</span></span></p>

<p><span>6.<span>             
</span></span><span><span>The
Decorator class delegates to the LCD object.</span></span></p>

<p><span>7.<span>             
</span></span><span><span>Define
a Decorator derived class for each optional embellishment.</span></span></p>

<p><span>8.<span>             
</span></span><span><span>Decorator
derived classes implement their wrapper functionality - and - delegate to the
Decorator base class.</span></span></p>

<p><span>9.<span>             
</span></span><span><span>The
client configures the type and ordering of Core and Decorator objects.</span></span></p>

<br/><br/><h3><span>Rules of thumb</span></h3>

<p><span>-<span>                    
</span></span><span><span>Adapter
provides a different interface to its subject. Proxy provides the same
interface. </span></span><span>Decorator
provides an enhanced interface.</span></p>

<p><span>-<span>                    
</span></span><span><span>Adapter
changes an object's interface, Decorator enhances an object's responsibilities.
Decorator is thus more transparent to the client. As a consequence, Decorator
supports recursive composition, which isn't possible with pure Adapters.</span></span></p>

<p><span>-<span>                    
</span></span><span><span>Composite
and Decorator have similar structure diagrams, reflecting the fact that both
rely on recursive composition to organize an open-ended number of objects.</span></span></p>

<p><span>-<span>                    
</span></span><span><span>A
Decorator can be viewed as a degenerate Composite with only one component.
However, a Decorator adds additional responsibilities - it isn't intended for
object aggregation.</span></span></p>

<p><span>-<span>                    
</span></span><span><span>Decorator
is designed to let you add responsibilities to objects without subclassing.
Composite's focus is not on embellishment but on representation. These intents
are distinct but complementary. </span></span><span>Consequently, Composite and Decorator are often used
in concert.</span></p>

<p><span>-<span>                    
</span></span><span><span>Composite
could use Chain of Responsibility to let components access global properties
through their parent. It could also use Decorator to override these properties
on parts of the composition.</span></span></p>

<p><span>-<span>                    
</span></span><span><span>Decorator
and Proxy have different purposes but similar structures. Both describe how to
provide a level of indirection to another object, and the implementations keep
a reference to the object to which they forward requests.</span></span></p>

<p><span>Decorator
lets you change the skin of an object. Strategy lets you change the guts.</span></p>

</div>
<!-- end content here -->

<jsp:include page="../contentFooter.jsp"/>