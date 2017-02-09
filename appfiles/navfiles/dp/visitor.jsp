<jsp:include page="../contentHeader.jsp">
<jsp:param name="docTitle" value="CodeArchives - Visitor Design Pattern" />
</jsp:include>


<!-- start content here -->

<div class="dpHeading">
<span style="font-weight:bold;">Visitor Design Pattern</span>
</div>
<br/>
<br/>
<span style="font-size:16px;border-bottom:2px solid #ff0000;">Graphical Representation:</span>
<br/>
<br/>

<div id="img_visitor">
</div>
<iframe style="display:none;" onload="(function(){new ImageLoader('img_visitor','archive/resources/images/dp/visitor.png',542,601).loadImage();})();"></iframe>

<div>

<br/><br/><h3><span>Intent</span></h3>

<p><span>-<span>                    
</span></span><span><span>Represent
an operation to be performed on the elements of an object structure. Visitor
lets you define a new operation without changing the classes of the elements on
which it operates.</span></span></p>

<p><span>-<span>                    
</span></span><span><span>The
classic technique for recovering lost type information.</span></span></p>

<p><span>-<span>                    
</span></span><span><span>Do
the right thing based on the type of two objects.</span></span></p>

<p><span>-<span>                    
</span></span><span><span>Double dispatch</span></span></p>

<br/><br/><h3><span>Problem</span></h3>

<p><span>Many distinct and unrelated
operations need to be performed on node objects in a heterogeneous aggregate
structure. You want to avoid "polluting" the node classes with these
operations. And, you don't want to have to query the type of each node and cast
the pointer to the correct type before performing the desired operation.</span></p>

<br/><br/><h3><span>Discussion</span></h3>

<p><span>Visitor's primary purpose is to
abstract functionality that can be applied to an aggregate hierarchy of
"element" objects. The approach encourages designing lightweight Element
classes - because processing functionality is removed from their list of
responsibilities. New functionality can easily be added to the original
inheritance hierarchy by creating a new Visitor subclass.</span></p>

<p><span>Visitor implements "double dispatch".
OO messages routinely manifest "single dispatch" - the operation that is
executed depends on: the name of the request, and the type of the receiver. In
"double dispatch", the operation executed depends on: the name of the request,
and the type of TWO receivers (the type of the Visitor and the type of the
element it visits).</span></p>

<p><span>The
implementation proceeds as follows. Create a Visitor class hierarchy that
defines a pure virtual</span><code><span>visit()</span></code><span><span> </span></span><span>method in the abstract base class for
each concrete derived class in the aggregate node hierarchy. Each<span> </span></span><code><span>visit()</span></code><span><span> </span></span><span>method accepts a single argument - a
pointer or reference to an original Element derived class.</span></p>

<p><span> </span></p>

<p><span>Each
operation to be supported is modelled with a concrete derived class of the
Visitor hierarchy. The</span><code><span>visit()</span></code><span><span> </span></span><span>methods declared in the Visitor base
class are now defined in each derived subclass by allocating the "type query
and cast" code in the original implementation to the appropriate overloaded</span><code><span>visit()</span></code><span> method.</span></p>

<p><span><span> </span></span></p>

<p><span>Add a
single pure virtual<span> </span></span><code><span>accept()</span></code><span><span> </span></span><span>method to the base class of the
Element hierarchy.<span> </span></span><code><span>accept()</span></code><span><span> </span></span><span>is defined to receive a single
argument - a pointer or reference to the abstract base class of the Visitor hierarchy.</span></p>

<p><span>Each
concrete derived class of the Element hierarchy implements the<span> </span></span><code><span>accept()</span></code><span><span> </span></span><span>method by simply calling the<span> </span></span><code><span>visit()</span></code><span><span> </span></span><span>method on the concrete derived
instance of the Visitor hierarchy that it was passed, passing its "this"
pointer as the sole argument.</span></p>

<p><span><span> </span></span></p>

<p><span>Everything
for "elements" and "visitors" is now set-up. When the client needs an operation
to be performed, (s)he creates an instance of the Vistor object, calls the<span> </span></span><code><span>accept()</span></code><span><span> </span></span><span>method on each Element object, and
passes the Visitor object.</span></p>

<p><span><span> </span></span></p>

<p><span>The<span> </span></span><code><span>accept()</span></code><span><span> </span></span><span>method causes flow of control to find
the correct Element subclass. Then when the</span><code><span>visit()</span></code><span><span> </span></span><span>method is invoked, flow of control is
vectored to the correct Visitor subclass.<span> </span></span><code><span>accept()</span></code><span><span> </span></span><span>dispatch plus<span> </span></span><code><span>visit()</span></code><span><span> </span></span><span>dispatch equals double dispatch.</span></p>

<p><span><span> </span></span></p>

<p><span>The Visitor pattern makes adding new
operations (or utilities) easy - simply add a new Visitor derived class. But,
if the subclasses in the aggregate node hierarchy are not stable, keeping the
Visitor subclasses in sync requires a prohibitive amount of effort.</span></p>

<p><span>An acknowledged objection to the
Visitor pattern is that is represents a regression to functional decomposition
- separate the algorithms from the data structures. While this is a legitimate
interpretation, perhaps a better perspective/rationale is the goal of promoting
non-traditional behavior to full object status.</span></p>

<br/><br/><h3><span>Structure</span></h3>

