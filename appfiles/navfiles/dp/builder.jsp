<jsp:include page="../contentHeader.jsp">
<jsp:param name="docTitle" value="CodeArchives - Builder Design Pattern" />
</jsp:include>


<!-- start content here -->

<div class="dpHeading">
<span style="font-weight:bold;">Builder Design Pattern</span>
</div>
<br/>
<br/>
<span style="font-size:16px;border-bottom:2px solid #ff0000;">Graphical Representation:</span>
<br/>
<br/>

<div id="img_builder">
</div>
<iframe style="display:none;" onload="(function(){new ImageLoader('img_builder','archive/resources/images/dp/builder.png',486,246).loadImage();})();"></iframe>

<div>

<br/><br/><h3><span>Intent</span></h3>

<p><span><span> </span></span></p>

<p><span>-<span>                    
</span></span><span><span>Separate
the construction of a complex object from its representation so that the same
construction process can create different representations.</span></span></p>

<p><span>-<span>                    
</span></span><span><span>Parse
a complex representation, create one of several targets.</span></span></p>

<br/><br/><h3><span>Problem</span></h3>

<p><span><span> </span></span></p>

<p><span>An application needs to create the
elements of a complex aggregate. The specification for the aggregate exists on
secondary storage and one of many representations needs to be built in
primary storage.</span></p>

<br/><br/><h3><span>Discussion</span></h3>

<p><span><span> </span></span></p>

<p><span>Separate the algorithm for
interpreting (i.e. reading and parsing) a stored persistence mechanism (e.g.
RTF files) from the algorithm for building and representing one of many target
products (e.g. ASCII, </span><span>TeX</span><span>, text widget). The focus/distinction
is on creating complex aggregates.</span></p>

<p><span>The "director" invokes "builder"
services as it interprets the external format. The "builder" creates part of
the complex object each time it is called and maintains all intermediate state.
When the product is finished, the client retrieves the result from
the "builder".</span></p>

<p><span>Affords finer control over the
construction process. Unlike creational patterns that construct products in one
shot, the Builder pattern constructs the product step by step under the control
of the "director".</span></p>

<br/><br/><h3><span>Structure</span></h3>

<p><span>The Reader encapsulates the parsing of
the common input. The Builder hierarchy makes possible the polymorphic creation
of many peculiar representations or targets.</span></p>

<br/><br/><h3><span>Check list</span></h3>

<p><span>1.<span>             
</span></span><span><span>Decide
if a common input and many possible representations (or outputs) is the problem
at hand.</span></span></p>

<p><span>2.<span>             
</span></span><span><span>Encapsulate
the parsing of the common input in a Reader class.</span></span></p>

<p><span>3.<span>             
</span></span><span><span>Design
a standard protocol for creating all possible output representations. Capture
the steps of this protocol in a Builder interface.</span></span></p>

<p><span>4.<span>             
</span></span><span><span>Define
a Builder derived class for each target representation.</span></span></p>

<p><span>5.<span>             
</span></span><span><span>The
client creates a Reader object and a Builder object, and registers the latter
with the former.</span></span></p>

<p><span>6.<span>             
</span></span><span><span>The
client asks the Reader to "construct".</span></span></p>

<p><span>7.<span>             
</span></span><span><span>The
client asks the Builder to return the result.</span></span></p>

<br/><br/><h3><span>Rules of thumb</span></h3>

<p><span>-<span>                    
</span></span><span><span>Sometimes
creational patterns are complementory: Builder can use one of the other
patterns to implement which components get built. Abstract Factory, Builder,
and Prototype can use Singleton in their implementations.</span></span></p>

<p><span>-<span>                    
</span></span><span><span>Builder
focuses on constructing a complex object step by step. Abstract Factory emphasizes
a family of product objects (either simple or complex). Builder returns the
product as a final step, but as far as the Abstract Factory is concerned, the
product gets returned immediately.</span></span></p>

<p><span>-<span>                    
</span></span><span><span>Builder
often builds a Composite.</span></span></p>

<div>

<p><span>-<span>                    
</span></span><span><span>Often,
designs start out using Factory Method (less complicated, more customizable,
subclasses proliferate) and evolve toward Abstract Factory, Prototype, or
Builder (more flexible, more complex) as the designer discovers where more
flexibility is needed.</span></span></p>

</div>

<p> </p>

</div>

<!-- end content here -->

<jsp:include page="../contentFooter.jsp"/>