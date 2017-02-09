<jsp:include page="../contentHeader.jsp">
<jsp:param name="docTitle" value="CodeArchives - Iterator Design Pattern" />
</jsp:include>


<!-- start content here -->

<div class="dpHeading">
<span style="font-weight:bold;">Iterator Design Pattern</span>
</div>
<br/>
<br/>
<span style="font-size:16px;border-bottom:2px solid #ff0000;">Graphical Representation:</span>
<br/>
<br/>

<div id="img_iterator">
</div>
<iframe style="display:none;" onload="(function(){new ImageLoader('img_iterator','archive/resources/images/dp/iterator.png',445,346).loadImage();})();"></iframe>

<div>

<br/><br/><h3><span>Intent</span></h3>

<p><span>-<span>                    
</span></span><span><span>Provide
a way to access the elements of an aggregate object sequentially without
exposing its underlying representation.</span></span></p>

<p><span>-<span>                    
</span></span><span><span>The<span> </span><span>C++</span><span> </span>and Java standard library abstraction
that makes it possible to decouple collection classes and algorithms.</span></span></p>

<p><span>-<span>                    
</span></span><span><span>Promote
to "full object status" the traversal of a collection.</span></span></p>

<p><span>-<span>                    
</span></span><span><span>Polymorphic traversal</span></span></p>

<br/><br/><h3><span>Problem</span></h3>

<p><span>Need to "abstract" the traversal of
wildly different data structures so that algorithms can be defined that are
capable of interfacing with each transparently.</span></p>

<br/><br/><h3><span>Discussion</span></h3>

<p><span><span> "</span></span><span>An
aggregate object such as a list should give you a way to access its elements
without exposing its internal structure. Moreover, you might want to traverse
the list in different ways, depending on what you need to accomplish. But you
probably don't want to bloat the List interface with operations for different
traversals, even if you could anticipate the ones you'll require. You might
also need to have more than one traversal pending on the same list." And,
providing a uniform interface for traversing many types of aggregate objects
(i.e. polymorphic iteration) might be valuable.</span></p>

<p><span><span> </span></span></p>

<p><span>The Iterator pattern lets you do all
this. The key idea is to take the responsibility for access and traversal out
of the aggregate object and put it into an Iterator object that defines a
standard traversal protocol.</span></p>

<p><span>The Iterator abstraction is
fundamental to an emerging technology called "generic programming". This
strategy seeks to explicitly separate the notion of "algorithm" from that of
"data structure". The motivation is to: promote component-based development,
boost productivity, and reduce configuration management.</span></p>

<p><span>As an example, if you wanted to
support four data structures (array, binary tree, linked list, and hash table)
and three algorithms (sort, find, and merge), a traditional approach would
require four times three permutations to develop and maintain. Whereas, a
generic programming approach would only require four plus three configuration items.</span></p>

<br/><br/><h3><span>Structure</span></h3>

<p><span>The Client uses the Collection class'
public interface directly. But access to the Collection's elements is
encapsulated behind the additional level of abstraction called Iterator. Each
Collection derived class knows which Iterator derived class to create and
return. After that, the Client relies on the interface defined in the Iterator
base class.</span></p>

<br/><br/><h3><span>Check list</span></h3>

<p><span>1.<span>             
</span></span><span><span>Add
a<span> </span></span></span><code><span>create_iterator()</span></code><span><span> </span></span><span>method to the "collection" class, and
grant the "iterator" class privileged access.</span></p>

<p><span>2.<span>             
</span></span><span><span>Design
an "iterator" class that can encapsulate traversal of the "collection" class.</span></span></p>

<p><span>3.<span>             
</span></span><span><span>Clients
ask the collection object to create an iterator object.</span></span></p>

<p><span>4.<span>             
</span></span><span><span>Clients
use the<span> </span></span></span><code><span>first()</span></code><span>,<span> </span></span><code><span>is_done()</span></code><span>,<span> </span></span><code><span>next()</span></code><span>,
and<span> </span></span><code><span>current_item()</span></code><span><span> </span></span><span>protocol to access the elements of
the collection class.</span></p>

<br/><br/><h3><span>Rules of thumb</span></h3>

<p><span>-<span>                    
</span></span><span><span>The
abstract syntax tree of Interpreter is a Composite (therefore Iterator and
Visitor are also applicable).</span></span></p>

<p><span>-<span>                    
</span></span><span><span>Iterator
can traverse a Composite. Visitor can apply an operation over a Composite.</span></span></p>

<p><span>-<span>                    
</span></span><span><span>Polymorphic
Iterators rely on Factory Methods to instantiate the appropriate Iterator subclass.</span></span></p>

<p><span>Memento is
often used in conjunction with Iterator. An Iterator can use a Memento to
capture the state of an iteration. </span><span>The Iterator stores the Memento internally.</span></p>

</div>
<!-- end content here -->

<jsp:include page="../contentFooter.jsp"/>