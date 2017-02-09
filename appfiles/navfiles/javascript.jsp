<jsp:include page="contentHeader.jsp">
<jsp:param name="docTitle" value="CodeArchives - JavaScript" />
</jsp:include>

<img src="archive/resources/images/topics/javascript.png"/>
<!-- start data content -->
<h1 class="firstHeading" id="firstHeading" style="text-align: justify;">
	JavaScript</h1>
<p style="text-align: justify;">
	&nbsp;</p>
<div class="dpHeading" style="height:100px;">
<table style="height:100%;">
<tr>
<td align="right">&nbsp;</td>
<td>
<span style="font-weight:bold;cursor:pointer;" onclick='doAjaxCallAndHideMenu("archive/Action/kbase/"+_getEKey(),"bodyDiv","");'>Suggested Reading: <br/><span style="font-size:5px;"><br/></span>&nbsp;&nbsp;&nbsp;&nbsp;1. <span style="font-style:italic;border-bottom:1px solid #ff0000;">JavaScript Language Library (Code Archives KnowledgeBase)</span><br/><span style="font-size:5px;"><br/></span>&nbsp;&nbsp;&nbsp;&nbsp;2. <span style="font-style:italic;border-bottom:1px solid #ff0000;">ECMA 3 Browser Support JavaScript Library (Code Archives KnowledgeBase)</span><br/>&nbsp;</span>
</td>
</tr>
</table>
</div>
<br/>
<br/>
<table class="infobox vevent" style="width: 604px; height: 488px;" cellspacing="5">
	<caption class="summary" style="">
		&nbsp;</caption>
	<tbody>
		<tr>

			<th scope="row" style="text-align: justify;">
				<span>Paradigm</span></th>
			<td style="text-align: justify;">
				<span class="mw-redirect">Multi-paradigm</span>: <span>scripting</span>, <span>prototype-based</span>, <span>imperative</span>, <span>functional</span><sup style="display: none;" class="reference" id="cite_ref-jsfunc_0-0"><span><span>[</span>1<span>]</span></span></sup></td>

		</tr>
		<tr>
			<th scope="row" style="text-align: justify;">
				Appeared in</th>
			<td style="text-align: justify;">
				1995</td>
		</tr>
		<tr>

			<th scope="row" style="text-align: justify;">
				Designed by</th>
			<td class="organiser" style="text-align: justify;">
				<span>Brendan Eich</span></td>
		</tr>
		<tr>
			<th scope="row" style="text-align: justify;">
				<span>Developer</span></th>

			<td style="text-align: justify;">
				<span class="mw-redirect">Netscape Communications Corporation</span>, <span>Mozilla Foundation</span></td>
		</tr>
		<tr>
			<th scope="row" style="text-align: justify;">
				<span>Stable release</span></th>
			<td style="text-align: justify;">

				1.8.2<sup style="display: none;" class="reference" id="cite_ref-1"><span><span>[</span>2<span>]</span></span></sup> (June 22, 2009<span class="noprint">; 20 months ago</span><span style="display: none;">&nbsp;(<span class="bday dtstart published updated">2009-06-22</span>)</span>)</td>
		</tr>
		<tr>

			<th scope="row" style="text-align: justify;">
				<span>Preview release</span></th>
			<td style="text-align: justify;">
				1.8.5<sup style="display: none;" class="reference" id="cite_ref-2"><span><span>[</span>3<span>]</span></span></sup> (July 27, 2010<span class="noprint">; 7 months ago</span><span style="display: none;">&nbsp;(<span class="bday dtstart published updated">2010-07-27</span>)</span>)</td>

		</tr>
		<tr>
			<th scope="row" style="text-align: justify;">
				<span>Typing discipline</span></th>
			<td style="text-align: justify;">
				<span class="mw-redirect">dynamic</span>, <span>weak</span>, <span>duck</span></td>

		</tr>
		<tr>
			<th scope="row" style="text-align: justify;">
				<span>Major implementations</span></th>
			<td style="text-align: justify;">
				<span class="mw-redirect">KJS</span>, <span>Rhino</span>, <span>SpiderMonkey</span>, <span>V8</span>, <span>WebKit</span></td>

		</tr>
		<tr>
			<th scope="row" style="text-align: justify;">
				Influenced by</th>
			<td style="text-align: justify;">
				<span>C</span>, <span>Scheme</span>, <span>Java</span>, <span>Perl</span>, <span>Python</span>, <span class="mw-redirect">Self</span></td>

		</tr>
		<tr>
			<th scope="row" style="text-align: justify;">
				Influenced</th>
			<td style="text-align: justify;">
				<span>JScript</span>, <span>JScript .NET</span>, <span>Objective-J</span>, TIScript</td>

		</tr>
	</tbody>
</table>
<p style="text-align: justify;">
	&nbsp;</p>
<table class="infobox" style="width: 604px; height: 203px;" cellspacing="5">
	<caption style="">
		&nbsp;</caption>
	<tbody>
		<tr>

			<th scope="row" style="text-align: justify;">
				<span>Filename extension</span></th>
			<td style="text-align: justify;">
				<code><code>.js</code></code></td>
		</tr>
		<tr>
			<th scope="row" style="text-align: justify;">
				<span>Internet media type</span></th>

			<td style="text-align: justify;">
				<code>application/javascript, text/javascript<sup style="display: none;" class="reference" id="cite_ref-3"><span><span>[</span>4<span>]</span></span></sup></code></td>
		</tr>
		<tr>
			<th scope="row" style="text-align: justify;">
				<span>Uniform Type Identifier</span></th>

			<td style="text-align: justify;">
				com.netscape.javascript-?source<sup style="display: none;" class="reference" id="cite_ref-4"><span><span>[</span>5<span>]</span></span></sup></td>
		</tr>
		<tr>
			<th scope="row" style="text-align: justify;">
				Type of format</th>

			<td style="text-align: justify;">
				<span>Scripting language</span></td>
		</tr>
	</tbody>
</table>
<p style="text-align: justify;">
	<b>JavaScript</b>, also known as ECMAScript <sup style="display: none;" class="reference" id="cite_ref-JSConf_US_5-0"><span><span>[</span>6<span>]</span></span></sup> is a <span class="mw-redirect">prototype-based</span> <span>object-oriented</span><sup style="display: none;" class="reference" id="cite_ref-ECMA-262_6-0"><span><span>[</span>7<span>]</span></span></sup> <span>scripting language</span> that is <span class="mw-redirect">dynamic</span>, <span>weakly typed</span> and has <span>first-class functions</span>. It is also considered a <span>functional programming</span> language<sup style="display: none;" class="reference" id="cite_ref-jsfunc_0-1"><span><span>[</span>1<span>]</span></span></sup> like <span>Scheme</span> and <span class="mw-redirect">OCaml</span> because it has <span>closures</span> and supports <span>higher-order functions</span>.<sup style="display: none;" class="reference" id="cite_ref-7"><span><span>[</span>8<span>]</span></span></sup></p>

<p style="text-align: justify;">
	JavaScript is an <span>implementation</span> of the <span>ECMAScript</span> language standard and is primarily used in the form of <span>client-side JavaScript</span>, implemented as part of a <span>web browser</span> in order to provide enhanced <span>user interfaces</span> and dynamic <span>websites</span>. This enables <span>programmatic</span> access to computational objects within a host environment.</p>

<p style="text-align: justify;">
	JavaScript's use in <span>applications</span> outside web pages - for example in <span>PDF</span>-documents, <span>site-specific browsers</span> and <span class="mw-redirect">desktop widgets</span> - is also significant. Newer and faster Javascript VMs and frameworks built upon them (particularly <span>Node.js</span>) have also increased the popularity of Javascript for server-side web apps.</p>

<p style="text-align: justify;">
	JavaScript uses syntax influenced by that of <span>C</span>. JavaScript copies many names and naming conventions from <span>Java</span>, but the two languages are otherwise unrelated and have very different semantics. The key design principles within JavaScript are taken from the <span>Self</span> and <span>Scheme</span> programming languages.<sup style="display: none;" class="reference" id="cite_ref-8"><span><span>[</span>9<span>]</span></span></sup></p>

<h2 style="text-align: justify;">
	<span class="mw-headline" id="History">History</span></h2>
<p style="text-align: justify;">
	JavaScript was originally developed by <span>Brendan Eich</span> of Netscape under the name <i>Mocha</i>, which was later renamed to <i>LiveScript</i>, and finally to JavaScript.<sup style="display: none;" class="reference" id="cite_ref-10"><span><span>[</span>11<span>]</span></span></sup><sup style="display: none;" class="reference" id="cite_ref-computerworld_11-0"><span><span>[</span>12<span>]</span></span></sup> LiveScript was the official name for the language when it first shipped in beta releases of Netscape Navigator 2.0 in September 1995, but it was renamed JavaScript in a joint announcement with Sun Microsystems on December 4, 1995 <sup style="display: none;" class="reference" id="cite_ref-12"><span><span>[</span>13<span>]</span></span></sup> when it was deployed in the Netscape browser version 2.0B3. <sup style="display: none;" class="reference" id="cite_ref-techvision_13-0"><span><span>[</span>14<span>]</span></span></sup></p>

<p style="text-align: justify;">
	The change of name from LiveScript to JavaScript roughly coincided with Netscape adding support for Java technology in its <span>Netscape Navigator</span> <span>web browser</span>. The final choice of name caused confusion, giving the impression that the language was a spin-off of the <span class="mw-redirect">Java programming language</span>, and the choice has been characterized by many as a marketing ploy by Netscape to give JavaScript the cachet of what was then the hot new web-programming language. <sup style="display: none;" class="reference" id="cite_ref-14"><span><span>[</span>15<span>]</span></span></sup> <sup style="display: none;" class="reference" id="cite_ref-15"><span><span>[</span>16<span>]</span></span></sup> It has also been claimed that the language's name is the result of a co-marketing deal between <span>Netscape</span> and <span>Sun</span>, in exchange for Netscape bundling Sun's Java runtime with their then-dominant <span>browser</span>.<sup class="Template-Fact" style="display: none;">[<i><span>citation needed</span></i>]</sup></p>

