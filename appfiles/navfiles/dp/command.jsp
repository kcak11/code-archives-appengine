<jsp:include page="../contentHeader.jsp">
<jsp:param name="docTitle" value="CodeArchives - Command Design Pattern" />
</jsp:include>


<!-- start content here -->

<div class="dpHeading">
<span style="font-weight:bold;">Command Design Pattern</span>
</div>
<br/>
<br/>
<span style="font-size:16px;border-bottom:2px solid #ff0000;">Graphical Representation:</span>
<br/>
<br/>

<div id="img_command">
</div>
<iframe style="display:none;" onload="(function(){new ImageLoader('img_command','archive/resources/images/dp/command.png',468,321).loadImage();})();"></iframe>

<div>

<br/><br/><h3><span>Intent</span></h3>

<p><span>-<span>                    
</span></span><span><span>Encapsulate
a request as an object, thereby letting you parameterize clients with different
requests, queue or log requests, and support undoable operations.</span></span></p>

<p><span>-<span>                    
</span></span><span><span>Promote
"invocation of a method on an object" to full object status</span></span></p>

<p><span>-<span>                    
</span></span><span><span>An object-oriented callback</span></span></p>

<br/><br/><h3><span>Problem</span></h3>

<p><span>Need to issue requests to objects
without knowing anything about the operation being requested or the receiver of
the request.</span></p>

<br/><br/><h3><span>Discussion</span></h3>

<p><span>Command
decouples the object that invokes the operation from the one that knows how to
perform it. To achieve this separation, the designer creates an abstract base
class that maps a receiver (an object) with an action (a pointer to a member
function). The base class contains an<span> </span></span><code><span>execute()</span></code><span><span> </span></span><span>method that simply calls the action
on the receiver.</span></p>

<p><span> </span></p>

<p><span>All
clients of Command objects treat each object as a "black box" by simply
invoking the object's virtual</span><code><span>execute()</span></code><span><span> </span></span><span>method whenever the client requires
the object's "service".</span></p>

<p><span><span> </span></span></p>

<p><span>A Command class holds some subset of
the following: an object, a method to be applied to the object, and the
arguments to be passed when the method is applied. The Command's "execute"
method then causes the pieces to come together.</span></p>

<p><span>Sequences of Command objects can be
assembled into composite (or macro) commands.</span></p>

<br/><br/><h3><span>Structure</span></h3>

<p><span>The client that creates a command is
not the same client that executes it. This separation provides flexibility in
the timing and sequencing of commands. Materializing commands as objects means
they can be passed, staged, shared, loaded in a table, and otherwise
instrumented or manipulated like any other object.</span></p>

<p><span><span>Command objects can be thought of as "tokens" that are created
by one client that knows what need to be done, and passed to another client
that has the resources for doing it.</span></span></p>

<br/><br/><h3><span>Check list</span></h3>

<p><span>1.<span>             
</span></span><span><span>Define
a Command interface with a method signature like<span> </span></span></span><code><span>execute()</span></code><span>.</span></p>

<p><span>2.<span>             
</span></span><span><span>Create
one or more derived classes that encapsulate some subset of the following: a
"receiver" object, the method to invoke, the arguments to pass.</span></span></p>

<p><span>3.<span>             
</span></span><span><span>Instantiate
a Command object for each deferred execution request.</span></span></p>

<p><span>4.<span>             
</span></span><span><span>Pass
the Command object from the creator (aka sender) to the invoker
(aka receiver).</span></span></p>

<p><span>5.<span>             
</span></span><span><span>The
invoker decides when to<span> </span></span></span><code><span>execute()</span></code><span>.</span></p>

<br/><br/><h3><span>Rules of thumb</span></h3>

<p><span>-<span>                    
</span></span><span><span>Chain
of Responsibility, Command, Mediator, and Observer, address how you can
decouple senders and receivers, but with different trade-offs. Command normally
specifies a sender-receiver connection with a subclass.</span></span></p>

<p><span>-<span>                    
</span></span><span><span>Chain
of Responsibility can use Command to represent requests as objects.</span></span></p>

<p><span>-<span>                    
</span></span><span><span>Command
and Memento act as magic tokens to be passed around and invoked at a later
time. In Command, the token represents a request; in Memento, it represents the
internal state of an object at a particular time. Polymorphism is important to
Command, but not to Memento because its interface is so narrow that a memento
can only be passed as a value.</span></span></p>

<p><span>-<span>                    
</span></span><span><span>Command
can use Memento to maintain the state required for an undo operation.</span></span></p>

<p><span>-<span>                    
</span></span><span><span>MacroCommands
can be implemented with Composite.</span></span></p>

<p><span>-<span>                    
</span></span><span><span>A
Command that must be copied before being placed on a history list acts as
a Prototype.</span></span></p>

<p><span>Two
important aspects of the Command pattern: interface separation (the invoker is
isolated from the receiver), time separation (stores a ready-to-go processing
request that's to be stated later).</span></p>

</div>
<!-- end content here -->

<jsp:include page="../contentFooter.jsp"/>