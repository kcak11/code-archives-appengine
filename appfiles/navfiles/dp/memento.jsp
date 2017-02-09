<jsp:include page="../contentHeader.jsp">
<jsp:param name="docTitle" value="CodeArchives - Memento Design Pattern" />
</jsp:include>


<!-- start content here -->

<div class="dpHeading">
<span style="font-weight:bold;">Memento Design Pattern</span>
</div>
<br/>
<br/>
<span style="font-size:16px;border-bottom:2px solid #ff0000;">Graphical Representation:</span>
<br/>
<br/>

<div id="img_memento">
</div>
<iframe style="display:none;" onload="(function(){new ImageLoader('img_memento','archive/resources/images/dp/memento.png',512,226).loadImage();})();"></iframe>

<div>

<br/><br/><h3><span>Intent</span></h3>

<p><span>-<span>                    
</span></span><span><span>Without
violating encapsulation, capture and externalize an object's internal state so
that the object can be returned to this state later.</span></span></p>

<p><span>-<span>                    
</span></span><span><span>A
magic cookie that encapsulates a "check point" capability.</span></span></p>

<p><span>-<span>                    
</span></span><span><span>Promote
undo or rollback to full object status.</span></span></p>

<br/><br/><h3><span>Problem</span></h3>

<p><span>Need to restore an object back to its
previous state (e.g. "undo" or "rollback" operations).</span></p>

<br/><br/><h3><span>Discussion</span></h3>

<p><span>The client requests a Memento from
the source object when it needs to checkpoint the source object's state. The
source object initializes the Memento with a characterization of its state. The
client is the "care-taker" of the Memento, but only the source object can store
and retrieve information from the Memento (the Memento is "opaque" to the
client and all other objects). If the client subsequently needs to "rollback"
the source object's state, it hands the Memento back to the source object for reinstatement.</span></p>

<p><span>An unlimited "undo" and "redo"
capability can be readily implemented with a stack of Command objects and a
stack of Memento objects.</span></p>

<p><span>The Memento design pattern defines
three distinct roles:</span></p>

<p><span>1.<span>             
</span></span><span><em><span>Originator</span></em></span><span><span> </span></span><span>- the object that knows how to save itself.</span></p>

<p><span>2.<span>             
</span></span><span><em><span>Caretaker</span></em></span><span><span> </span></span><span>- the object that knows why and when
the Originator needs to save and restore itself.</span></p>

<p><span>3.<span>             
</span></span><span><em><span>Memento</span></em></span><span><span> </span></span><span>- the lock box that is written and
read by the Originator, and shepherded by the Caretaker.</span></p>

<br/><br/><h3><span>Check list</span></h3>

<p><span>1.<span>             
</span></span><span><span>Identify
the roles of "caretaker" and "originator".</span></span></p>

<p><span>2.<span>             
</span></span><span><span>Create
a Memento class and declare the originator a friend.</span></span></p>

<p><span>3.<span>             
</span></span><span><span>Caretaker
knows when to "check point" the originator.</span></span></p>

<p><span>4.<span>             
</span></span><span><span>Originator
creates a Memento and copies its state to that Memento.</span></span></p>

<p><span>5.<span>             
</span></span><span><span>Caretaker
holds on to (but cannot peek into) the Memento.</span></span></p>

<p><span>6.<span>             
</span></span><span><span>Caretaker
knows when to "roll back" the originator.</span></span></p>

<p><span>7.<span>             
</span></span><span><span>Originator
reinstates itself using the saved state in the Memento.</span></span></p>

<br/><br/><h3><span>Rules of thumb</span></h3>

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

<p><span>Memento is
often used in conjunction with Iterator. An Iterator can use a Memento to
capture the state of an iteration. </span><span>The Iterator stores the Memento internally.</span></p>

</div>
<!-- end content here -->

<jsp:include page="../contentFooter.jsp"/>