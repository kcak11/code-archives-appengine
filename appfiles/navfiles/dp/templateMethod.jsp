<jsp:include page="../contentHeader.jsp">
<jsp:param name="docTitle" value="CodeArchives - Template Method Design Pattern" />
</jsp:include>


<!-- start content here -->

<div class="dpHeading">
<span style="font-weight:bold;">Template Method Design Pattern</span>
</div>
<br/>
<br/>
<span style="font-size:16px;border-bottom:2px solid #ff0000;">Graphical Representation:</span>
<br/>
<br/>


<div id="img_templatemethod">
</div>
<iframe style="display:none;" onload="(function(){new ImageLoader('img_templatemethod','archive/resources/images/dp/templatemethod.png',405,277).loadImage();})();"></iframe>

<div>

<br/><br/><h3><span>Intent</span></h3>

<p><span>-<span>                    
</span></span><span><span>Define
the skeleton of an algorithm in an operation, deferring some steps to client
subclasses. Template Method lets subclasses redefine certain steps of an
algorithm without changing the algorithm's structure.</span></span></p>

<p><span>-<span>                    
</span></span><span><span>Base
class declares algorithm 'placeholders', and derived classes implement the placeholders.</span></span></p>

<br/><br/><h3><span>Problem</span></h3>

<p><span>Two different components have
significant similarities, but demonstrate no reuse of common interface or
implementation. If a change common to both components becomes necessary,
duplicate effort must be expended.</span></p>

<br/><br/><h3><span>Discussion</span></h3>

<p><span>The component designer decides which
steps of an algorithm are invariant (or standard), and which are variant (or
customizable). The invariant steps are implemented in an abstract base class,
while the variant steps are either given a default implementation, or no
implementation at all. The variant steps represent "hooks", or "placeholders",
that can, or must, be supplied by the component's client in a concrete derived class.</span></p>

<p><span>The component designer mandates the
required steps of an algorithm, and the ordering of the steps, but allows the
component client to extend or replace some number of these steps.</span></p>

<p><span>Template Method is used prominently
in frameworks. Each framework implements the invariant pieces of a domain's
architecture, and defines "placeholders" for all necessary or interesting
client customization options. In so doing, the framework becomes the "center of
the universe", and the client customizations are simply "the third rock from the
sun". This inverted control structure has been affectionately labelled "the
Hollywood principle" - "don't call us, we'll call you".</span></p>

<br/><br/><h3><span>Structure</span></h3>

<p><span><span>The implementation of</span></span><span><span> </span></span><code><span>template_method()</span></code><span><span> </span></span><span><span>is: call</span></span><span><span> </span></span><code><span>step_one()</span></code><span><span>, call</span></span><span><span> </span></span><code><span>step_two()</span></code><span><span>, and call</span></span><span><span> </span></span><code><span>step_three()</span></code><span><span>.</span></span><code><span>step_two()</span></code><span><span> </span></span><span><span>is a
"hook" method - a placeholder. It is declared in the base class, and then
defined in derived classes. Frameworks (large scale reuse infrastructures) use
Template Method a lot. All reusable code is defined in the framework's base
classes, and then clients of the framework are free to define customizations by
creating derived classes as needed.</span></span></p>

<br/><br/><h3><span>Check list</span></h3>

<p><span>1.<span>             
</span></span><span><span>Examine
the algorithm, and decide which steps are standard and which steps are peculiar
to each of the current classes.</span></span></p>

<p><span>2.<span>             
</span></span><span><span>Define
a new abstract base class to host the "don't call us, we'll call you" framework.</span></span></p>

<p><span>3.<span>             
</span></span><span><span>Move
the shell of the algorithm (now called the "template method") and the
definition of all standard steps to the new base class.</span></span></p>

<p><span>4.<span>             
</span></span><span><span>Define
a placeholder or "hook" method in the base class for each step that requires
many different implementations. This method can host a default implementation -
or - it can be defined as abstract (Java) or pure virtual (<span>C++</span>).</span></span></p>

<p><span>5.<span>             
</span></span><span><span>Invoke
the hook method(s) from the template method.</span></span></p>

<p><span>6.<span>             
</span></span><span><span>Each
of the existing classes declares an "is-a" relationship to the new abstract
base class.</span></span></p>

<p><span>7.<span>             
</span></span><span><span>Remove
from the existing classes all the implementation details that have been moved
to the base class.</span></span></p>

<p><span>8.<span>             
</span></span><span><span>The
only details that will remain in the existing classes will be the
implementation details peculiar to each derived class.</span></span></p>

<br/><br/><h3><span>Rules of thumb</span></h3>

<p><span>-<span>                    
</span></span><span><span>Strategy
is like Template Method except in its granularity.</span></span></p>

<p><span>-<span>                    
</span></span><span><span>Template
Method uses inheritance to vary part of an algorithm. Strategy uses delegation
to vary the entire algorithm.</span></span></p>

<p><span>-<span>                    
</span></span><span><span>Strategy
modifies the logic of individual objects. Template Method modifies the logic of
an entire class.</span></span></p>

<p><span>Factory
Method is a specialization of Template Method.</span></p>

</div>
<!-- end content here -->

<jsp:include page="../contentFooter.jsp"/>