<p style="text-align: justify;">
	JavaScript very quickly gained widespread success as a client-side scripting language for web pages. As a consequence, <span>Microsoft</span> developed a compatible dialect of the language, naming it <span>JScript</span> to avoid trademark issues. JScript added new date methods to fix the <span>Y2K</span>-problematic methods in JavaScript, which were based on Java's <code><span class="external text" rel="nofollow">java.util.Date</span></code> class.<sup style="display: none;" class="reference" id="cite_ref-popularity_16-0"><span><span>[</span>17<span>]</span></span></sup> JScript was included in <span>Internet Explorer</span> 3.0, released in August 1996. The dialects are perceived to be so similar that the terms "JavaScript" and "JScript" are often used interchangeably. Microsoft, however, notes dozens of ways in which JScript is not ECMA-compliant.<sup style="display: none;" class="reference" id="cite_ref-JScript_Non-ECMA_17-0"><span><span>[</span>18<span>]</span></span></sup></p>

<p style="text-align: justify;">
	In November, 1996 Netscape announced that it had submitted JavaScript to <span>Ecma International</span> for consideration as an industry standard, and subsequent work resulted in the standardized version named <span>ECMAScript</span>.<sup style="display: none;" class="reference" id="cite_ref-18"><span><span>[</span>19<span>]</span></span></sup></p>
<p style="text-align: justify;">
	JavaScript has become one of the most popular programming languages on the web. Initially, however, many professional programmers denigrated the language because its target audience was web authors and other such "amateurs", among other reasons.<sup style="display: none;" class="reference" id="cite_ref-19"><span><span>[</span>20<span>]</span></span></sup> The advent of <span>Ajax</span> returned JavaScript to the spotlight and brought more professional programming attention. The result was a proliferation of comprehensive <span>frameworks and libraries</span>, improved JavaScript programming practices, and increased usage of JavaScript outside of web browsers, as seen by the proliferation of <span>server-side JavaScript</span> platforms.</p>

<p style="text-align: justify;">
	In January 2009 the <span>CommonJS</span> project was founded with the goal of specifying a common standard library mainly for JavaScript development outside the browser.<sup style="display: none;" class="reference" id="cite_ref-20"><span><span>[</span>21<span>]</span></span></sup></p>
<h2 style="text-align: justify;">
	<span class="mw-headline" id="Trademark">Trademark</span></h2>
<p style="text-align: justify;">
	"JavaScript" is a <span>trademark</span> of <span>Oracle Corporation</span>. It is used under license for technology invented and implemented by Netscape Communications and current entities such as the <span>Mozilla Foundation</span>.<sup style="display: none;" class="reference" id="cite_ref-21"><span><span>[</span>22<span>]</span></span></sup></p>

<h2 style="text-align: justify;">
	<span class="mw-headline" id="Features">Features</span></h2>
<p style="text-align: justify;">
	The following features are common to all conforming ECMAScript implementations, unless explicitly specified otherwise.</p>
<h3 style="text-align: justify;">
	<span class="mw-headline" id="Imperative_and_structured">Imperative and structured</span></h3>
<p style="text-align: justify;">
	JavaScript supports all the <span>structured programming</span> syntax in <span class="mw-redirect">C</span> (e.g., <code>if</code> statements, <code>while</code> loops, <code>switch</code> statements, etc.). One partial exception is <span class="mw-redirect">scoping</span>: C-style block-level scoping is not supported (instead, JavaScript has function-level scoping). JavaScript 1.7, however, supports block-level scoping with the <code>let</code> keyword. Like C, JavaScript makes a distinction between <span>expressions</span> and <span>statements</span>. One syntactic difference from C is <span>automatic semicolon insertion</span>, in which the semicolons that terminate statements can be omitted.<sup style="display: none;" class="reference" id="cite_ref-FOOTNOTEFlanagan200616_22-0"><span><span>[</span>23<span>]</span></span></sup></p>

<h3 style="text-align: justify;">
	<span class="mw-headline" id="Dynamic">Dynamic</span></h3>
<dl>
	<dt style="text-align: justify;">
		dynamic typing</dt>
	<dd style="text-align: justify;">
		As in most scripting languages, <span>types</span> are associated with <span>values</span>, not with <span>variables</span>. For example, a variable <code>x</code> could be bound to a number, then later rebound to a <span>string</span>. JavaScript supports various ways to test the type of an object, including <span>duck typing</span>.<sup style="display: none;" class="reference" id="cite_ref-FOOTNOTEFlanagan2006176.E2.80.93178_23-0"><span><span>[</span>24<span>]</span></span></sup></dd>

	<dt style="text-align: justify;">
		object based</dt>
	<dd style="text-align: justify;">
		JavaScript is almost entirely <span>object-based</span>. JavaScript <span>objects</span> are <span>associative arrays</span>, augmented with prototypes (see below). Object property names are string keys: <code>obj.x&nbsp;=&nbsp;10</code> and <code>obj["x"]&nbsp;=&nbsp;10</code> are equivalent, the dot notation being <span>syntactic sugar</span>. Properties and their values can be added, changed, or deleted at run-time. Most properties of an object (and those on its prototype inheritance chain) can be enumerated using a <code>for...in</code> loop. JavaScript has a small number of built-in objects such as <code>Function</code> and <code>Date</code>.</dd>

	<dt style="text-align: justify;">
		run-time evaluation</dt>
	<dd style="text-align: justify;">
		JavaScript includes an <span>eval</span> function that can execute statements provided as strings at run-time.</dd>
</dl>
<h3 style="text-align: justify;">
	<span class="mw-headline" id="Functional">Functional</span></h3>

<dl>
	<dt style="text-align: justify;">
		first-class functions</dt>
	<dd style="text-align: justify;">
		<span>Functions</span> are <span>first-class</span>; they are objects themselves. As such, they have properties and methods, such as <code>length</code> and <code>call()</code>;<sup style="display: none;" class="reference" id="cite_ref-FOOTNOTEFlanagan2006137.E2.80.93139_24-0"><span><span>[</span>25<span>]</span></span></sup> and they can be assigned to variables, passed as arguments, <code>return</code>ed by other functions, and manipulated like any other object.<sup style="display: none;" class="reference" id="cite_ref-FOOTNOTEFlanagan2006134_25-0"><span><span>[</span>26<span>]</span></span></sup> Any reference to a function allows it to be invoked using the <code>()</code> operator.<sup style="display: none;" class="reference" id="cite_ref-FOOTNOTEFlanagan200681_26-0"><span><span>[</span>27<span>]</span></span></sup></dd>

	<dt style="text-align: justify;">
		nested functions</dt>
	<dd style="text-align: justify;">
		'Inner' or 'nested' functions are functions defined within another function. They are created each time the outer function is invoked. In addition to that, the <span>scope</span> of the outer function, including any constants, local variables and argument values, become part of the internal state of each inner function object, even after execution of the outer function concludes.<sup style="display: none;" class="reference" id="cite_ref-FOOTNOTEFlanagan2006141_27-0"><span><span>[</span>28<span>]</span></span></sup></dd>

	<dt style="text-align: justify;">
		closures</dt>
	<dd style="text-align: justify;">
		JavaScript allows nested functions to be created, with the <span class="mw-redirect">lexical scope</span> in force at their definition, and has a <code>()</code> operator to invoke them now or later. This combination of code that can be executed outside the scope in which it is defined, with its own scope to use during that execution, is called a <span>closure</span> in computer science.<sup style="display: none;" class="reference" id="cite_ref-FOOTNOTEFlanagan2006144_28-0"><span><span>[</span>29<span>]</span></span></sup></dd>

</dl>
<h3 style="text-align: justify;">
	<span class="mw-headline" id="Prototype-based">Prototype-based</span></h3>
<dl>
	<dt style="text-align: justify;">
		prototypes</dt>
	<dd style="text-align: justify;">
		JavaScript uses <span>prototypes</span> instead of <span class="mw-redirect">classes</span> for <span class="mw-redirect">inheritance</span>. It is possible to simulate many class-based features with prototypes in JavaScript.</dd>

	<dt style="text-align: justify;">
		functions as object constructors</dt>
	<dd style="text-align: justify;">
		Functions double as object constructors along with their typical role. Prefixing a function call with <code>new</code> creates a new object and calls that function with its local <code>this</code> keyword bound to that object for that invocation. The constructor's <code>prototype</code> property determines the object used for the new object's internal prototype. JavaScript's built-in constructors, such as <code>Array</code>, also have prototypes that can be modified.</dd>

	<dt style="text-align: justify;">
		functions as methods</dt>
	<dd style="text-align: justify;">
		Unlike many object-oriented languages, there is no distinction between a function definition and a <span class="mw-redirect">method</span> definition. Rather, the distinction occurs during function calling; a function can be called as a method. When a function is called as a method of an object, the function's local <code>this</code> keyword is bound to that object for that invocation.</dd>

</dl>
<h3 style="text-align: justify;">
	<span class="mw-headline" id="Miscellaneous">Miscellaneous</span></h3>
<dl>
	<dt style="text-align: justify;">
		run- time environment</dt>
	<dd style="text-align: justify;">
		JavaScript typically relies on a run-time environment (e.g. in a <span>web browser</span>) to provide objects and methods by which scripts can interact with "the outside world". In fact, it relies on the environment to provide the ability to include/import scripts (e.g. <span>HTML</span> &lt;script&gt; elements). (This is not a language feature per se, but it is common in most JavaScript implementations.)</dd>

	<dt style="text-align: justify;">
		variadic functions</dt>
	<dd style="text-align: justify;">
		An indefinite number of parameters can be passed to a function. The function can access them through <span class="mw-redirect">formal parameters</span> and also through the local <code>arguments</code> object.</dd>
	<dt style="text-align: justify;">

		array and object literals</dt>
	<dd style="text-align: justify;">
		Like many scripting languages, arrays and objects (associative arrays in other languages) can each be created with a succinct shortcut syntax. In fact, these <span class="mw-redirect">literals</span> form the basis of the <span>JSON</span> data format.</dd>
	<dt style="text-align: justify;">
		regular expressions</dt>

	<dd style="text-align: justify;">
		JavaScript also supports <span>regular expressions</span> in a manner similar to <span>Perl</span>, which provide a concise and powerful syntax for text manipulation that is more sophisticated than the built-in string functions.</dd>
