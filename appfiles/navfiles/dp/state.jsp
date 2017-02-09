<jsp:include page="../contentHeader.jsp">
<jsp:param name="docTitle" value="CodeArchives - State Design Pattern" />
</jsp:include>


<!-- start content here -->

<div class="dpHeading">
<span style="font-weight:bold;">State Design Pattern</span>
</div>
<br/>
<br/>
<span style="font-size:16px;border-bottom:2px solid #ff0000;">Graphical Representation:</span>
<br/>
<br/>

<div id="img_state">
</div>
<iframe style="display:none;" onload="(function(){new ImageLoader('img_state','archive/resources/images/dp/state.png',463,357).loadImage();})();"></iframe>

<div>

<br/><br/><h3><span>Intent</span></h3>

<p><span>-<span>                    
</span></span><span><span>Allow
an object to alter its behavior when its internal state changes. The object
will appear to change its class.</span></span></p>

<p><span>-<span>                    
</span></span><span><span>An object-oriented state machine</span></span></p>

<p><span>-<span>                    
</span></span><span><span>wrapper + polymorphic wrappee + collaboration</span></span></p>

<br/><br/><h3><span>Problem</span></h3>

<p><span>A monolithic object's behavior is a function
of its state, and it must change its behavior at run-time depending on that
state. Or, an application is characterixed by large and numerous case
statements that vector flow of control based on the state of the application.</span></p>

<br/><br/><h3><span>Discussion</span></h3>

<p><span>The State pattern is a solution to
the problem of how to make behavior depend on state.</span></p>

<p><span>-<span>                    
</span></span><span><span>Define
a "context" class to present a single interface to the outside world.</span></span></p>

<p><span>-<span>                    
</span></span><span><span>Define
a State abstract base class.</span></span></p>

<p><span>-<span>                    
</span></span><span><span>Represent
the different "states" of the state machine as derived classes of the State
base class.</span></span></p>

<p><span>-<span>                    
</span></span><span><span>Define
state-specific behavior in the appropriate State derived classes.</span></span></p>

<p><span>-<span>                    
</span></span><span><span>Maintain
a pointer to the current "state" in the "context" class.</span></span></p>

<p><span>-<span>                    
</span></span><span><span>To
change the state of the state machine, change the current "state" pointer.</span></span></p>

<p><span>The State pattern does not specify
where the state transitions will be defined. The choices are two: the "context"
object, or each individual State derived class. The advantage of the latter
option is ease of adding new State derived classes. The disadvantage is each
State derived class has knowledge of (coupling to) its siblings, which
introduces dependencies between subclasses.</span></p>

<p><span>A table-driven approach to designing
finite state machines does a good job of specifying state transitions, but it
is difficult to add actions to accompany the state transitions. The
pattern-based approach uses code (instead of data structures) to specify state
transitions, but it does a good job of accomodating state transition actions.</span></p>

<br/><br/><h3><span>Structure</span></h3>

<p><span>The state machine's interface is
encapsulated in the "wrapper" class. The wrappee hierarchy's interface mirrors
the wrapper's interface with the exception of one additional parameter. The
extra parameter allows wrappee derived classes to call back to the wrapper
class as necessary. Complexity that would otherwise drag down the wrapper class
is neatly compartmented and encapsulated in a polymorphic hierarchy to which
the wrapper object delegates.</span></p>

<br/><br/><h3><span>Check list</span></h3>

<p><span>1.<span>             
</span></span><span><span>Identify
an existing class, or create a new class, that will serve as the "state
machine" from the client's perspective. That class is the "wrapper" class.</span></span></p>

<p><span>2.<span>             
</span></span><span><span>Create
a State base class that replicates the methods of the state machine interface.
Each method takes one additional parameter: an instance of the wrapper class. </span></span><span>The State base class specifies
any useful "default" behavior.</span></p>

<p><span>3.<span>             
</span></span><span><span>Create
a State derived class for each domain state. These derived classes only
override the methods they need to override.</span></span></p>

<p><span>4.<span>             
</span></span><span><span>The
wrapper class maintains a "current" State object.</span></span></p>

<p><span>5.<span>             
</span></span><span><span>All
client requests to the wrapper class are simply delegated to the current State
object, and the wrapper object's<span> </span></span></span><code><span>this</span></code><span><span> </span></span><span>pointer is passed.</span></p>

<p><span>6.<span>             
</span></span><span><span>The
State methods change the "current" state in the wrapper object as appropriate.</span></span></p>

<br/><br/><h3><span>Rules of thumb</span></h3>

<p><span>-<span>                    
</span></span><span><span>State
objects are often Singletons.</span></span></p>

<p><span>-<span>                    
</span></span><span><span>Flyweight
explains when and how State objects can be shared.</span></span></p>

<p><span>-<span>                    
</span></span><span><span>Interpreter
can use State to define parsing contexts.</span></span></p>

<p><span>-<span>                    
</span></span><span><span>Strategy
has 2 different implementations, the first is similar to State. The difference
is in binding times (Strategy is a bind-once pattern, whereas State is more dynamic).</span></span></p>

<p><span>-<span>                    
</span></span><span><span>The
structure of State and Bridge are identical (except that Bridge admits
hierarchies of envelope classes, whereas State allows only one). The two
patterns use the same structure to solve different problems: State allows an
object's behavior to change along with its state, while Bridge's intent is to
decouple an abstraction from its implementation so that the two can vary independently.</span></span></p>

<p><span>The
implementation of the State pattern builds on the Strategy pattern. The
difference between State and Strategy is in the intent. With Strategy, the
choice of algorithm is fairly stable. With State, a change in the state of the
"context" object causes it to select from its "palette" of Strategy objects.</span></p>

</div>
<!-- end content here -->

<jsp:include page="../contentFooter.jsp"/>