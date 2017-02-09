<jsp:include page="../contentHeader.jsp">
<jsp:param name="docTitle" value="CodeArchives - Adapter Design Pattern" />
</jsp:include>


<!-- start content here -->

<div class="dpHeading">
<span style="font-weight:bold;">Adapter Design Pattern</span>
</div>
<br/>
<br/>
<span style="font-size:16px;border-bottom:2px solid #ff0000;">Graphical Representation:</span>
<br/>
<br/>

<div id="img_adapter">
</div>
<iframe style="display:none;" onload="(function(){new ImageLoader('img_adapter','archive/resources/images/dp/adapter.png',496,311).loadImage();})();"></iframe>


<div>

<br/><br/><h3><span>Intent</span></h3>

<p><span>-<span>                    
</span></span><span><span>Convert
the interface of a class into another interface clients expect. Adapter lets
classes work together that couldn't otherwise because of
incompatible interfaces.</span></span></p>

<p><span>-<span>                    
</span></span><span><span>Wrap
an existing class with a new interface.</span></span></p>

<p><span>-<span>                    
</span></span><span><span>Impedance
match an old component to a new system</span></span></p>

<br/><br/><h3><span>Problem</span></h3>

<p><span>An "off the shelf" component offers
compelling functionality that you would like to reuse, but its "view of the
world" is not compatible with the philosophy and architecture of the system
currently being developed.</span></p>

<br/><br/><h3><span>Discussion</span></h3>

<p><span>Reuse has always been painful and
elusive. One reason has been the tribulation of designing something new, while
reusing something old. There is always something not quite right between the
old and the new. It may be physical dimensions or misalignment. It may be
timing or synchronization. It may be unfortunate assumptions or competing standards.</span></p>

<p><span>It is like the problem of inserting a
new three-prong electrical plug in an old two-prong wall outlet - some kind of
adapter or intermediary is necessary.</span></p>

<p><span>Adapter is about creating an
intermediary abstraction that translates, or maps, the old component to the new
system. Clients call methods on the Adapter object which redirects them into
calls to the legacy component. This strategy can be implemented either with
inheritance or with aggregation.</span></p>

<p><span>Adapter functions as a wrapper or
modifier of an existing class. It provides a different or translated view of
that class.</span></p>

<br/><br/><h3><span>Structure</span></h3>

<p><span>Below,
a legacy Rectangle component's<span> </span></span><code><span>display()</span></code><span><span> </span></span><span>method expects to receive "x, y, w,
h" parameters. But the client wants to pass "upper left x and y" and "lower
right x and y". This incongruity can be reconciled by adding an additional
level of indirection - i.e. an Adapter object.</span></p>

<p><span><span>The
Adapter could also be thought of as a "wrapper".</span></span></p>

<br/><br/><h3><span>Check list</span></h3>

<p><span>1.<span>             
</span></span><span><span>Identify
the players: the component(s) that want to be accommodated (i.e. the client), and
the component that needs to adapt (i.e. the adaptee).</span></span></p>

<p><span>2.<span>             
</span></span><span><span>Identify
the interface that the client requires.</span></span></p>

<p><span>3.<span>             
</span></span><span><span>Design
a "wrapper" class that can "impedance match" the adaptee to the client.</span></span></p>

<p><span>4.<span>             
</span></span><span><span>The
adapter/wrapper class "has a" instance of the adaptee class.</span></span></p>

<p><span>5.<span>             
</span></span><span><span>The
adapter/wrapper class "maps" the client interface to the
adaptee interface.</span></span></p>

<p><span>6.<span>             
</span></span><span><span>The
client uses (is coupled to) the new interface</span></span></p>

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
</span></span><span><span>Adapter
provides a different interface to its subject. Proxy provides the same
interface. </span></span><span>Decorator
provides an enhanced interface.</span></p>

<p><span>-<span>                    
</span></span><span><span>Adapter
is meant to change the interface of an existing object. Decorator enhances
another object without changing its interface. Decorator is thus more
transparent to the application than an adapter is. As a consequence, Decorator
supports recursive composition, which isn't possible with pure Adapters.</span></span></p>

<p><span>Facade
defines a new interface, whereas Adapter reuses an old interface. Remember that
Adapter makes two existing interfaces work together as opposed to defining an
entirely new one.</span></p>

</div>
<!-- end content here -->

<jsp:include page="../contentFooter.jsp"/>