</dl>
<h3 style="text-align: justify;">
	<span class="mw-headline" id="Vendor-specific_extensions">Vendor-specific extensions</span></h3>
<p style="text-align: justify;">
	JavaScript is officially managed by <span>Mozilla Foundation</span>, and new language features are added periodically. However, only some non-Mozilla <span>JavaScript engines</span> support these new features:</p>

<ul>
	<li style="text-align: justify;">
		property getter and setter functions (also supported by WebKit, Opera,<sup style="display: none;" class="reference" id="cite_ref-29"><span><span>[</span>30<span>]</span></span></sup> ActionScript, and Rhino)<sup style="display: none;" class="reference" id="cite_ref-30"><span><span>[</span>31<span>]</span></span></sup></li>
	<li style="text-align: justify;">
		conditional <code>catch</code> clauses</li>

	<li style="text-align: justify;">
		iterator protocol adopted from <span>Python</span></li>
	<li style="text-align: justify;">
		shallow <span class="mw-redirect">generators</span>/<span>coroutines</span> also adopted from Python</li>
	<li style="text-align: justify;">

		<span>array comprehensions</span> and generator expressions also adopted from Python</li>
	<li style="text-align: justify;">
		proper block scope via the new <code>let</code> keyword</li>
	<li style="text-align: justify;">
		array and object destructuring (limited form of <span>pattern matching</span>)</li>

	<li style="text-align: justify;">
		concise function expressions (<code>function(args) expr</code>)</li>
	<li style="text-align: justify;">
		<span>ECMAScript for XML</span> (E4X), an extension that adds native XML support to ECMAScript</li>
</ul>
<h2 style="text-align: justify;">
	<span class="mw-headline" id="Syntax_and_semantics">Syntax and semantics</span></h2>

<div class="rellink relarticle mainarticle" style="text-align: justify;">
	Main article: <span>JavaScript syntax</span></div>
<p style="text-align: justify;">
	As of 2009, the latest version of the language is JavaScript 1.8.1. It is a superset of <span>ECMAScript</span> (ECMA-262) Edition 3. Extensions to the language, including partial <span class="mw-redirect">E4X</span> (ECMA-357) support and experimental features considered for inclusion into future ECMAScript editions, are documented here.<sup style="display: none;" class="reference" id="cite_ref-31"><span><span>[</span>32<span>]</span></span></sup></p>

<h3 style="text-align: justify;">
	<span class="mw-headline" id="Simple_examples">Simple examples</span></h3>
<p style="text-align: justify;">
	A simple <span>recursive</span> function:</p>
<div class="mw-geshi" dir="ltr" style="text-align: left;">
	<div class="javascript source-javascript" style="font-family: monospace;">
		<pre class="de1" style="text-align: justify;"><span class="kw2">function</span> factorial<span class="br0">(</span>n<span class="br0">)</span> <span class="br0">{</span>

    <span class="kw1">if</span> <span class="br0">(</span>n <span class="sy0">===</span> 0<span class="br0">)</span> <span class="br0">{</span>
        <span class="kw1">return</span> <span class="nu0">1</span><span class="sy0">;</span>

    <span class="br0">}</span>
    <span class="kw1">return</span> n <span class="sy0">*</span> factorial<span class="br0">(</span>n <span class="sy0">-</span> 1<span class="br0">)</span><span class="sy0">;</span> 


<span class="br0">}</span>
</pre>
	</div>
</div>
<p style="text-align: justify;">
	A simple personalised <span>greeting</span> script:</p>
<div class="mw-geshi" dir="ltr" style="text-align: left;">
	<div class="javascript source-javascript" style="font-family: monospace;">
		<pre class="de1" style="text-align: justify;">
<span class="kw2">var</span> <span class="kw3">name</span> <span class="sy0">=</span> <span class="kw3">prompt</span><span class="br0">(</span><span class="st0">"What is your name?"</span><span class="br0">)</span><span class="sy0">;</span>
<span class="kw3">alert</span><span class="br0">(</span><span class="st0">"Welcome "</span><span class="sy0">+</span><span class="kw3">name</span><span class="br0">)</span><span class="sy0">;</span>

</pre>
	</div>
</div>
<p style="text-align: justify;">
	<span>Anonymous function</span> (or lambda) syntax:</p>
<div class="mw-geshi" dir="ltr" style="text-align: left;">
	<div class="javascript source-javascript" style="font-family: monospace;">
		<pre class="de1" style="text-align: justify;"><span class="kw2">function</span> add <span class="br0">(</span>i<span class="sy0">,</span> j<span class="br0">)</span> <span class="br0">{</span>

    <span class="kw2">var</span> add_pri <span class="sy0">=</span> <span class="kw2">function</span> <span class="br0">(</span>x<span class="sy0">,</span> y<span class="br0">)</span> <span class="br0">{</span>

        <span class="kw1">return</span> x <span class="sy0">+</span> y<span class="sy0">;</span>
    <span class="br0">}</span><span class="sy0">;</span>
 
    <span class="kw1">return</span> add_pri<span class="br0">(</span>i<span class="sy0">,</span> j<span class="br0">)</span><span class="sy0">;</span>

<span class="br0">}</span>
</pre>
	</div>
</div>
<p style="text-align: justify;">
	<span class="mw-redirect">Closures</span>:</p>
<div class="mw-geshi" dir="ltr" style="text-align: left;">
	<div class="javascript source-javascript" style="font-family: monospace;">
		<pre class="de1" style="text-align: justify;">
<span class="kw2">function</span> showclosure <span class="br0">(</span><span class="br0">)</span> <span class="br0">{</span>

    <span class="kw2">var</span> inc <span class="sy0">=</span> makeinc<span class="br0">(</span>1<span class="br0">)</span><span class="sy0">;</span>

 
    inc<span class="br0">(</span><span class="br0">)</span><span class="sy0">;</span> <span class="co1">// 1</span>

    inc<span class="br0">(</span><span class="br0">)</span><span class="sy0">;</span> <span class="co1">// 2</span>

    inc<span class="br0">(</span><span class="br0">)</span><span class="sy0">;</span> <span class="co1">// 3</span>
<span class="br0">}</span>

 
<span class="kw2">function</span> makeinc <span class="br0">(</span>initialValue<span class="br0">)</span> <span class="br0">{</span>

    <span class="kw2">var</span> count <span class="sy0">=</span> initialValue<span class="sy0">;</span>

 
    <span class="kw1">return</span> <span class="kw2">function</span> <span class="br0">(</span><span class="br0">)</span> <span class="br0">{</span>

        <span class="kw1">return</span> count<span class="sy0">++;</span>
    <span class="br0">}</span><span class="sy0">;</span>

<span class="br0">}</span>
</pre>
	</div>
</div>

<p style="text-align: justify;">
	<span>Variadic function</span> demonstration. This will alert with 1 then 2 then 3. <tt>arguments</tt> is a special <span>variable</span>.</p>
<div class="mw-geshi" dir="ltr" style="text-align: left;">
	<div class="javascript source-javascript" style="font-family: monospace;">
		<pre class="de1" style="text-align: justify;"><span class="kw2">function</span> unlimited_args <span class="br0">(</span><span class="br0">)</span> <span class="br0">{</span>

    <span class="kw1">for</span> <span class="br0">(</span><span class="kw2">var</span> i <span class="sy0">=</span> <span class="nu0">0</span><span class="sy0">;</span> i <span class="sy0">&lt;</span> arguments.<span class="me1">length</span><span class="sy0">;</span> i<span class="sy0">++</span><span class="br0">)</span> <span class="br0">{</span>

        <span class="kw3">alert</span><span class="br0">(</span>arguments<span class="br0">[</span>i<span class="br0">]</span><span class="br0">)</span><span class="sy0">;</span>
    <span class="br0">}</span>
<span class="br0">}</span>
 

unlimited_args<span class="br0">(</span>1<span class="sy0">,</span> 2<span class="sy0">,</span> 3<span class="br0">)</span><span class="sy0">;</span>

</pre>
	</div>
</div>

<h3 style="text-align: justify;">
	<span class="mw-headline" id="More_advanced_example">More advanced example</span></h3>
<p style="text-align: justify;">
	This sample code showcases various JavaScript features.</p>
<div class="mw-geshi" dir="ltr" style="text-align: left;">
	<div class="javascript source-javascript" style="font-family: monospace;">
		<pre class="de1" style="text-align: justify;"><span class="coMULTI">/* Finds the lowest common multiple of two numbers */</span>
