<jsp:include page="../contentHeader.jsp">
<jsp:param name="docTitle" value="CodeArchives - Abstract Factory Design Pattern" />
</jsp:include>


<!-- start content here -->

<div class="dpHeading">
<span style="font-weight:bold;">Abstract Factory Design Pattern</span>
</div>
<br/>
<br/>
<span style="font-size:16px;border-bottom:2px solid #ff0000;">Graphical Representation:</span>
<br/>
<br/>

<div id="img_absfactory">
</div>
<iframe style="display:none;" onload="(function(){new ImageLoader('img_absfactory','archive/resources/images/dp/abstractfactory.png',497,526).loadImage();})();"></iframe>


<div>

<br/><br/><h3><span>Intent</span></h3>

<p><span><span> </span></span></p>

<p><span>-<span>                    
</span></span><span><span>Provide
an interface for creating families of related or dependent objects without
specifying their concrete classes.</span></span></p>

<p><span>-<span>                    
</span></span><span><span>A
hierarchy that encapsulates: many possible "platforms", and the construction of
a suite of "products".</span></span></p>

<p><span>-<span>                    
</span></span><span><span>The<span> </span></span></span><code><span>new</span></code><span><span> </span></span><span>operator considered harmful.</span></p>

<br/><br/><h3><span>Problem</span></h3>

<p><span><span> </span></span></p>

<p><span>If an
application is to be portable, it needs to encapsulate platform dependencies.
These "platforms" might include: windowing system, operating system, database,
etc. Too often, this encapsulatation is not engineered in advance, and lots of<span> </span></span><code><span>#ifdef</span></code><span><span> </span></span><span>case statements with options for all
currently supported platforms begin to procreate like rabbits throughout
the code.</span></p>

<br/><br/><h3><span>Discussion</span></h3>

<p><span><span> </span></span></p>

<p><span>Provide a level of indirection that
abstracts the creation of families of related or dependent objects without
directly specifying their concrete classes. The "factory" object has the
responsibility for providing creation services for the entire platform family.
Clients never create platform objects directly, they ask the factory to do that
for them.</span></p>

<p><span><span> </span></span></p>

<p><span>This mechanism makes exchanging
product families easy because the specific class of the factory object appears
only once in the application - where it is instantiated. The application can
wholesale replace the entire family of products simply by instantiating a
different concrete instance of the abstract factory.</span></p>

<p><span><span> </span></span></p>

<p><span>Because the service provided by the
factory object is so pervasive, it is routinely implemented as
a Singleton.</span></p>

<br/><br/><h3><span>Structure</span></h3>

<p><span><span> </span></span></p>

<p><span>The
Abstract Factory defines a Factory Method per product. Each Factory Method
encapsulates the<span> </span></span><code><span>new</span></code><span>operator
and the concrete, platform-specific, product classes. Each "platform" is then
modeled with a Factory derived class.</span></p>

<br/><br/><h3><span>Check list</span></h3>

<p><span><span> </span></span></p>

<p><span>1.<span>             
</span></span><span><span>Decide
if "platform independence" and creation services are the current source
of pain.</span></span></p>

<p><span>2.<span>             
</span></span><span><span>Map
out a matrix of "platforms" versus "products".</span></span></p>

<p><span>3.<span>             
</span></span><span><span>Define
a factory interface that consists of a factory method per product.</span></span></p>

<p><span>4.<span>             
</span></span><span><span>Define
a factory derived class for each platform that encapsulates all references to
the<span> </span></span></span><code><span>new</span></code><span> operator.</span></p>

<p><span>5.<span>             
</span></span><span><span>The
client should retire all references to<span> </span></span></span><code><span>new</span></code><span>, and
use the factory methods to create the product objects.</span></p>

<br/><br/><h3><span>Rules of thumb</span></h3>

<p><span><span> </span></span></p>

<p><span>-<span>                    
</span></span><span><span>Sometimes
creational patterns are competitors: there are cases when either Prototype or
Abstract Factory could be used profitably. At other times they are
complementary: Abstract Factory might store a set of Prototypes from which to
clone and return product objects, Builder can use one of the other patterns to
implement which components get built. Abstract Factory, Builder, and Prototype
can use Singleton in their implementation.</span></span></p>

<p><span>-<span>                    
</span></span><span><span>Abstract
Factory, Builder, and Prototype define a factory object that's responsible for
knowing and creating the class of product objects, and make it a parameter of
the system. Abstract Factory has the factory object producing objects of
several classes. Builder has the factory object building a complex product
incrementally using a correspondingly complex protocol. Prototype has the factory
object (aka prototype) building a product by copying a prototype object.</span></span></p>

<p><span>-<span>                    
</span></span><span><span>Abstract
Factory classes are often implemented with Factory Methods, but they can also
be implemented using Prototype.</span></span></p>

<p><span>-<span>                    
</span></span><span><span>Abstract
Factory can be used as an alternative to Facade to hide
platform-specific classes.</span></span></p>

<p><span>-<span>                    
</span></span><span><span>Builder
focuses on constructing a complex object step by step. Abstract Factory
emphasizes a family of product objects (either simple or complex). Builder
returns the product as a final step, but as far as the Abstract Factory is
concerned, the product gets returned immediately.</span></span></p>

<p><span>Often,
designs start out using Factory Method (less complicated, more customizable,
subclasses proliferate) and evolve toward Abstract Factory, Prototype, or
Builder (more flexible, more complex) as the designer discovers where more
flexibility is needed.</span></p>

</div>

<!-- end content here -->

<jsp:include page="../contentFooter.jsp"/>