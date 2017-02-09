<jsp:include page="../contentHeader.jsp">
<jsp:param name="docTitle" value="CodeArchives - Interpreter Design Pattern" />
</jsp:include>


<!-- start content here -->

<div class="dpHeading">
<span style="font-weight:bold;">Interpreter Design Pattern</span>
</div>
<br/>
<br/>
<span style="font-size:16px;border-bottom:2px solid #ff0000;">Graphical Representation:</span>
<br/>
<br/>

<div id="img_interpreter">
</div>
<iframe style="display:none;" onload="(function(){new ImageLoader('img_interpreter','archive/resources/images/dp/interpreter.png',469,327).loadImage();})();"></iframe>

<div>

<br/><br/><h3><span>Intent</span></h3>

<p><span>-<span>                    
</span></span><span><span>Given
a language, define a representation for its grammar along with an interpreter
that uses the representation to interpret sentences in the language.</span></span></p>

<p><span>-<span>                    
</span></span><span><span>Map
a domain to a language, the language to a grammar, and the grammar to a
hierarchical object-oriented design.</span></span></p>

<br/><br/><h3><span>Problem</span></h3>

<p><span>A class of problems occurs repeatedly
in a well-defined and well-understood domain. If the domain were characterized
with a "language", then problems could be easily solved with an
interpretation "engine".</span></p>

<br/><br/><h3><span>Discussion</span></h3>

<p><span>The Interpreter pattern discusses:
defining a domain language (i.e. problem characterization) as a simple language
grammar, representing domain rules as language sentences, and interpreting
these sentences to solve the problem. The pattern uses a class to represent
each grammar rule. And since grammars are usually hierarchical in structure, an
inheritance hierarchy of rule classes maps nicely.</span></p>

<p><span>An
abstract base class specifies the method<span> </span></span><code><span>interpret()</span></code><span>.
Each concrete subclass implements</span><code><span>interpret()</span></code><span><span> </span></span><span>by accepting (as an argument) the
current state of the language stream, and adding its contribution to the problem
solving process.</span></p>

<br/><br/><h3><span>Structure</span></h3>

<p><span>Interpreter suggests modeling the
domain with a recursive grammar. Each rule in the grammar is either a
'composite' (a rule that references other rules) or a terminal (a leaf node in
a tree structure). Interpreter relies on the recursive traversal of the
Composite pattern to interpret the 'sentences' it is asked to process.</span></p>

<br/><br/><h3><span>Check list</span></h3>

<p><span>1.<span>             
</span></span><span><span>Decide
if a "little language" offers a justifiable return on investment.</span></span></p>

<p><span>2.<span>             
</span></span><span><span>Define
a grammar for the language.</span></span></p>

<p><span>3.<span>             
</span></span><span><span>Map
each production in the grammar to a class.</span></span></p>

<p><span>4.<span>             
</span></span><span><span>Organize
the suite of classes into the structure of the Composite pattern.</span></span></p>

<p><span>5.<span>             
</span></span><span><span>Define an<span> </span></span></span><code><span>interpret(Context)</span></code><span><span> </span></span><span>method in the Composite hierarchy.</span></p>

<p><span>6.<span>             
</span></span><span><span>The<span> </span></span></span><code><span>Context</span></code><span><span> </span></span><span>object encapsulates the current state
of the input and output as the former is parsed and the latter is accumulated.
It is manipulated by each grammar class as the "interpreting" process
transforms the input into the output.</span></p>

<br/><br/><h3><span>Rules of thumb</span></h3>

<p><span>-<span>                    
</span></span><span><span>Considered
in its most general form (i.e. an operation distributed over a class hierarchy
based on the Composite pattern), nearly every use of the Composite pattern will
also contain the Interpreter pattern. But the Interpreter pattern should be
reserved for those cases in which you want to think of this class hierarchy as
defining a language.</span></span></p>

<p><span>-<span>                    
</span></span><span><span>Interpreter
can use State to define parsing contexts.</span></span></p>

<p><span>-<span>                    
</span></span><span><span>The
abstract syntax tree of Interpreter is a Composite (therefore Iterator and
Visitor are also applicable).</span></span></p>

<p><span>-<span>                    
</span></span><span><span>Terminal
symbols within Interpreter's abstract syntax tree can be shared
with Flyweight.</span></span></p>

<p><span>The pattern
doesn't address parsing. When the grammar is very complex, other techniques
(such as a parser) are more appropriate.</span></p>

</div>
<!-- end content here -->

<jsp:include page="../contentFooter.jsp"/>