<span class="kw2">function</span> LCMCalculator <span class="br0">(</span>x<span class="sy0">,</span> y<span class="br0">)</span> <span class="br0">{</span> <span class="co1">// constructor function</span>

    <span class="kw2">var</span> checkInt <span class="sy0">=</span> <span class="kw2">function</span> <span class="br0">(</span>x<span class="br0">)</span> <span class="br0">{</span> <span class="co1">// inner function</span>

        <span class="kw1">if</span> <span class="br0">(</span>x <span class="sy0">%</span> 1 <span class="sy0">!==</span> 0<span class="br0">)</span> <span class="br0">{</span>
            <span class="kw1">throw</span> <span class="kw2">new</span> TypeError<span class="br0">(</span>x <span class="sy0">+</span> <span class="st0">"is not an integer"</span><span class="br0">)</span><span class="sy0">;</span> <span class="co1">// exception throwing</span>

        <span class="br0">}</span>
        <span class="kw1">return</span> x<span class="sy0">;</span>
    <span class="br0">}</span><span class="sy0">;</span>
    <span class="kw1">this</span>.<span class="me1">a</span> <span class="sy0">=</span> checkInt<span class="br0">(</span>x<span class="br0">)</span>

    <span class="co1">// ^ semicolons are optional (but beware since this may cause consecutive lines to be</span>
    <span class="co1">//erroneously treated as a single statement)</span>
    <span class="kw1">this</span>.<span class="me1">b</span> <span class="sy0">=</span> checkInt<span class="br0">(</span>y<span class="br0">)</span><span class="sy0">;</span>

<span class="br0">}</span>
<span class="co1">// The prototype of object instances created by a constructor is </span>
<span class="co1">// that constructor's "prototype" property.</span>
LCMCalculator.<span class="me1">prototype</span> <span class="sy0">=</span> <span class="br0">{</span> <span class="co1">// object literal</span>

    constructor <span class="sy0">:</span> LCMCalculator<span class="sy0">,</span> <span class="co1">// when reassigning a prototype, set the constructor property appropriately</span>
    gcd <span class="sy0">:</span> <span class="kw2">function</span> <span class="br0">(</span><span class="br0">)</span> <span class="br0">{</span> <span class="co1">// method that calculates the greatest common divisor</span>

        <span class="co1">// Euclidean algorithm:</span>
        <span class="kw2">var</span> a <span class="sy0">=</span> Math.<span class="me1">abs</span><span class="br0">(</span><span class="kw1">this</span>.<span class="me1">a</span><span class="br0">)</span><span class="sy0">,</span> b <span class="sy0">=</span> Math.<span class="me1">abs</span><span class="br0">(</span><span class="kw1">this</span>.<span class="me1">b</span><span class="br0">)</span><span class="sy0">,</span> t<span class="sy0">;</span>

        <span class="kw1">if</span> <span class="br0">(</span>a <span class="sy0">&lt;</span> b<span class="br0">)</span> <span class="br0">{</span>
            <span class="co1">// swap variables</span>
            t <span class="sy0">=</span> b<span class="sy0">;</span> 
            b <span class="sy0">=</span> a<span class="sy0">;</span> 
            a <span class="sy0">=</span> t<span class="sy0">;</span> 
        <span class="br0">}</span>

        <span class="kw1">while</span> <span class="br0">(</span>b <span class="sy0">!==</span> 0<span class="br0">)</span> <span class="br0">{</span>
            t <span class="sy0">=</span> b<span class="sy0">;</span>

            b <span class="sy0">=</span> a <span class="sy0">%</span> b<span class="sy0">;</span>
            a <span class="sy0">=</span> t<span class="sy0">;</span>

        <span class="br0">}</span>
        <span class="co1">// Only need to calculate gcd once, so "redefine" this method.</span>
        <span class="co1">// (Actually not redefinition - it's defined on the instance itself,</span>
        <span class="co1">// so that this.gcd refers to this "redefinition" instead of LCMCalculator.prototype.gcd.)</span>

        <span class="co1">// Also, 'gcd' == "gcd", this['gcd'] == this.gcd</span>
        <span class="kw1">this</span><span class="br0">[</span><span class="st0">'gcd'</span><span class="br0">]</span> <span class="sy0">=</span> <span class="kw2">function</span> <span class="br0">(</span><span class="br0">)</span> <span class="br0">{</span> 
            <span class="kw1">return</span> a<span class="sy0">;</span> 
        <span class="br0">}</span><span class="sy0">;</span>

        <span class="kw1">return</span> a<span class="sy0">;</span>
    <span class="br0">}</span><span class="sy0">,</span>
    <span class="st0">"lcm"</span> <span class="coMULTI">/* can use strings here */</span><span class="sy0">:</span> <span class="kw2">function</span> <span class="br0">(</span><span class="br0">)</span> <span class="br0">{</span>

        <span class="co1">// Variable names don't collide with object properties, e.g. |lcm| is not |this.lcm|.</span>
        <span class="co1">// not using |this.a * this.b| to avoid FP precision issues </span>
        <span class="kw2">var</span> lcm <span class="sy0">=</span> <span class="kw1">this</span>.<span class="me1">a</span> <span class="sy0">/</span> <span class="kw1">this</span>.<span class="me1">gcd</span><span class="br0">(</span><span class="br0">)</span> <span class="sy0">*</span> <span class="kw1">this</span>.<span class="me1">b</span><span class="sy0">;</span> 
        <span class="co1">// Only need to calculate lcm once, so "redefine" this method.</span>

        <span class="kw1">this</span>.<span class="me1">lcm</span> <span class="sy0">=</span> <span class="kw2">function</span> <span class="br0">(</span><span class="br0">)</span> <span class="br0">{</span> 
            <span class="kw1">return</span> lcm<span class="sy0">;</span> 
        <span class="br0">}</span><span class="sy0">;</span>

 
        <span class="kw1">return</span> lcm<span class="sy0">;</span>
    <span class="br0">}</span><span class="sy0">,</span>
    toString <span class="sy0">:</span> <span class="kw2">function</span> <span class="br0">(</span><span class="br0">)</span> <span class="br0">{</span>

        <span class="kw1">return</span> <span class="st0">"LCMCalculator: a = "</span> <span class="sy0">+</span> <span class="kw1">this</span>.<span class="me1">a</span> <span class="sy0">+</span> <span class="st0">", b = "</span> <span class="sy0">+</span> <span class="kw1">this</span>.<span class="me1">b</span><span class="sy0">;</span>

    <span class="br0">}</span>
<span class="br0">}</span><span class="sy0">;</span>
 
<span class="co1">// Note: Array's map() and forEach() are predefined in JavaScript 1.6.</span>
<span class="co1">// They are currently not available in the JScript engine built into</span>
<span class="co1">// Microsoft Internet Explorer, but are implemented in Firefox, Chrome, etc. </span>
<span class="co1">// They are used here to demonstrate JavaScript's inherent functional nature.</span>

 
<span class="br0">[</span><span class="br0">[</span>25<span class="sy0">,</span> 55<span class="br0">]</span><span class="sy0">,</span><span class="br0">[</span>21<span class="sy0">,</span> 56<span class="br0">]</span><span class="sy0">,</span><span class="br0">[</span>22<span class="sy0">,</span> 58<span class="br0">]</span><span class="sy0">,</span><span class="br0">[</span>28<span class="sy0">,</span> 56<span class="br0">]</span><span class="br0">]</span>.<span class="me1">map</span><span class="br0">(</span><span class="kw2">function</span> <span class="br0">(</span>pair<span class="br0">)</span> <span class="br0">{</span> <span class="co1">// array literal + mapping function</span>

    <span class="kw1">return</span> <span class="kw2">new</span> LCMCalculator<span class="br0">(</span>pair<span class="br0">[</span>0<span class="br0">]</span><span class="sy0">,</span> pair<span class="br0">[</span>1<span class="br0">]</span><span class="br0">)</span><span class="sy0">;</span>

<span class="br0">}</span><span class="br0">)</span>.<span class="me1">sort</span><span class="br0">(</span><span class="kw2">function</span> <span class="br0">(</span>a<span class="sy0">,</span> b<span class="br0">)</span> <span class="br0">{</span> <span class="co1">// sort with this comparative function</span>

    <span class="kw1">return</span> a.<span class="me1">lcm</span><span class="br0">(</span><span class="br0">)</span> <span class="sy0">-</span> b.<span class="me1">lcm</span><span class="br0">(</span><span class="br0">)</span><span class="sy0">;</span>

<span class="br0">}</span><span class="br0">)</span>.<span class="me1">forEach</span><span class="br0">(</span><span class="kw2">function</span> <span class="br0">(</span>obj<span class="br0">)</span> <span class="br0">{</span>

    <span class="coMULTI">/* Note: print() is a JS builtin function available in Mozilla's js CLI;
     * It is functionally equivalent to Java's System.out.println().
     * Within a web browser, print() is a very different function 
     * (opens the "Print Page" dialog),
     * so use something like document.write() or alert() instead.
     */</span>

    <span class="co1">// print       (obj + ", gcd = " + obj.gcd() + ", lcm = " + obj.lcm());</span>

    <span class="co1">// alert       (obj + ", gcd = " + obj.gcd() + ", lcm = " + obj.lcm());</span>

    document.<span class="kw1">write</span><span class="br0">(</span>obj <span class="sy0">+</span> <span class="st0">", gcd = "</span> <span class="sy0">+</span> obj.<span class="me1">gcd</span><span class="br0">(</span><span class="br0">)</span> <span class="sy0">+</span> <span class="st0">", lcm = "</span> <span class="sy0">+</span> obj.<span class="me1">lcm</span><span class="br0">(</span><span class="br0">)</span> <span class="sy0">+</span> <span class="st0">"&lt;br&gt;"</span><span class="br0">)</span><span class="sy0">;</span>

<span class="br0">}</span><span class="br0">)</span><span class="sy0">;</span>
</pre>
	</div>
</div>
<p style="text-align: justify;">
	The following output should be displayed in the browser window.</p>
<pre style="text-align: justify;">LCMCalculator: a = 28, b = 56, gcd = 28, lcm = 56
LCMCalculator: a = 21, b = 56, gcd = 7, lcm = 168
LCMCalculator: a = 25, b = 55, gcd = 5, lcm = 275
LCMCalculator: a = 22, b = 58, gcd = 2, lcm = 638
</pre>
<p style="text-align: justify;">

	If Internet Explorer is used, the example will generate an error. Hence the example illustrates the point that the JScript interpreter in Internet Explorer executes code differently from the JavaScript and ECMAScript interpreters in other browsers. (See comments in the source code for details on the relevant differences for this example.)</p>
<h2 style="text-align: justify;">
	<span class="mw-headline" id="Use_in_web_pages">Use in web pages</span></h2>
<div class="rellink relarticle mainarticle" style="text-align: justify;">
	Main article: <span>Client-side JavaScript</span></div>
<div class="rellink boilerplate seealso" style="text-align: justify;">
	See also: <span>JavaScript engine</span>&nbsp;and <span>Ajax (programming)</span></div>

<p style="text-align: justify;">
	The primary use of JavaScript is to write functions that are embedded in or included from <span>HTML</span> pages and that interact with the <span>Document Object Model</span> (DOM) of the page. Some simple examples of this usage are:</p>
<ul>
	<li style="text-align: justify;">
		Opening or <span>popping up</span> a new window with programmatic control over the size, position, and attributes of the new window (e.g. whether the menus, toolbars, etc. are visible).</li>

	<li style="text-align: justify;">
		<span>Validating</span> input values of a <span>web form</span> to make sure that they are acceptable before being submitted to the server.</li>
	<li style="text-align: justify;">
		Changing images as the mouse cursor <span>moves over them</span>: This effect is often used to draw the user's attention to important links displayed as graphical elements.</li>

