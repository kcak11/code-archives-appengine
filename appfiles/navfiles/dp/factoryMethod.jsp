<jsp:include page="../contentHeader.jsp">
<jsp:param name="docTitle" value="CodeArchives - Factory Method Design Pattern" />
</jsp:include>


<!-- start content here -->

<div class="dpHeading">
<span style="font-weight:bold;">Factory Method Design Pattern</span>
</div>
<br/>
<br/>
<span style="font-size:16px;border-bottom:2px solid #ff0000;">Graphical Representation:</span>
<br/>
<br/>

<div id="img_factorymethod">
</div>
<iframe style="display:none;" onload="(function(){new ImageLoader('img_factorymethod','archive/resources/images/dp/factorymethod.png',486,310).loadImage();})();"></iframe>

<div>

<br/><br/><h3><span>Intent</span></h3>

<p><span>-<span>                    
</span></span><span><span>Define
an interface for creating an object, but let subclasses decide which class to
instantiate. Factory Method lets a class defer instantiation
to subclasses.</span></span></p>

<p><span>-<span>                    
</span></span><span><span>Defining a "virtual" constructor.</span></span></p>

<p><span>-<span>                    
</span></span><span><span>The<span> </span></span></span><code><span>new</span></code><span><span> </span></span><span>operator considered harmful.</span></p>

<br/><br/><h3><span>Problem</span></h3>

<p><span>A framework needs to standardize the
architectural model for a range of applications, but allow for individual
applications to define their own domain objects and provide for
their instantiation.</span></p>

<br/><br/><h3><span>Discussion</span></h3>

<p><span>Factory Method is to creating objects
as Template Method is to implementing an algorithm. A superclass specifies all
standard and generic behavior (using pure virtual "placeholders" for creation
steps), and then delegates the creation details to subclasses that are supplied
by the client.</span></p>

<p><span>Factory Method makes a design more
customizable and only a little more complicated. Other design patterns require
new classes, whereas Factory Method only requires a new operation.</span></p>

<p><span>People often use Factory Method as
the standard way to create objects; but it isn't necessary if: the class that's
instantiated never changes, or instantiation takes place in an operation that
subclasses can easily override (such as an initialization operation).</span></p>

<p><span>Factory Method is similar to Abstract
Factory but without the emphasis on families.</span></p>

<p><span>Factory Methods are routinely
specified by an architectural framework, and then implemented by the user of
the framework.</span></p>

<br/><br/><h3><span>Structure</span></h3>

<p><span>The implementation of Factory Method
discussed in the Gang of Four (below) largely overlaps with that of Abstract
Factory. For that reason, the presentation in this chapter focuses on the
approach that has become popular since.</span></p>

<p><span><span>An increasingly popular definition of factory method is: a</span></span><span><span> </span></span><code><span>static</span></code><span><span> </span></span><span><span>method
of a class that returns an object of that class' type. But unlike a constructor,
the actual object it returns might be an instance of a subclass. Unlike a
constructor, an existing object might be reused, instead of a new object
created. Unlike a constructor, factory methods can have different and more
descriptive names (e.g.</span></span><code><span>Color.make_RGB_color(float
red, float green, float blue)</span></code><span><span> </span></span><span><span>and</span></span><code><span>Color.make_HSB_color(float hue, float saturation, float brightness)</span></code></p>

<p><span><span>The client is totally decoupled from the implementation details
of derived classes. </span></span><span><span>Polymorphic creation is
now possible.</span></span></p>

<br/><br/><h3><span>Check list</span></h3>

<p><span>1.<span>             
</span></span><span><span>If
you have an inheritance hierarchy that exercises polymorphism, consider adding
a polymorphic creation capability by defining a<span> </span></span></span><code><span>static</span></code><span><span> </span></span><span>factory method in the
base class.</span></p>

<p><span>2.<span>             
</span></span><span><span>Design
the arguments to the factory method. What qualities or characteristics are necessary
and sufficient to identify the correct derived class to instantiate?</span></span></p>

<p><span>3.<span>             
</span></span><span><span>Consider
designing an internal "object pool" that will allow objects to be reused
instead of created from scratch.</span></span></p>

<p><span>4.<span>             
</span></span><span><span>Consider
making all constructors<span> </span></span></span><code><span>private</span></code><span><span> </span></span><span>or<span> </span></span><code><span>protected</span></code><span>.</span></p>

<br/><br/><h3><span>Rules of thumb</span></h3>

<p><span>-<span>                    
</span></span><span><span>Abstract
Factory classes are often implemented with Factory Methods, but they can be
implemented using Prototype.</span></span></p>

<p><span>-<span>                    
</span></span><span><span>Factory
Methods are usually called within Template Methods.</span></span></p>

<p><span>-<span>                    
</span></span><span><span>Factory
Method: creation through inheritance. </span></span><span>Prototype: creation through delegation.</span></p>

<p><span>-<span>                    
</span></span><span><span>Often,
designs start out using Factory Method (less complicated, more customizable,
subclasses proliferate) and evolve toward Abstract Factory, Prototype, or
Builder (more flexible, more complex) as the designer discovers where more flexibility
is needed.</span></span></p>

<p><span>-<span>                    
</span></span><span><span>Prototype
doesn't require subclassing, but it does require an Initialize operation. </span></span><span>Factory Method requires
subclassing, but doesn't require Initialize.</span></p>

<p><span>-<span>                    
</span></span><span><span>The
advantage of a Factory Method is that it can return the same instance multiple
times, or can return a subclass rather than an object of that exact type.</span></span></p>

<p><span>-<span>                    
</span></span><span><span>Some
Factory Method advocates recommend that as a matter of language design (or
failing that, as a matter of style) absolutely all constructors should be
private or protected. It's no one else's business whether a class manufactures
a new object or recycles an old one.</span></span></p>

<div>

<p><span>-<span>                    
</span></span><span><span>The<span> </span></span></span><code><span>new</span></code><span><span> </span></span><span>operator considered harmful. There is
a difference between requesting an object and creating one. The<span> </span></span><code><span>new</span></code><span><span> </span></span><span>operator always creates an object,
and fails to encapsulate object creation. A Factory Method enforces that
encapsulation, and allows an object to be requested without inextricable
coupling to the act of creation.</span> </p>

</div>

</div>
<!-- end content here -->

<jsp:include page="../contentFooter.jsp"/>