<p><span>The
Element hierarchy is instrumented with a "universal method adapter". The
implementation of</span><code><span>accept()</span></code><span><span> </span></span><span>in each Element derived class is
always the same. But - it cannot be moved to the Element base class and
inherited by all derived classes because a reference to<span> </span></span><code><span>this</span></code><span><span> </span></span><span>in the Element class always maps to
the base type Element.</span></p>

<p><span><span> </span></span></p>

<p><span><span>When the polymorphic</span></span><span><span> </span></span><code><span>firstDispatch()</span></code><span><span> </span></span><span><span>method
is called on an abstract</span></span><span><span> </span></span><code><span>First</span></code><span><span> </span></span><span><span>object,
the concrete type of that object is "recovered". When the polymorphic</span></span><span><span> </span></span><code><span>secondDispatch()</span></code><span><span> </span></span><span><span>method
is called on an abstract</span></span><code><span>Second</span></code><span><span> </span></span><span><span>object,
its concrete type is "recovered". The application functionality appropriate for
this pair of types can now be exercised.</span></span></p>

<br/><br/><h3><span>Check list</span></h3>

<p><span>1.<span>             
</span></span><span><span>Confirm
that the current hierarchy (known as the Element hierarchy) will be fairly
stable and that the public interface of these classes is sufficient for the
access the Visitor classes will require. If these conditions are not met, then
the Visitor pattern is not a good match.</span></span></p>

<p><span>2.<span>             
</span></span><span><span>Create
a Visitor base class with a<span> </span></span></span><code><span>visit(ElementXxx)</span></code><span><span> </span></span><span>method for each Element derived type.</span></p>

<p><span>3.<span>             
</span></span><span><span>Add
an<span> </span></span></span><code><span>accept(Visitor)</span></code><span><span> </span></span><span>method to the Element hierarchy. The
implementation in each Element derived class is always the same -<span> </span></span><code><span>accept(
Visitor v ) { v.visit( this ); }</span></code><span>. Because of cyclic dependencies, the declaration of the Element
and Visitor classes will need to be interleaved.</span></p>

<p><span>4.<span>             
</span></span><span><span>The
Element hierarchy is coupled only to the Visitor base class, but the Visitor
hierarchy is coupled to each Element derived class. If the stability of the
Element hierarchy is low, and the stability of the Visitor hierarchy is high;
consider swapping the 'roles' of the two hierarchies.</span></span></p>

<p><span>5.<span>             
</span></span><span><span>Create
a Visitor derived class for each "operation" to be performed on Element objects.<span> </span></span></span><code><span>visit()</span></code><span>implementations
will rely on the Element's public interface.</span></p>

<p><span>6.<span>             
</span></span><span><span>The
client creates Visitor objects and passes each to Element objects by calling<span> </span></span></span><code><span>accept()</span></code><span>.</span></p>

<br/><br/><h3><span>Rules of thumb</span></h3>

<p><span>-<span>                    
</span></span><span><span>The
abstract syntax tree of Interpreter is a Composite (therefore Iterator and
Visitor are also applicable).</span></span></p>

<p><span>-<span>                    
</span></span><span><span>Iterator
can traverse a Composite. Visitor can apply an operation over a Composite.</span></span></p>

<p><span>-<span>                    
</span></span><span><span>The
Visitor pattern is like a more powerful Command pattern because the visitor may
initiate whatever is appropriate for the kind of object it encounters.</span></span></p>

<p><span>-<span>                    
</span></span><span><span>The
Visitor pattern is the classic technique for recovering lost type information
without resorting to dynamic casts.</span></span></p>

<br/><br/><h3><span>Notes</span></h3>

<p><span>The November 2000 issue of<span> </span><i>JavaPro</i><span> </span>has an article by James Cooper (author
of a Java companion to the GoF) on the Visitor design pattern. He suggests it
"turns the tables on our object-oriented model and creates an external class to
act on data in other classes --- while this may seem unclean --- there are good
reasons for doing it."</span></p>

<p><span>His primary example. Suppose you have
a hierarchy of Employee-Engineer-Boss. They all enjoy a normal vacation day
accrual policy, but, Bosses also participate in a "bonus" vacation day program.
As a result, the interface of class Boss is different than that of class
Engineer. We cannot polymorphically traverse a Composite-like organization and
compute a total of the organization's remaining vacation days. "The Visitor
becomes more useful when there are several classes with different interfaces
and we want to encapsulate how we get data from these classes."</span></p>

<p><span>His benefits for Visitor include:</span></p>

<p><span>-<span>                    
</span></span><span><span>Add
functions to class libraries for which you either do not have the source or
cannot change the source</span></span></p>

<p><span>-<span>                    
</span></span><span><span>Obtain
data from a disparate collection of unrelated classes and use it to present the
results of a global calculation to the user program</span></span></p>

<p><span>-<span>                    
</span></span><span><span>Gather
related operations into a single class rather than force you to change or
derive classes to add these operations</span></span></p>

<p><span>-<span>                    
</span></span><span><span>Collaborate with the Composite pattern</span></span></p>

<p><span>Visitor is
not good for the situation where "visited" classes are not stable. Every time a
new Composite hierarchy derived class is added, every Visitor derived class
must be amended.</span></p>

</div>
<!-- end content here -->

<jsp:include page="../contentFooter.jsp"/>