</ul>
<p style="text-align: justify;">
	Because JavaScript code can run locally in a user's browser (rather than on a remote server), the browser can respond to user actions quickly, making an application more responsive. Furthermore, JavaScript code can detect user actions which HTML alone cannot, such as individual keystrokes. Applications such as <span>Gmail</span> take advantage of this: much of the user-interface logic is written in JavaScript, and JavaScript dispatches requests for information (such as the content of an e-mail message) to the server. The wider trend of <span class="mw-redirect">Ajax programming</span> similarly exploits this strength.</p>
<p style="text-align: justify;">
	A <span>JavaScript engine</span> (also known as <i>JavaScript interpreter</i> or <i>JavaScript implementation</i>) is an <span>interpreter</span> that interprets JavaScript <span>source code</span> and executes the <span>script</span> accordingly. The first JavaScript engine was created by <span>Brendan Eich</span> at <span class="mw-redirect">Netscape Communications Corporation</span>, for the <span>Netscape Navigator</span> <span>web browser</span>. The engine, code-named <span>SpiderMonkey</span>, is implemented in <span>C</span>. It has since been updated (in JavaScript 1.5) to conform to ECMA-262 Edition 3. The <span>Rhino</span> engine, created primarily by Norris Boyd (formerly of Netscape; now at Google) is a JavaScript implementation in <span>Java</span>. Rhino, like SpiderMonkey, is ECMA-262 Edition 3 compliant.</p>

<p style="text-align: justify;">
	A web browser is by far the most common host environment for JavaScript. Web browsers typically use the public <span>API</span> to create "host objects" responsible for reflecting the <span>DOM</span> into JavaScript. The <span>web server</span> is another common application of the engine. A <span>JavaScript webserver</span> would expose host objects representing an <span class="mw-redirect">HTTP</span> request and response objects, which a JavaScript program could then manipulate to dynamically generate web pages.</p>

<p style="text-align: justify;">
	Because JavaScript is the only language that the most popular browsers share support for, it has become a <span class="mw-redirect">target language</span> for many frameworks in other languages, even though JavaScript was never intended to be such a language.<sup style="display: none;" class="reference" id="cite_ref-computerworld_11-1"><span><span>[</span>12<span>]</span></span></sup> Despite the performance limitations inherent to its dynamic nature, the increasing speed of JavaScript engines has made the language a surprisingly feasible compilation target.</p>
<h3 style="text-align: justify;">
	<span class="mw-headline" id="Example_-_use_in_web_pages">Example - use in web pages</span></h3>
<p style="text-align: justify;">

	A minimal example of a standards-conforming web page containing JavaScript (using <span>HTML 4.01</span> syntax) would be the following:</p>
<div class="mw-geshi" dir="ltr" style="text-align: left;">
	<div class="html4strict source-html4strict" style="font-family: monospace;">
		<pre class="de1" style="text-align: justify;"><span class="sc0">&lt;!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN"</span>
<span class="sc0">"http://www.w3.org/TR/html4/strict.dtd"&gt;</span>
<span class="sc2">&lt;<span class="kw2">html</span>&gt;</span>

  <span class="sc2">&lt;<span class="kw2">head</span>&gt;&lt;<span class="kw2">title</span>&gt;</span>simple page<span class="sc2">&lt;<span class="sy0">/</span><span class="kw2">title</span>&gt;&lt;<span class="sy0">/</span><span class="kw2">head</span>&gt;</span>
  <span class="sc2">&lt;<span class="kw2">body</span>&gt;</span>
    <span class="sc2">&lt;<span class="kw2">script</span> <span class="kw3">type</span><span class="sy0">=</span><span class="st0">"text/javascript"</span>&gt;</span>

      document.write('Hello World!');
    <span class="sc2">&lt;<span class="sy0">/</span><span class="kw2">script</span>&gt;</span>
    <span class="sc2">&lt;<span class="kw2">noscript</span>&gt;</span>
<span class="sc2">&lt;<span class="kw2">p</span>&gt;</span>Your browser either does not support JavaScript, or you have JavaScript turned off.<span class="sc2">&lt;<span class="sy0">/</span><span class="kw2">p</span>&gt;</span>
    <span class="sc2">&lt;<span class="sy0">/</span><span class="kw2">noscript</span>&gt;</span>

  <span class="sc2">&lt;<span class="sy0">/</span><span class="kw2">body</span>&gt;</span>
<span class="sc2">&lt;<span class="sy0">/</span><span class="kw2">html</span>&gt;</span>
</pre>
	</div>
</div>
<h3 style="text-align: justify;">
	<span class="mw-headline" id="Compatibility_considerations">Compatibility considerations</span></h3>
<div class="rellink relarticle mainarticle" style="text-align: justify;">

	Main article: <span>Web interoperability</span></div>
<p style="text-align: justify;">
	Since JavaScript runs in widely varying environments, an important part of testing and debugging it is testing across browsers.</p>
<p style="text-align: justify;">
	The <span class="mw-redirect">DOM</span> interfaces for manipulating web pages are not part of the ECMAScript standard, or of JavaScript itself. Officially, they are defined by a separate standardization effort by the <span>W3C</span>; in practice, browser implementations differ from the standards and from each other, and not all browsers execute JavaScript.</p>

<p style="text-align: justify;">
	To deal with these differences, JavaScript authors can attempt to write standards-compliant code which will also be executed correctly by most browsers; failing that, they can write code that checks for the presence of certain browser features and behaves differently if they are not available.<sup style="display: none;" class="reference" id="cite_ref-32"><span><span>[</span>33<span>]</span></span></sup> In some cases, two browsers may both implement a feature but with different behavior, and authors may find it practical to detect what browser is running and change their script's behavior to match.<sup style="display: none;" class="reference" id="cite_ref-33"><span><span>[</span>34<span>]</span></span></sup><sup style="display: none;" class="reference" id="cite_ref-34"><span><span>[</span>35<span>]</span></span></sup> Programmers may also use libraries or toolkits which take browser differences into account.</p>

<p style="text-align: justify;">
	Furthermore, scripts may not work for some users. For example, a user may:</p>
<ul>
	<li style="text-align: justify;">
		use an old or rare browser with incomplete or unusual DOM support,</li>
	<li style="text-align: justify;">
		use a <span>PDA</span> or <span>mobile phone</span> browser which cannot execute JavaScript,</li>

	<li style="text-align: justify;">
		have JavaScript execution disabled as a security precaution,</li>
	<li style="text-align: justify;">
		use a speech browser due to, for example, a visual disability.</li>
</ul>
<p style="text-align: justify;">
	To support these users, web authors can try to create pages which <span>degrade gracefully</span> on user agents (browsers) which do not support the page's JavaScript. In particular, the page should remain usable albeit without the extra features that the JavaScript would have added. An alternative approach that many find preferable is first to author content using basic technologies that work in all browsers, then to enhance it for users with JavaScript enabled, testing for feature support before adding the enhancements. This is known as <span>progressive enhancement</span>.</p>

<h3 style="text-align: justify;">
	<span class="mw-headline" id="Accessibility">Accessibility</span></h3>
<div class="rellink relarticle mainarticle" style="text-align: justify;">
	Main article: <span>Web accessibility</span></div>
<p style="text-align: justify;">
	Assuming that the user has not disabled its execution, client-side web JavaScript should be written to enhance the experiences of visitors with visual or physical <span>disabilities</span>, and certainly should avoid denying information to these visitors.<sup style="display: none;" class="reference" id="cite_ref-FOOTNOTEFlanagan2006262.E2.80.93263_35-0"><span><span>[</span>36<span>]</span></span></sup></p>

<p style="text-align: justify;">
	<span>Screen readers</span>, used by the <span>blind and partially sighted</span>, can be JavaScript-aware and so may access and read the page DOM after the script has altered it. The HTML should be as concise, navigable and <span>semantically rich</span> as possible whether the scripts have run or not. JavaScript should not be totally reliant on <span>mouse</span>-specific events so as to deny its benefits to users who either cannot use a mouse or who choose to favor the <span class="mw-redirect">keyboard</span> for whatever reason. Equally, although <span>hyperlinks</span> and <span>webforms</span> can be navigated and operated from the keyboard, accessible JavaScript should not require keyboard <span>events</span> either. There are device-independent events such as <code>onfocus</code> and <code>onchange</code> that are preferable in most cases.<sup style="display: none;" class="reference" id="cite_ref-FOOTNOTEFlanagan2006262.E2.80.93263_35-1"><span><span>[</span>36<span>]</span></span></sup></p>

<p style="text-align: justify;">
	JavaScript should not be used in a way that is confusing or disorientating to any web user. For example, using script to alter or disable the normal functionality of the browser, such as by changing the way the back-button or the refresh event work, is usually best avoided. Equally, triggering events that the user may not be aware of reduces the user's sense of control as do unexpected scripted changes to the page content.<sup style="display: none;" class="reference" id="cite_ref-36"><span><span>[</span>37<span>]</span></span></sup></p>
<p style="text-align: justify;">
	Often the process of making a complex web page as accessible as possible becomes a <span>nontrivial</span> problem where issues become matters of debate and opinion, and where compromises are necessary in the end. However, user agents and <span>assistive technologies</span> are constantly evolving and new guidelines and relevant information are continually being published on the web.<sup style="display: none;" class="reference" id="cite_ref-FOOTNOTEFlanagan2006262.E2.80.93263_35-2"><span><span>[</span>36<span>]</span></span></sup></p>

<h3 style="text-align: justify;">
	<span class="mw-headline" id="Security">Security</span></h3>
<p style="text-align: justify;">
	JavaScript and the DOM provide the potential for malicious authors to deliver scripts to run on a client computer via the web. Browser authors contain this risk using two restrictions. First, scripts run in a <span>sandbox</span> in which they can only perform web-related actions, not general-purpose programming tasks like creating files. Second, scripts are constrained by the <span>same origin policy</span>: scripts from one web site do not have access to information such as usernames, passwords, or cookies sent to another site. Most JavaScript-related security bugs are breaches of either the same origin policy or the sandbox.</p>
<h4 style="text-align: justify;">
	<span class="mw-headline" id="Cross-site_vulnerabilities">Cross-site vulnerabilities</span></h4>

<div class="rellink relarticle mainarticle" style="text-align: justify;">
	Main articles: <span>Cross-site scripting</span> and <span>Cross-site request forgery</span></div>
