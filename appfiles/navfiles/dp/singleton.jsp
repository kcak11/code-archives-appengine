<jsp:include page="../contentHeader.jsp">
<jsp:param name="docTitle" value="CodeArchives - Singleton Design Pattern" />
</jsp:include>


<!-- start content here -->

<div class="dpHeading">
<span style="font-weight:bold;">Singleton Design Pattern</span>
</div>
<br/>
<br/>
<span style="font-size:16px;border-bottom:2px solid #ff0000;">Graphical Representation:</span>
<br/>
<br/>

<div id="img_singleton">
</div>
<iframe style="display:none;" onload="(function(){new ImageLoader('img_singleton','archive/resources/images/dp/singleton.png',365,220).loadImage();})();"></iframe>

<div>

<br/><br/><h3><span>Intent</span></h3>

<p><span>-<span>                    
</span></span><span><span>Ensure
a class has only one instance, and provide a global point of access to it.</span></span></p>

<p><span>-<span>                    
</span></span><span><span>Encapsulated
"just-in-time initialization" or "initialization on first use".</span></span></p>

<br/><br/><h3><span>Problem</span></h3>

<p><span>Application needs one, and only one,
instance of an object. Additionally, lazy initialization and global access
are necessary.</span></p>

<br/><br/><h3><span>Discussion</span></h3>

<p><span>Make the class of the single instance
object responsible for creation, initialization, access, and enforcement.
Declare the instance as a private static data member. Provide a public static
member function that encapsulates all initialization code, and provides access
to the instance.</span></p>

<p><span>The client calls the accessor
function (using the class name and scope resolution operator) whenever a
reference to the single instance is required.</span></p>

<p><span>Singleton should be considered only
if all three of the following criteria are satisfied:</span></p>

<p><span>-<span>                    
</span></span><span><span>Ownership
of the single instance cannot be reasonably assigned</span></span></p>

<p><span>-<span>                    
</span></span><span><span>Lazy initialization is desirable</span></span></p>

<p><span>-<span>                    
</span></span><span><span>Global
access is not otherwise provided for</span></span></p>

<p><span>If ownership of the single instance,
when and how initialization occurs, and global access are not issues, Singleton
is not sufficiently interesting.</span></p>

<p><span>The Singleton pattern can be extended
to support access to an application-specific number of instances.</span></p>

<p><span>The "static member function accessor"
approach will not support subclassing of the Singleton class. If subclassing is
desired, refer to the discussion in the book.</span></p>

<p><span>Deleting
a Singleton class/instance is a non-trivial design problem. See "</span><span><a><span>To Kill A Singleton</span></a></span><span>" by John Vlissides for
a discussion.</span></p>

<br/><br/><h3><span>Structure</span></h3>

<p><span><span>Make the class of the single instance responsible for access and
"initialization on first use". The single instance is a private static
attribute. The accessor function is a public static method.</span></span></p>

<br/><br/><h3><span>Check list</span></h3>

<p><span>1.<span>             
</span></span><span><span>Define
a private<span> </span></span></span><code><span>static</span></code><span><span> </span></span><span>attribute in the "single
instance" class.</span></p>

<p><span>2.<span>             
</span></span><span><span>Define
a public<span> </span></span></span><code><span>static</span></code><span><span> </span></span><span>accessor function in the class.</span></p>

<p><span>3.<span>             
</span></span><span><span>Do
"lazy initialization" (creation on first use) in the accessor function.</span></span></p>

<p><span>4.<span>             
</span></span><span><span>Define
all constructors to be<span> </span></span></span><code><span>protected</span></code><span><span> </span></span><span>or<span> </span></span><code><span>private</span></code><span>.</span></p>

<p><span>5.<span>             
</span></span><span><span>Clients
may only use the accessor function to manipulate the Singleton.</span></span></p>

<br/><br/><h3><span>Rules of thumb</span></h3>

<p><span>-<span>                    
</span></span><span><span>Abstract
Factory, Builder, and Prototype can use Singleton in their implementation.</span></span></p>

<p><span>-<span>                    
</span></span><span><span>Facade
objects are often Singletons because only one Facade object is required.</span></span></p>

<p><span>-<span>                    
</span></span><span><span>State
objects are often Singletons.</span></span></p>

<p><span>-<span>                    
</span></span><span><span>The
advantage of Singleton over global variables is that you are absolutely sure of
the number of instances when you use Singleton, and, you can change your mind
and manage any number of instances.</span></span></p>

<p><span>-<span>                    
</span></span><span><span>The
Singleton design pattern is one of the most inappropriately used patterns.
Singletons are intended to be used when a class must have exactly one instance,
no more, no less. Designers frequently use Singletons in a misguided attempt to
replace global variables. A Singleton is, for intents and purposes, a global
variable. The Singleton does not do away with the global; it merely
renames it.</span></span></p>

<p><span>-<span>                    
</span></span><span><span>When
is Singleton unnecessary? Short answer: most of the time. Long answer: when
it's simpler to pass an object resource as a reference to the objects that need
it, rather than letting objects access the resource globally. The real problem
with Singletons is that they give you such a good excuse not to think carefully
about the appropriate visibility of an object. Finding the right balance of
exposure and protection for an object is critical for
maintaining flexibility.</span></span></p>

<p><span>Our group
had a bad habit of using global data, so I did a study group on Singleton. The
next thing I know Singletons appeared everywhere and none of the problems
related to global data went away. The answer to the global data question is
not, "Make it a Singleton." The answer is, "Why in the hell are you using
global data?" Changing the name doesn't change the problem. In fact, it may
make it worse because it gives you the opportunity to say, "Well I'm not doing
that, I'm doing this" - even though this and that are the same thing.</span></p>

</div>
<!-- end content here -->

<jsp:include page="../contentFooter.jsp"/>