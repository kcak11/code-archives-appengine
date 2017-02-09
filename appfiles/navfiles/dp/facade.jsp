<jsp:include page="../contentHeader.jsp">
<jsp:param name="docTitle" value="CodeArchives - Facade Design Pattern" />
</jsp:include>


<!-- start content here -->

<div class="dpHeading">
<span style="font-weight:bold;">Facade Design Pattern</span>
</div>
<br/>
<br/>
<span style="font-size:16px;border-bottom:2px solid #ff0000;">Graphical Representation:</span>
<br/>
<br/>

<div id="img_facade">
</div>
<iframe style="display:none;" onload="(function(){new ImageLoader('img_facade','archive/resources/images/dp/facade.png',448,333).loadImage();})();"></iframe>

<div>

<br/><br/><h3><span>Intent</span></h3>

<p><span>-<span>                    
</span></span><span><span>Provide
a unified interface to a set of interfaces in a subsystem. Facade defines a
higher-level interface that makes the subsystem easier to use.</span></span></p>

<p><span>-<span>                    
</span></span><span><span>Wrap
a complicated subsystem with a simpler interface.</span></span></p>

<br/><br/><h3><span>Problem</span></h3>

<p><span>A segment of the client community
needs a simplified interface to the overall functionality of a
complex subsystem.</span></p>

<br/><br/><h3><span>Discussion</span></h3>

<p><span>Facade discusses encapsulating a
complex subsystem within a single interface object. This reduces the learning
curve necessary to successfully leverage the subsystem. It also promotes
decoupling the subsystem from its potentially many clients. On the other hand,
if the Facade is the only access point for the subsystem, it will limit the
features and flexibility that "power users" may need.</span></p>

<p><span>The Facade object should be a fairly
simple advocate or facilitator. It should not become an all-knowing oracle or
"god" object.</span></p>

<br/><br/><h3><span>Structure</span></h3>

<p><span>Facade takes a "riddle wrapped in an
enigma shrouded in mystery", and interjects a wrapper that tames the amorphous
and inscrutable mass of software.</span></p>

<p><code><span>SubsystemOne</span></code><span><span> </span></span><span><span>and</span></span><span><span> </span></span><code><span>SubsystemThree</span></code><span><span> </span></span><span><span>do not
interact with the internal components of</span></span><span><span> </span></span><code><span>SubsystemTwo</span></code><span><span>. They use the</span></span><span><span> </span></span><code><span>SubsystemTwoWrapper</span></code><span><span> </span></span><span><span>"facade"
(i.e. the higher level abstraction).</span></span></p>

<br/><br/><h3><span>Check list</span></h3>

<p><span>1.<span>             
</span></span><span><span>Identify
a simpler, unified interface for the subsystem or component.</span></span></p>

<p><span>2.<span>             
</span></span><span><span>Design
a 'wrapper' class that encapsulates the subsystem.</span></span></p>

<p><span>3.<span>             
</span></span><span><span>The
facade/wrapper captures the complexity and collaborations of the component, and
delegates to the appropriate methods.</span></span></p>

<p><span>4.<span>             
</span></span><span><span>The
client uses (is coupled to) the Facade only.</span></span></p>

<p><span>5.<span>             
</span></span><span><span>Consider
whether additional Facades would add value.</span></span></p>

<br/><br/><h3><span>Rules of thumb</span></h3>

<p><span>-<span>                    
</span></span><span><span>Facade
defines a new interface, whereas Adapter uses an old interface. Remember that
Adapter makes two existing interfaces work together as opposed to defining an
entirely new one.</span></span></p>

<p><span>-<span>                    
</span></span><span><span>Whereas
Flyweight shows how to make lots of little objects, Facade shows how to make a
single object represent an entire subsystem.</span></span></p>

<p><span>-<span>                    
</span></span><span><span>Mediator
is similar to Facade in that it abstracts functionality of existing classes.
Mediator abstracts/centralizes arbitrary communications between colleague
objects. It routinely "adds value", and it is known/referenced by the colleague
objects. In contrast, Facade defines a simpler interface to a subsystem, it
doesn't add new functionality, and it is not known by the
subsystem classes.</span></span></p>

<p><span>-<span>                    
</span></span><span><span>Abstract
Factory can be used as an alternative to Facade to hide
platform-specific classes.</span></span></p>

<p><span>-<span>                    
</span></span><span><span>Facade
objects are often Singletons because only one Facade object is required.</span></span></p>

<p><span>-<span>                    
</span></span><span><span>Adapter
and Facade are both wrappers; but they are different kinds of wrappers. The
intent of Facade is to produce a simpler interface, and the intent of Adapter
is to design to an existing interface. While Facade routinely wraps multiple
objects and Adapter wraps a single object; Facade could front-end a single
complex object and Adapter could wrap several legacy objects.</span></span></p>

<p><b><span>Question:</span></b><span><span> </span></span><span>So the way to tell the difference
between the Adapter pattern and the Facade pattern is that the Adapter wraps
one class and the Facade may represent many classes?</span></p>

<p><b><span>Answer:</span></b><span><span> </span></span><span>No! Remember, the Adapter pattern
changes the interface of one or more classes into one interface that a client
is expecting. While most textbook examples show the adapter adapting one class,
you may need to adapt many classes to provide the interface a client is coded
to. Likewise, a Facade may provide a simplified interface to a single class
with a very complex interface. The difference between the two is not in terms
of how many classes they "wrap", it is in their intent.</span></p>

</div>
<!-- end content here -->

<jsp:include page="../contentFooter.jsp"/>