<p style="text-align: justify;">
	A common JavaScript-related security problem is <span>cross-site scripting</span>, or XSS, a violation of the <span>same-origin policy</span>. XSS vulnerabilities occur when an attacker is able to cause a target web site, such as an online banking website, to include a malicious script in the webpage presented to a victim. The script in this example can then access the banking application with the privileges of the victim, potentially disclosing secret information or transferring money without the victim's authorization. A solution to XSS vulnerabilities is to use <i>HTML escaping</i> whenever displaying untrusted data.</p>

<p style="text-align: justify;">
	Some browsers include partial protection against <i>reflected</i> XSS attacks, in which the attacker provides a URL including malicious script. However, even users of those browsers are vulnerable to other XSS attacks, such as those where the malicious code is stored in a database. Only correct design of Web applications on the server side can fully prevent XSS.</p>
<p style="text-align: justify;">
	XSS vulnerabilities can also occur because of implementation mistakes by browser authors.<sup style="display: none;" class="reference" id="cite_ref-37"><span><span>[</span>38<span>]</span></span></sup></p>
<p style="text-align: justify;">
	Another cross-site vulnerability is <span>cross-site request forgery</span> or CSRF. In CSRF, code on an attacker's site tricks the victim's browser into taking actions the user didn't intend at a target site (like transferring money at a bank). It works because, if the target site relies only on cookies to authenticate requests, then requests initiated by code on the attacker's site will carry the same legitimate login credentials as requests initiated by the user. In general, the solution to CSRF is to require an authentication value in a hidden form field, and not only in the cookies, to authenticate any request that might have lasting effects. Checking the HTTP Referrer header can also help.</p>

<p style="text-align: justify;">
	"JavaScript hijacking" is a type of CSRF attack in which a &lt;script&gt; tag on an attacker's site exploits a page on the victim's site that returns private information such as JSON or JavaScript. Possible solutions include requiring an authentication token in the POST and GET parameters for any response that returns private <span>JSON</span> (even if it has no side effects); using POST and never GET for requests that return private JSON; and modifying the response so that it can't be used via a &lt;script&gt; tag (by, for example, wrapping the JSON in a JavaScript comment).</p>

<h4 style="text-align: justify;">
	<span class="mw-headline" id="Misplaced_trust_in_the_client">Misplaced trust in the client</span></h4>
<p style="text-align: justify;">
	Client-server applications, whether they involve JavaScript or not, must recognize that untrusted clients may be under the control of attackers. Thus any secret embedded in JavaScript could be extracted by a determined adversary, and the application author cannot assume that his JavaScript runs as intended, or at all. Some implications:</p>
<ul>
	<li style="text-align: justify;">
		Web site authors cannot perfectly conceal how their JavaScript operates, because the code is sent to the client, and <span>obfuscated code</span> can be reverse-engineered.</li>

	<li style="text-align: justify;">
		JavaScript form validation only provides convenience for users, not security. If a site verifies that the user agreed to its terms of service, or filters invalid characters out of fields that should only contain numbers, it must do so on the server, not only the client.</li>
	<li style="text-align: justify;">
		Scripts can be selectively disabled, so JavaScript can't be relied on to prevent operations such as "save image".<sup style="display: none;" class="reference" id="cite_ref-38"><span><span>[</span>39<span>]</span></span></sup></li>
	<li style="text-align: justify;">

		It would be extremely bad practice to embed a password in JavaScript (where it can be extracted by an attacker), then have JavaScript verify a user's password and pass "password_ok=1" back to the server (since the "password_ok=1" response is easy to forge).<sup style="display: none;" class="reference" id="cite_ref-39"><span><span>[</span>40<span>]</span></span></sup></li>
</ul>
<h4 style="text-align: justify;">
	<span class="mw-headline" id="Browser_and_plugin_coding_errors">Browser and plugin coding errors</span></h4>

<p style="text-align: justify;">
	JavaScript provides an interface to a wide range of browser capabilities, some of which may have flaws such as <span>buffer overflows</span>. These flaws can allow attackers to write scripts which would run any code they wish on the user's system.</p>
<p style="text-align: justify;">
	These flaws have affected major browsers including Firefox,<sup style="display: none;" class="reference" id="cite_ref-40"><span><span>[</span>41<span>]</span></span></sup> Internet Explorer,<sup style="display: none;" class="reference" id="cite_ref-41"><span><span>[</span>42<span>]</span></span></sup> and Safari.<sup style="display: none;" class="reference" id="cite_ref-42"><span><span>[</span>43<span>]</span></span></sup></p>

<p style="text-align: justify;">
	Plugins, such as video players, <span>Adobe Flash</span>, and the wide range of <span>ActiveX</span> controls enabled by default in Microsoft Internet Explorer, may also have flaws exploitable via JavaScript, and such flaws have been exploited in the past.<sup style="display: none;" class="reference" id="cite_ref-43"><span><span>[</span>44<span>]</span></span></sup><sup style="display: none;" class="reference" id="cite_ref-44"><span><span>[</span>45<span>]</span></span></sup></p>
<p style="text-align: justify;">
	In Windows Vista, Microsoft has attempted to contain the risks of bugs such as buffer overflows by running the Internet Explorer process with limited privileges.<sup style="display: none;" class="reference" id="cite_ref-45"><span><span>[</span>46<span>]</span></span></sup> <span>Google Chrome</span> similarly limits page renderers in its own "sandbox."</p>

<h4 style="text-align: justify;">
	<span class="mw-headline" id="Sandbox_implementation_errors">Sandbox implementation errors</span></h4>
<p style="text-align: justify;">
	Web browsers are capable of running JavaScript outside of the sandbox, with the privileges necessary to, for example, create or delete files. Of course, such privileges aren't meant to be granted to code from the web.</p>
<p style="text-align: justify;">
	Incorrectly granting privileges to JavaScript from the web has played a role in vulnerabilities in both Internet Explorer<sup style="display: none;" class="reference" id="cite_ref-46"><span><span>[</span>47<span>]</span></span></sup> and Firefox.<sup style="display: none;" class="reference" id="cite_ref-47"><span><span>[</span>48<span>]</span></span></sup> In Windows XP Service Pack 2, Microsoft demoted JScript's privileges in Internet Explorer.<sup style="display: none;" class="reference" id="cite_ref-48"><span><span>[</span>49<span>]</span></span></sup></p>

<p style="text-align: justify;">
	<span>Microsoft Windows</span> allows JavaScript source files on a computer's hard drive to be launched as general-purpose, non-sandboxed programs. This makes JavaScript (like <span>VBScript</span>) a theoretically viable vector for a <span>Trojan horse</span>, although JavaScript Trojan horses are uncommon in practice.<sup style="display: none;" class="reference" id="cite_ref-49"><span><span>[</span>50<span>]</span></span></sup> (See <span>Windows Script Host</span>.)</p>

<h2 style="text-align: justify;">
	<span class="mw-headline" id="Uses_outside_web_pages">Uses outside web pages</span></h2>
<p style="text-align: justify;">
	In addition to web browsers and servers, JavaScript interpreters are embedded in a number of tools. Each of these applications provides its own <span>object model</span> which provides access to the host environment, with the core JavaScript language remaining mostly the same in each application.</p>
<h3 style="text-align: justify;">
	<span class="mw-headline" id="Embedded_scripting_language">Embedded scripting language</span></h3>
<ul>
	<li style="text-align: justify;">

		Apple's <span>Dashboard Widgets</span>, Apple's <span>Safari 5</span> extensions, Microsoft's <span>Gadgets</span>, <span>Yahoo! Widgets</span>, <span>Google Desktop Gadgets</span>, and <span class="mw-redirect">Serence</span> <span class="mw-redirect">Klipfolio</span> are implemented using JavaScript.</li>

	<li style="text-align: justify;">
		Adobe's <span>Acrobat</span> and Adobe Reader support JavaScript in <span>PDF</span> files.<sup style="display: none;" class="reference" id="cite_ref-50"><span><span>[</span>51<span>]</span></span></sup></li>
	<li style="text-align: justify;">

		Tools in the <span>Adobe Creative Suite</span>, including <span>Photoshop</span>, <span>Illustrator</span>, <span class="mw-redirect">Dreamweaver</span> and <span class="mw-redirect">InDesign</span>, allow scripting through JavaScript.</li>
	<li style="text-align: justify;">
		<span>OpenOffice.org</span> office application suite allows for JavaScript as one of its scripting languages.</li>

	<li style="text-align: justify;">
		The interactive music signal processing software <span class="mw-redirect">Max/MSP</span> released by Cycling '74, offers a JavaScript model of its environment for use by developers. It allows much more precise control than the default GUI-centric programming model.</li>
	<li style="text-align: justify;">
		ECMAScript was included in the <span>VRML97</span> standard for scripting nodes of VRML scene description files.</li>

	<li style="text-align: justify;">
		Some high-end Philips <span>universal remote</span> panels, including TSU9600 and TSU9400, can be scripted using a JavaScript-based tool called ProntoScript.<sup style="display: none;" class="reference" id="cite_ref-51"><span><span>[</span>52<span>]</span></span></sup></li>
	<li style="text-align: justify;">
		<span>Sphere</span> is an open source and cross platform computer program designed primarily to make role-playing games that use JavaScript as a scripting language.</li>

	<li style="text-align: justify;">
		The open-source <span class="external text" rel="nofollow">Re-Animator</span> framework allows developing 2D sprite-based games using JavaScript and XML.</li>
	<li style="text-align: justify;">
		<span>Methabot</span> is a web crawler that uses JavaScript as scripting language for custom filetype parsers and data extraction using <span class="mw-redirect">E4X</span>.</li>

	<li style="text-align: justify;">
		The <span>Unity</span> game engine supports JavaScript for scripting (in addition to C# and <span>Boo</span>) via Mono.<sup style="display: none;" class="reference" id="cite_ref-52"><span><span>[</span>53<span>]</span></span></sup></li>
	<li style="text-align: justify;">
		<span>DX Studio (3D engine)</span> uses the <span>SpiderMonkey</span> implementation of JavaScript for game and simulation logic.<sup style="display: none;" class="reference" id="cite_ref-53"><span><span>[</span>54<span>]</span></span></sup></li>

	<li style="text-align: justify;">
		<span>Maxwell Render</span> (<span>rendering</span> software) provides an ECMA standard based scripting engine for tasks automation.<sup style="display: none;" class="reference" id="cite_ref-54"><span><span>[</span>55<span>]</span></span></sup></li>
	<li style="text-align: justify;">
		<span>Google Docs</span> Spreadsheet has a script editor which allows users to create custom formulas, automate repetitive tasks and also interact with other Google products such as Gmail.<sup style="display: none;" class="reference" id="cite_ref-55"><span><span>[</span>56<span>]</span></span></sup></li>

	<li style="text-align: justify;">
		Many <span class="mw-redirect">Internet Relay Chat clients</span> like <span>ChatZilla</span> or <span>XChat</span> use JavaScript for their scripting abilities.<sup style="display: none;" class="reference" id="cite_ref-56"><span><span>[</span>57<span>]</span></span></sup><sup style="display: none;" class="reference" id="cite_ref-57"><span><span>[</span>58<span>]</span></span></sup></li>

</ul>
<h3 style="text-align: justify;">
	<span class="mw-headline" id="Scripting_engine">Scripting engine</span></h3>
<ul>
	<li style="text-align: justify;">
		Microsoft's <span>Active Scripting</span> technology supports <span>JScript</span> as a scripting language. This is often considered compatible with JavaScript, but Microsoft lists many JScript features that are not compliant with ECMA standards.<sup style="display: none;" class="reference" id="cite_ref-JScript_Non-ECMA_17-1"><span><span>[</span>18<span>]</span></span></sup></li>

	<li style="text-align: justify;">
		The <span class="mw-redirect">Java programming language</span>, in version SE 6 (JDK 1.6), introduced the <code>javax.script</code> package, including a JavaScript implementation based on <span>Mozilla Rhino</span>. Thus, Java applications can host scripts that access the application's variables and objects, much like web browsers host scripts that access the browser's Document Object Model (DOM) for a webpage.<sup style="display: none;" class="reference" id="cite_ref-58"><span><span>[</span>59<span>]</span></span></sup><sup style="display: none;" class="reference" id="cite_ref-FOOTNOTEFlanagan2006214_et_seq_59-0"><span><span>[</span>60<span>]</span></span></sup></li>

	<li style="text-align: justify;">
		The <span class="mw-redirect">Qt</span> C++ toolkit includes a <code>QtScript</code> module to interpret JavaScript, analogous to Java's <code>javax.script</code> package.<sup style="display: none;" class="reference" id="cite_ref-60"><span><span>[</span>61<span>]</span></span></sup></li>

	<li style="text-align: justify;">
		Late Night Software's <span>JavaScript OSA</span> (aka JavaScript for OSA, or JSOSA), is a freeware alternative to <span>AppleScript</span> for Mac OS X. It is based on the Mozilla 1.5 JavaScript implementation, with the addition of a <code>MacOS</code> object for interaction with the operating system and third-party applications.<sup style="display: none;" class="reference" id="cite_ref-61"><span><span>[</span>62<span>]</span></span></sup></li>

</ul>
<h3 style="text-align: justify;">
	<span class="mw-headline" id="Application_platform">Application platform</span></h3>
<ul>
	<li style="text-align: justify;">
		<span>ActionScript</span>, the programming language used in <span>Adobe Flash</span>, is another implementation of the ECMAScript standard.</li>
	<li style="text-align: justify;">
		The <span>Mozilla</span> platform, which underlies <span class="mw-redirect">Firefox</span>, <span>Thunderbird</span> and some other web browsers, uses JavaScript to implement the <span>graphical user interface</span> (GUI) of its various products.</li>

	<li style="text-align: justify;">
		<span>Adobe Integrated Runtime</span> is a JavaScript runtime that allows developers to create desktop applications.</li>
	<li style="text-align: justify;">
		<span class="external text" rel="nofollow">myNFC.org</span> is a JavaScript based framework that allows developers to create applications for smart phones.</li>
	<li style="text-align: justify;">
		<span>webOS</span> uses the <span>WebKit</span> implementation of JavaScript in its <span class="mw-redirect">SDK</span> to allow developers to create stand-alone applications solely in JavaScript.</li>

	<li style="text-align: justify;">
		<span class="mw-redirect">CA, Inc.</span>'s AutoShell cross-application scripting environment is built on JavaScript/<span>SpiderMonkey</span> with <span>preprocessor</span> like extensions for command definitions and custom classes for various system related tasks like file i/o, operation system command invocation and redirection and COM scripting.</li>
	<li style="text-align: justify;">
		<span>GNOME Shell</span>, the shell for the <span style="white-space: nowrap;"><span>GNOME 3</span></span> desktop environment.<sup style="display: none;" class="reference" id="cite_ref-62"><span><span>[</span>63<span>]</span></span></sup> The <span>Seed</span>,<sup style="display: none;" class="reference" id="cite_ref-63"><span><span>[</span>64<span>]</span></span></sup> <span class="external text" rel="nofollow">Gjs</span> (from <span>Gnome</span>) and <span class="external text" rel="nofollow">Kjsembed</span><sup style="display: none;" class="reference" id="cite_ref-64"><span><span>[</span>65<span>]</span></span></sup> (from <span>KDE</span>) packages are aimed to utilize that<sup class="noprint Inline-Template" style="display: none;">[<i><span>clarification needed</span></i>]</sup> needs.</li>

	<li style="text-align: justify;">
		<span>Qt Quick</span>'s markup language (QML) is using JavaScript for the application logic, and the declarative syntax is JavaScript-like. QML is available since <span>Qt</span> 4.7.</li>
</ul>
<h2 style="text-align: justify;">
	<span class="mw-headline" id="Development_tools">Development tools</span></h2>
<p style="text-align: justify;">
	Within JavaScript, access to a <span>debugger</span> becomes invaluable when developing large, non-trivial programs. Because there can be implementation differences between the various browsers (particularly within the <span>Document Object Model</span>) it is useful to have access to a debugger for each of the browsers that a web application targets.<sup style="display: none;" class="reference" id="cite_ref-65"><span><span>[</span>66<span>]</span></span></sup></p>

<p style="text-align: justify;">
	Script debuggers are available for <span>Internet Explorer</span>, <span>Firefox</span>, <span>Safari</span>, <span>Google Chrome</span>, and <span>Opera</span>.<sup style="display: none;" class="reference" id="cite_ref-66"><span><span>[</span>67<span>]</span></span></sup></p>

<p style="text-align: justify;">
	Three debuggers are available for Internet Explorer: <span>Microsoft Visual Studio</span> is the richest of the three, closely followed by <span>Microsoft Script Editor</span> (a component of <span>Microsoft Office</span>),<sup style="display: none;" class="reference" id="cite_ref-67"><span><span>[</span>68<span>]</span></span></sup> and finally the free <span>Microsoft Script Debugger</span> which is far more basic than the other two. The free <span class="external text" rel="nofollow">Microsoft Visual Web Developer Express</span> provides a limited version of the JavaScript debugging functionality in Microsoft Visual Studio. Internet Explorer has included developer tools since version 8 (reached by pressing the F12 key).</p>

<p style="text-align: justify;">
	Web applications within Firefox can be debugged using the <span class="mw-redirect">Firebug</span> add-on, or the older <span>Venkman</span> debugger. Firefox also has a simpler built-in Error Console, which logs and evaluates JavaScript. It also logs <span class="mw-redirect">CSS</span> errors and warnings.</p>
<p style="text-align: justify;">
	Opera includes a set of tools called DragonFly.<sup style="display: none;" class="reference" id="cite_ref-68"><span><span>[</span>69<span>]</span></span></sup></p>

<p style="text-align: justify;">
	<span>WebKit</span>'s Web Inspector includes a JavaScript debugger<sup style="display: none;" class="reference" id="cite_ref-69"><span><span>[</span>70<span>]</span></span></sup> in <span>Safari</span> and <span>Google Chrome</span>.</p>
<p style="text-align: justify;">
	Some debugging aids are themselves written in JavaScript and built to run on the Web. An example is the program <span>JSLint</span>, developed by <span>Douglas Crockford</span>, currently senior JavaScript architect at Yahoo! who has written extensively on the language. JSLint scans JavaScript code for conformance to a set of standards and guidelines. <span class="external text" rel="nofollow">Web development bookmarklets</span> and <span class="external text" rel="nofollow">Firebug Lite</span> provide variations on the idea of the cross-browser JavaScript console.</p>

<p style="text-align: justify;">
	<span class="external text" rel="nofollow">MiniME</span> is an open source JavaScript minifier, obfuscator and code checking tool for the .NET platform.</p>
<h2 style="text-align: justify;">
	<span class="mw-headline" id="Versions">Versions</span></h2>
<div class="rellink boilerplate seealso" style="text-align: justify;">
	See also: <span>ECMAScript#Dialects</span>&nbsp;and <span>ECMAScript#Version correspondence</span></div>

<table class="acatable" style="font-size: smaller; text-align: center;" border="1">
	<tbody>
		<tr>
			<th style="text-align: justify;">
				Version</th>
			<th style="text-align: justify;">
				Release date</th>
			<th style="text-align: justify;">

				Equivalent to</th>
			<th style="text-align: justify;">
				Netscape<br>
				Navigator</th>
			<th style="text-align: justify;">
				Mozilla<br>
				Firefox</th>

			<th style="text-align: justify;">
				Internet<br>
				Explorer</th>
			<th style="text-align: justify;">
				Opera</th>
			<th style="text-align: justify;">
				Safari</th>

			<th style="text-align: justify;">
				Google<br>
				Chrome</th>
		</tr>
		<tr>
			<td style="text-align: justify;">
				1.0</td>

			<td style="text-align: justify;">
				March 1996</td>
			<td style="text-align: justify;">
				&nbsp;</td>
			<td style="text-align: justify;">
				2.0</td>
			<td style="text-align: justify;">
				&nbsp;</td>

			<td style="text-align: justify;">
				3.0</td>
			<td style="text-align: justify;">
				&nbsp;</td>
			<td style="text-align: justify;">
				&nbsp;</td>
			<td style="text-align: justify;">
				&nbsp;</td>

		</tr>
		<tr>
			<td style="text-align: justify;">
				1.1</td>
			<td style="text-align: justify;">
				August 1996</td>
			<td style="text-align: justify;">
				&nbsp;</td>

			<td style="text-align: justify;">
				3.0</td>
			<td style="text-align: justify;">
				&nbsp;</td>
			<td style="text-align: justify;">
				&nbsp;</td>
			<td style="text-align: justify;">
				&nbsp;</td>

			<td style="text-align: justify;">
				&nbsp;</td>
			<td style="text-align: justify;">
				&nbsp;</td>
		</tr>
		<tr>
			<td style="text-align: justify;">
				1.2</td>

			<td style="text-align: justify;">
				June 1997</td>
			<td style="text-align: justify;">
				&nbsp;</td>
			<td style="text-align: justify;">
				4.0-4.05</td>
			<td style="text-align: justify;">
				&nbsp;</td>

			<td style="text-align: justify;">
				&nbsp;</td>
			<td style="text-align: justify;">
				&nbsp;</td>
			<td style="text-align: justify;">
				&nbsp;</td>
			<td style="text-align: justify;">
				&nbsp;</td>
		</tr>

		<tr>
			<td style="text-align: justify;">
				1.3</td>
			<td style="text-align: justify;">
				October 1998</td>
			<td style="text-align: justify;">
				ECMA-262 1<sup style="display: none;">st</sup> edition / ECMA-262 2<sup style="display: none;">nd</sup> edition</td>

			<td style="text-align: justify;">
				4.06-4.7x</td>
			<td style="text-align: justify;">
				&nbsp;</td>
			<td style="text-align: justify;">
				4.0</td>
			<td style="text-align: justify;">
				&nbsp;</td>

			<td style="text-align: justify;">
				&nbsp;</td>
			<td style="text-align: justify;">
				&nbsp;</td>
		</tr>
		<tr>
			<td style="text-align: justify;">
				1.4</td>

			<td style="text-align: justify;">
				&nbsp;</td>
			<td style="text-align: justify;">
				&nbsp;</td>
			<td style="text-align: justify;">
				Netscape<br>
				Server</td>
			<td style="text-align: justify;">

				&nbsp;</td>
			<td style="text-align: justify;">
				&nbsp;</td>
			<td style="text-align: justify;">
				&nbsp;</td>
			<td style="text-align: justify;">
				&nbsp;</td>
			<td style="text-align: justify;">
				&nbsp;</td>

		</tr>
		<tr>
			<td style="text-align: justify;">
				1.5</td>
			<td style="text-align: justify;">
				November 2000</td>
			<td style="text-align: justify;">
				ECMA-262 3<sup style="display: none;">rd</sup> edition</td>

			<td style="text-align: justify;">
				6.0</td>
			<td style="text-align: justify;">
				1.0</td>
			<td style="text-align: justify;">
				5.5 (JScript 5.5),<br>
				6 (JScript 5.6),<br>

				7 (JScript 5.7),<br>
				8 (JScript 5.8)</td>
			<td style="text-align: justify;">
				6.0-11.0</td>
			<td style="text-align: justify;">
				3.0-5</td>
			<td style="text-align: justify;">

				1.0-10.0.666</td>
		</tr>
		<tr>
			<td style="text-align: justify;">
				1.6</td>
			<td style="text-align: justify;">
				November 2005</td>

			<td style="text-align: justify;">
				1.5 + Array extras + Array and String generics + <span class="mw-redirect">E4X</span></td>
			<td style="text-align: justify;">
				&nbsp;</td>
			<td style="text-align: justify;">
				1.5</td>
			<td style="text-align: justify;">

				&nbsp;</td>
			<td style="text-align: justify;">
				&nbsp;</td>
			<td style="text-align: justify;">
				&nbsp;</td>
			<td style="text-align: justify;">
				&nbsp;</td>
		</tr>
		<tr>

			<td style="text-align: justify;">
				1.7</td>
			<td style="text-align: justify;">
				October 2006</td>
			<td style="text-align: justify;">
				1.6 + Pythonic generators + Iterators + let</td>
			<td style="text-align: justify;">

				&nbsp;</td>
			<td style="text-align: justify;">
				2.0</td>
			<td style="text-align: justify;">
				&nbsp;</td>
			<td style="text-align: justify;">
				&nbsp;</td>
			<td style="text-align: justify;">

				&nbsp;</td>
			<td style="text-align: justify;">
				&nbsp;</td>
		</tr>
		<tr>
			<td style="text-align: justify;">
				1.8</td>
			<td style="text-align: justify;">

				June 2008</td>
			<td style="text-align: justify;">
				1.7 + <span class="mw-redirect">Generator expressions</span> + <span>Expression closures</span></td>
			<td style="text-align: justify;">
				&nbsp;</td>
			<td style="text-align: justify;">

				3.0</td>
			<td style="text-align: justify;">
				&nbsp;</td>
			<td style="text-align: justify;">
				&nbsp;</td>
			<td style="text-align: justify;">
				&nbsp;</td>
			<td style="text-align: justify;">

				&nbsp;</td>
		</tr>
		<tr>
			<td style="text-align: justify;">
				1.8.1</td>
			<td style="text-align: justify;">
				&nbsp;</td>
			<td style="text-align: justify;">

				1.8 + <span>Native JSON</span> support + Minor Updates</td>
			<td style="text-align: justify;">
				&nbsp;</td>
			<td style="text-align: justify;">
				3.5</td>
			<td style="text-align: justify;">

				&nbsp;</td>
			<td style="text-align: justify;">
				&nbsp;</td>
			<td style="text-align: justify;">
				&nbsp;</td>
			<td style="text-align: justify;">
				&nbsp;</td>
		</tr>
		<tr>

			<td style="text-align: justify;">
				1.8.2</td>
			<td style="text-align: justify;">
				June 22, 2009</td>
			<td style="text-align: justify;">
				1.8.1 + Minor updates</td>
			<td style="text-align: justify;">

				&nbsp;</td>
			<td style="text-align: justify;">
				3.6</td>
			<td style="text-align: justify;">
				&nbsp;</td>
			<td style="text-align: justify;">
				&nbsp;</td>
			<td style="text-align: justify;">

				&nbsp;</td>
			<td style="text-align: justify;">
				&nbsp;</td>
		</tr>
		<tr>
			<td style="text-align: justify;">
				1.8.5</td>
			<td style="text-align: justify;">

				July 27, 2010</td>
			<td style="text-align: justify;">
				1.8.1 + <span>ECMAScript</span> 5 Compliance</td>
			<td style="text-align: justify;">
				&nbsp;</td>
			<td style="text-align: justify;">

				4</td>
			<td style="text-align: justify;">
				9</td>
			<td style="text-align: justify;">
				&nbsp;</td>
			<td style="text-align: justify;">
				&nbsp;</td>
			<td style="text-align: justify;">

				&nbsp;</td>
		</tr>
	</tbody>
</table>
<p style="text-align: justify;">
	<sup style="display: none;" class="reference" id="cite_ref-70"><span><span>[</span>71<span>]</span></span></sup></p>
<h2 style="text-align: justify;">
	<span class="mw-headline" id="Related_languages_and_features">Related languages and features</span></h2>

<p style="text-align: justify;">
	<span>Objective-J</span> is a superset of JavaScript that compiles to standard JavaScript. It adds traditional inheritance and <span>Smalltalk</span>/<span>Objective-C</span> style dynamic dispatch and optional pseudo-static typing to JavaScript.</p>
<p style="text-align: justify;">
	<span>CoffeeScript</span> is an alternate syntax for JavaScript intended to be more concise and readable and adding features like array comprehensions and pattern matching. Like Objective-J, it compiles to JavaScript. Ruby and Python have been cited as influential on Coffeescript syntax.</p>

<p style="text-align: justify;">
	<span>jQuery</span> and <span>Prototype</span> are popular JavaScript libraries designed to simplify <span>DOM</span>-oriented client-side HTML scripting.</p>
<p style="text-align: justify;">
	<span class="new">TIScript</span> is a superset of JavaScript that adds classes, namespaces and lambda expressions.</p>

<p style="text-align: justify;">
	<span>JSON</span>, or JavaScript Object Notation, is a general-purpose data interchange format that is defined as a subset of JavaScript.</p>
<p style="text-align: justify;">
	Mozilla browsers currently support <span>LiveConnect</span>, a feature that allows JavaScript and Java to intercommunicate on the web. However, Mozilla-specific support for LiveConnect is scheduled to be phased out in the future in favor of passing on the LiveConnect handling via <span>NPAPI</span> to the Java 1.6+ plug-in (not yet supported on the Mac as of March 2010<sup class="plainlinks noprint asof-tag update" style="display: none;"><span class="external text" rel="nofollow">[update]</span></sup>).<sup style="display: none;" class="reference" id="cite_ref-71"><span><span>[</span>72<span>]</span></span></sup> Most browser inspection tools, such as <span class="new">FireBug</span> in Firefox, include JavaScript interpreters that can act on the visible page's DOM.</p>

<h3 style="text-align: justify;">
	<span class="mw-headline" id="JavaScript_and_Java">JavaScript and Java</span></h3>
<p style="text-align: justify;">
	A common misconception is that JavaScript is similar or closely related to <span>Java</span>. It is true that both have a C-like syntax, the C language being their most immediate common ancestor language. They are both object-oriented, typically sandboxed (when used inside a browser), and are widely used in client-side Web applications. In addition, JavaScript was designed with Java's syntax and standard library in mind. In particular, all Java keywords were reserved in original JavaScript, JavaScript's standard library follows Java's naming conventions, and JavaScript's Math and Date objects are based on classes from Java 1.0.<sup style="display: none;" class="reference" id="cite_ref-popularity_16-1"><span><span>[</span>17<span>]</span></span></sup></p>

<p style="text-align: justify;">
	However, the similarities end there. Java has static typing; JavaScript's typing is dynamic (meaning a variable can hold an object of any type and cannot be restricted). Java is loaded from compiled bytecode; JavaScript is loaded as human-readable source code. Java's objects are <span class="mw-redirect">class</span>-based; JavaScript's are prototype-based. JavaScript also has many functional features based on the Scheme language.</p>
<!-- end data content -->

<jsp:include page="contentFooter.jsp"/>