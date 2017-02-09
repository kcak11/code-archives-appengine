<jsp:include page="contentHeader.jsp">
<jsp:param name="docTitle" value="CodeArchives - CSS" />
</jsp:include>

<img src="archive/resources/images/topics/css.png"/>

<%--STANDARD JSP PAGE--%>
<!-- start content here -->

<h1 class="firstHeading" id="firstHeading">
	Cascading Style Sheets</h1>
<table class="infobox" style="width: 512px; height: 269px;" cellspacing="5">
	<caption style="">
		&nbsp;</caption>
	<tbody>
		<tr>
			<th scope="row" style="text-align: left;">
				<span>Filename extension</span></th>

			<td style="">
				<code>.css</code></td>
		</tr>
		<tr>
			<th scope="row" style="text-align: left;">
				<span>Internet media type</span></th>
			<td style="">
				<code>text/css</code></td>

		</tr>
		<tr>
			<th scope="row" style="text-align: left;">
				Developed by</th>
			<td style="">
				<span>World Wide Web Consortium</span></td>
		</tr>
		<tr>

			<th scope="row" style="text-align: left;">
				Initial release</th>
			<td style="">
				17 December 1996<span class="noprint">; 14 years ago</span><span style="display: none;">&nbsp;(<span class="bday dtstart published updated">17 December 1996</span>)</span></td>
		</tr>
		<tr>

			<th scope="row" style="text-align: left;">
				Type of format</th>
			<td style="">
				<span>Style sheet language</span></td>
		</tr>
	</tbody>
</table>
<p>
	<b>Cascading Style Sheets</b> (<b>CSS</b>) is a <span>style sheet language</span> used to describe the <span>presentation semantics</span> (the look and formatting) of a document written in a <span>markup language</span>. Its most common application is to style <span>web pages</span> written in <span>HTML</span> and <span>XHTML</span>, but the language can also be applied to any kind of <span>XML</span> document, including <span>SVG</span> and <span>XUL</span>.</p>

<p>
	CSS is designed primarily to enable the separation of document content (written in HTML or a similar markup language) from document presentation, including elements such as the <span>layout</span>, <span>colors</span>, and <span>fonts</span>.<sup style="display:none;" class="reference" id="cite_ref-0"><span><span>[</span>1<span>]</span></span></sup> This separation can improve content <span>accessibility</span>, provide more flexibility and control in the specification of presentation characteristics, enable multiple pages to share formatting, and reduce complexity and repetition in the structural content (such as by allowing for <span>tableless web design</span>). CSS can also allow the same markup page to be presented in different styles for different rendering methods, such as on-screen, in print, by voice (when read out by a speech-based browser or <span>screen reader</span>) and on <span>Braille</span>-based, <span class="mw-redirect">tactile</span> devices. While the author of a document typically links that document to a CSS style sheet, readers can use a different style sheet, perhaps one on their own computer, to override the one the author has specified.</p>

<p>
	CSS specifies a priority scheme to determine which style rules apply if more than one rule matches against a particular element. In this so-called <i>cascade</i>, priorities or <i>weights</i> are calculated and assigned to rules, so that the results are predictable.</p>
<p>
	The CSS specifications are maintained by the <span>World Wide Web Consortium</span> (W3C). Internet media type (<span class="mw-redirect">MIME type</span>) <code>text/css</code> is registered for use with CSS by <span class="external mw-magiclink-rfc">RFC 2318</span> (March 1998).</p>

<p>
	The popularity of CSS as a design tool has increased steadily and is now regarded as the premier system for website design.<sup style="display:none;" class="Template-Fact" style="white-space: nowrap;">[<i><span>citation needed</span></i>]</sup></p>
<h2>
	<span class="mw-headline" id="Syntax">Syntax</span></h2>
<p>
	CSS has a simple <span>syntax</span> and uses a number of English keywords to specify the names of various style properties.</p>

<p>
	A style sheet consists of a list of <i>rules</i>. Each rule or rule-set consists of one or more <i>selectors</i> and a <i>declaration block</i>. A declaration-block consists of a list of <i>declarations</i> in braces. Each declaration itself consists of a <i>property</i>, a colon (<code>:</code>), a <i>value</i>. If there are multiple declarations in a block, a semi-colon (<code>;</code>) must be inserted to separate each declaration.<sup style="display:none;" class="reference" id="cite_ref-1"><span><span>[</span>2<span>]</span></span></sup></p>

<p>
	In CSS, <i>selectors</i> are used to declare which of the markup elements a style applies to, a kind of match expression. Selectors may apply to all elements of a specific type, or only those elements that match a certain attribute; elements may be matched depending on how they are placed relative to each other in the markup code, or on how they are nested within the <span>Document Object Model</span>.</p>
<p>
	<i>Pseudo-classes</i> are another form of specification used in CSS to identify markup elements, and in some cases, specific user actions to which a particular declaration block applies. An often-used example is the <code>:hover</code> pseudo-class that applies a style only when the user 'points to' the visible element, usually by holding the mouse cursor over it. It is appended to a selector as in <code>a:hover</code> or <code>#elementid:hover</code>. Other pseudo-classes and <i>pseudo-elements</i> are, for example, <code>:first-line</code>, <code>:visited</code> or <code>:before</code>. A special pseudo-class is <code>:lang(c)</code>, "c".</p>

<p>
	A <i>pseudo-class</i> selects entire elements, such as <code>:link</code> or <code>:visited</code>, whereas a <i>pseudo-element</i> makes a selection that may consist of partial elements, such as <code>:first-line</code> or <code>:first-letter</code>.</p>

<p>
	Selectors may be combined in other ways too, especially in CSS 2.1, to achieve greater specificity and flexibility.<sup style="display:none;" class="reference" id="cite_ref-2"><span><span>[</span>3<span>]</span></span></sup></p>
<p>
	Here is an example summing up the rules above:</p>
<div class="mw-geshi" dir="ltr" style="text-align: left;">
	<div class="css source-css" style="font-family: monospace;">
		<pre class="de1">selector <span class="br0">[</span><span class="sy0">,</span> selector2<span class="sy0">,</span> ...<span class="br0">]</span><span class="br0">[</span><span class="re2">:pseudo-</span>class<span class="br0">]</span> <span class="br0">{</span>

  property<span class="sy0">:</span> value<span class="sy0">;</span>
 <span class="br0">[</span>property2<span class="sy0">:</span> value2<span class="sy0">;</span>
  ...<span class="br0">]</span>

<span class="br0">}</span>
<span class="coMULTI">/* comment */</span>
</pre>
	</div>
</div>
<h3>
	<span class="mw-headline" id="Use">Use</span></h3>
<p>
	Prior to CSS, nearly all of the presentational attributes of HTML documents were contained within the HTML markup; all font colors, background styles, element alignments, borders and sizes had to be explicitly described, often repeatedly, within the HTML. CSS allows authors to move much of that information to a separate style sheet resulting in considerably simpler HTML markup.</p>
<p>

	Headings (<code>h1</code> elements), sub-headings (<code>h2</code>), sub-sub-headings (<code>h3</code>), etc., are defined structurally using HTML. In print and on the screen, choice of <span>font</span>, <span>size</span>, <span>color</span> and <span>emphasis</span> for these elements is <i>presentational</i>.</p>

<p>
	Prior to CSS, document authors who wanted to assign such <span>typographic</span> characteristics to, say, all <code>h2</code> headings had to use the HTML <code>font</code> and other presentational elements for each occurrence of that heading type. The additional presentational markup in the HTML made documents more complex, and generally more difficult to maintain. In CSS, presentation is separated from structure. In print, CSS can define color, font, text alignment, size, borders, spacing, layout and many other typographic characteristics. It can do so independently for on-screen and printed views. CSS also defines non-visual styles such as the speed and emphasis with which text is read out by aural text readers. The <span class="mw-redirect">W3C</span> now considers the advantages of CSS for defining all aspects of the presentation of HTML pages to be superior to other methods. It has therefore <span>deprecated</span> the use of all the original presentational HTML markup.</p>

<h3>
	<span class="mw-headline" id="Sources">Sources</span></h3>
<p>
	CSS information can be provided by various sources. CSS style information can be either attached as a separate document or embedded in the HTML document. Multiple style sheets can be imported. Different styles can be applied depending on the output device being used; for example, the screen version can be quite different from the printed version, so that authors can tailor the presentation appropriately for each medium.</p>
<p>
	Priority scheme for CSS sources (from highest to lowest priority):</p>
<ul>
	<li>
		Author styles (provided by the web page author), in the form of:
		<ul>

			<li>
				<b>Inline styles</b>, inside the HTML document, style information on a single element, specified using the "style" attribute</li>
			<li>
				<b>Embedded style</b>, blocks of CSS information inside the HTML itself</li>
			<li>

				<b>External style sheets</b>, i.e., a separate CSS file referenced from the document</li>
		</ul>
	</li>
	<li>
		User style:
		<ul>
			<li>
				A local CSS file the user specifies with a browser option, which acts as an override applied to all documents</li>

		</ul>
	</li>
	<li>
		<span>User agent</span> style
		<ul>
			<li>
				Default styles applied by the user agent, i.e., the browser's default settings for element presentation</li>

		</ul>
	</li>
</ul>
<p>
	The style sheet with the highest priority controls the content display. Declarations not set in the highest priority source are passed on by a source of lower priority such as the user agent style. This process is called <i>cascading</i>.</p>
<p>
	One of the goals of CSS is also to allow <i>users</i> greater control over presentation. Someone who finds red italic headings difficult to read may apply a different style sheet. Depending on their browser and the web site, a user may choose from various style sheets provided by the designers, may remove all added style and view the site using the browser's default styling, or may override just the red italic heading style without altering other attributes.</p>

<p>
	File <tt>highlightheaders.css</tt> containing:</p>
<div class="mw-geshi" dir="ltr" style="text-align: left;">
	<div class="css source-css" style="font-family: monospace;">
		<pre class="de1">h1 <span class="br0">{</span> <span class="kw1">color</span><span class="sy0">:</span> <span class="kw2">white</span><span class="sy0">;</span> <span class="kw1">background-color</span><span class="sy0">:</span> orange !important<span class="sy0">;</span> <span class="br0">}</span>

h2 <span class="br0">{</span> <span class="kw1">color</span><span class="sy0">:</span> <span class="kw2">white</span><span class="sy0">;</span> <span class="kw1">background-color</span><span class="sy0">:</span> <span class="kw2">green</span> !important<span class="sy0">;</span> <span class="br0">}</span>

</pre>
	</div>
</div>
<p>
	Such a file is stored locally and is applicable if that has been specified in the browser options. "!important" means that it prevails over the author specifications.</p>
<h2>
	<span class="mw-headline" id="History">History</span></h2>
<p>
	Style sheets have existed in one form or another since the beginnings of <span class="mw-redirect">SGML</span> in the 1970s. Cascading Style Sheets were developed as a means for creating a consistent approach to providing style information for web documents.</p>

<p>
	As <span>HTML</span> grew, it came to encompass a wider variety of stylistic capabilities to meet the demands of <span>web developers</span>. This evolution gave the designer more control over site appearance but at the cost of HTML becoming more complex to write and maintain. Variations in <span>web browser</span> implementations i.e. <span>ViolaWWW</span> and <span>WorldWideWeb</span><sup style="display:none;" class="reference" id="cite_ref-IEEE_3-0"><span><span>[</span>4<span>]</span></span></sup> made consistent site appearance difficult, and users had less control over how web content was displayed. <span>Robert Cailliau</span> wanted to separate the structure from the presentation.<sup style="display:none;" class="reference" id="cite_ref-IEEE_3-1"><span><span>[</span>4<span>]</span></span></sup> The ideal way would be to give the user different options and transferring three different kinds of style sheets: one for printing, one for the presentation on the screen and one for the editor feature.<sup style="display:none;" class="reference" id="cite_ref-IEEE_3-2"><span><span>[</span>4<span>]</span></span></sup></p>

<p>
	To improve web presentation capabilities, nine different style sheet languages were proposed to the <span>World Wide Web Consortium</span>'s (W3C) www-style mailing list. Of the nine proposals, two were chosen as the foundation for what became CSS: Cascading HTML Style Sheets (CHSS) and <span class="new">Stream-based Style Sheet Proposal</span> (SSP). CHSS, a language that has some resemblance to today's CSS, was proposed by <span>Hakon Wium Lie</span> in October 1994. <span>Bert Bos</span> was working on a browser called <span>Argo</span>, which used its own style sheet language called SSP.<sup style="display:none;" class="reference" id="cite_ref-WWW3_4-0"><span><span>[</span>5<span>]</span></span></sup> Lie and Yves Lafon joined <span>Dave Raggett</span> to expand the <span>Arena</span> browser for supporting CSS as a <span>testbed</span> application for the W3C.<sup style="display:none;" class="reference" id="cite_ref-5"><span><span>[</span>6<span>]</span></span></sup><sup style="display:none;" class="reference" id="cite_ref-6"><span><span>[</span>7<span>]</span></span></sup><sup style="display:none;" class="reference" id="cite_ref-7"><span><span>[</span>8<span>]</span></span></sup> Lie and Bos worked together to develop the CSS standard (the 'H' was removed from the name because these style sheets could also be applied to other markup languages besides HTML).<sup style="display:none;" class="reference" id="cite_ref-chapter20_8-0"><span><span>[</span>9<span>]</span></span></sup></p>

<p>
	Unlike existing style languages like <span>DSSSL</span> and <span>FOSI</span>, CSS allowed a document's style to be influenced by multiple style sheets. One style sheet could <span class="mw-redirect">inherit</span> or "cascade" from another, permitting a mixture of stylistic preferences controlled equally by the site designer and user.</p>
<p>

	Lie's proposal was presented at the "<span class="new">Mosaic and the Web</span>" conference (later called WWW2) in <span class="mw-redirect">Chicago, Illinois</span> in 1994, and again with Bert Bos in 1995.<sup style="display:none;" class="reference" id="cite_ref-chapter20_8-1"><span><span>[</span>9<span>]</span></span></sup> Around this time the W3C was already being established, and took an interest in the development of CSS. It organized a workshop toward that end chaired by <span>Steven Pemberton</span>. This resulted in W3C adding work on CSS to the deliverables of the HTML editorial review board (ERB). Lie and Bos were the primary technical staff on this aspect of the project, with additional members, including Thomas Reardon of <span>Microsoft</span>, participating as well. In August 1996 <span>Netscape Communication Corporation</span> presented an alternative style sheet language called <span>JavaScript Style Sheets</span> (JSSS).<sup style="display:none;" class="reference" id="cite_ref-chapter20_8-2"><span><span>[</span>9<span>]</span></span></sup> The spec was never finished and is deprecated.<sup style="display:none;" class="reference" id="cite_ref-9"><span><span>[</span>10<span>]</span></span></sup> By the end of 1996, CSS was ready to become official, and the CSS level 1 Recommendation was published in December.</p>

<p>
	Development of HTML, CSS, and the <span>DOM</span> had all been taking place in one group, the HTML Editorial Review Board (ERB). Early in 1997, the ERB was split into three <span>working groups</span>: HTML Working group, chaired by <span>Dan Connolly</span> of W3C; DOM Working group, chaired by Lauren Wood of <span class="mw-redirect">SoftQuad</span>; and CSS Working group, chaired by <span class="mw-redirect">Chris Lilley</span> of W3C.</p>

<p>
	The CSS Working Group began tackling issues that had not been addressed with CSS level 1, resulting in the creation of CSS level 2 on November 4, 1997. It was published as a W3C Recommendation on May 12, 1998. CSS level 3, which was started in 1998, is still under development as of 2009.</p>
<p>
	In 2005 the CSS Working Groups decided to enforce the requirements for standards more strictly. This meant that already published standards like CSS 2.1, CSS 3 Selectors and CSS 3 Text were pulled back from Candidate Recommendation to Working Draft level.</p>
<h3>
	<span class="mw-headline" id="Difficulty_with_adoption">Difficulty with adoption</span></h3>
<p>
	Although the CSS1 specification was completed in 1996 and Microsoft's <span>Internet Explorer 3</span><sup style="display:none;" class="reference" id="cite_ref-chapter20_8-3"><span><span>[</span>9<span>]</span></span></sup> was released in that year featuring some limited support for CSS, it was more than three years before any web browser achieved near-full implementation of the specification. <span>Internet Explorer 5.0</span> for the <span class="mw-redirect">Macintosh</span>, shipped in March 2000, was the first browser to have full (better than 99 percent) CSS1 support,<sup style="display:none;" class="reference" id="cite_ref-10"><span><span>[</span>11<span>]</span></span></sup> surpassing <span>Opera</span>, which had been the leader since its introduction of CSS support 15 months earlier. Other browsers followed soon afterwards, and many of them additionally implemented parts of CSS2. As of August 2010<sup style="display:none;" class="plainlinks noprint asof-tag update" style="display: none;"><span class="external text" rel="nofollow">[update]</span></sup>, no (finished) browser has fully implemented CSS2, with implementation levels varying (see <span class="mw-redirect">Comparison of layout engines (CSS)</span>).</p>

<p>
	Even though early browsers such as <span>Internet Explorer 3</span><sup style="display:none;" class="reference" id="cite_ref-chapter20_8-4"><span><span>[</span>9<span>]</span></span></sup> and <span>4</span>, and <span>Netscape 4.x</span> had support for CSS, it was typically incomplete and afflicted with serious <span>bugs</span>. This was a serious obstacle for the adoption of CSS.</p>

<p>
	When later 'version 5' browsers began to offer a fairly full implementation of CSS, they were still incorrect in certain areas and were fraught with inconsistencies, bugs and other <span>quirks</span>. The proliferation of such CSS-related inconsistencies and even the variation in feature support has made it difficult for designers to achieve a consistent appearance across platforms. Some authors resorted to <span>workarounds</span> such as <span class="mw-redirect">CSS hacks</span> and <span>CSS filters</span> to obtain consistent results across web browsers and <span class="mw-redirect">platforms</span>.</p>

<p>
	Problems with browsers' patchy adoption of CSS along with errata in the original specification led the W3C to revise the CSS2 standard into CSS2.1, which moved nearer to a working snapshot of current CSS support in HTML browsers. Some CSS2 properties that no browser successfully implemented were dropped, and in a few cases, defined behaviors were changed to bring the standard into line with the predominant existing implementations. CSS2.1 became a Candidate Recommendation on February 25, 2004, but CSS2.1 was pulled back to Working Draft status on June 13, 2005,<sup style="display:none;" class="reference" id="cite_ref-11"><span><span>[</span>12<span>]</span></span></sup> and only returned to Candidate Recommendation status on July 19, 2007.<sup style="display:none;" class="reference" id="cite_ref-12"><span><span>[</span>13<span>]</span></span></sup></p>
<p>
	In the past, some web servers were configured to serve all documents with the filename extension <code>.css</code><sup style="display:none;" class="reference" id="cite_ref-13"><span><span>[</span>14<span>]</span></span></sup> as <span>mime type</span> <code>application/x-pointplus</code><sup style="display:none;" class="reference" id="cite_ref-14"><span><span>[</span>15<span>]</span></span></sup> rather than <code>text/css</code>. At the time, the Net-Scene company was selling PointPlus Maker to convert <span>PowerPoint</span> files into Compact Slide Show files (using a <code>.css</code> extension).<sup style="display:none;" class="reference" id="cite_ref-15"><span><span>[</span>16<span>]</span></span></sup></p>

<h3>
	<span class="mw-headline" id="Variations">Variations</span></h3>
<p>
	CSS has various levels and profiles. Each level of CSS builds upon the last, typically adding new features and typically denoted as CSS1, CSS2, and CSS3. Profiles are typically a subset of one or more levels of CSS built for a particular device or user interface. Currently there are profiles for mobile devices, printers, and television sets. Profiles should not be confused with media types, which were added in CSS2.</p>
<h4>
	<span class="mw-headline" id="CSS_1">CSS 1</span></h4>
<p>
	The first CSS specification to become an official W3C Recommendation is CSS level 1, published in December 1996.<sup style="display:none;" class="reference" id="cite_ref-16"><span><span>[</span>17<span>]</span></span></sup> Among its capabilities are support for:</p>

<ul>
	<li>
		<span>Font</span> properties such as typeface and emphasis</li>
	<li>
		Color of text, backgrounds, and other elements</li>
	<li>
		Text attributes such as spacing between words, letters, and lines of text</li>

	<li>
		<span class="mw-redirect">Alignment</span> of text, images, <span class="mw-redirect">tables</span> and other elements</li>
	<li>
		Margin, border, padding, and positioning for most elements</li>
	<li>

		Unique identification and generic classification of groups of attributes</li>
</ul>
<p>
	The W3C no longer maintains the CSS1 Recommendation.<sup style="display:none;" class="reference" id="cite_ref-17"><span><span>[</span>18<span>]</span></span></sup></p>
<h4>
	<span class="mw-headline" id="CSS_2">CSS 2</span></h4>
<p>
	CSS level 2 specification was developed by the W3C and published as a Recommendation in May 1998. A superset of CSS1, CSS2 includes a number of new capabilities like absolute, relative, and fixed positioning of elements and <span>z-index</span>, the concept of media types, support for aural style sheets and bidirectional text, and new font properties such as shadows. The W3C no longer maintains the CSS2 Recommendation.<sup style="display:none;" class="reference" id="cite_ref-18"><span><span>[</span>19<span>]</span></span></sup></p>

<p>
	CSS level 2 revision 1 or CSS 2.1 fixes errors in CSS2, removes poorly-supported or not fully interoperable features and adds already-implemented browser extensions to the specification. In order to comply with the W3C Process for standardizing technical specifications, CSS 2.1 goes back and forth between Working Draft status and Candidate Recommendation status. CSS 2.1 first became a <span class="external text" rel="nofollow">Candidate Recommendation</span>, but it was reverted to a Working Draft on June 13, 2005 for further review. It was returned to Candidate Recommendation status on 19 July 2007 and was updated twice in 2009. However, since changes and clarifications were made to the prose it went back to Last Call Working Draft on 7 December 2010.<sup style="display:none;" class="reference" id="cite_ref-19"><span><span>[</span>20<span>]</span></span></sup></p>
<h4>
	<span class="mw-headline" id="CSS_3">CSS 3</span></h4>
<p>
	Instead of defining all features in a single, large specification like CSS2, CSS3 is divided into several separate documents called "modules". Each module add new capability or extend features defined in CSS2, over preserving backward compatibility. Work on CSS level 3 has started around the time when original CSS2 Recommendation was published. The earliest CSS3 drafts were published in June 1999.<sup style="display:none;" class="reference" id="cite_ref-20"><span><span>[</span>21<span>]</span></span></sup></p>

<p>
	Due to the modularization, different modules have different stability and are in different status.<sup style="display:none;" class="reference" id="cite_ref-21"><span><span>[</span>22<span>]</span></span></sup> As of March 2011, there are over 40 CSS modules published from the CSS Working Group.<sup style="display:none;" class="reference" id="cite_ref-22"><span><span>[</span>23<span>]</span></span></sup> Some modules such as Selectors, Namespaces, Color, Media Queries are considered stable and are in either Candidate Recommendation or Proposed Recommendation status.<sup style="display:none;" class="reference" id="cite_ref-23"><span><span>[</span>24<span>]</span></span></sup> Once CSS 2.1 is finalized and published as Recommendation, they are likely to go to Recommendation as well.<sup style="display:none;" class="reference" id="cite_ref-24"><span><span>[</span>25<span>]</span></span></sup></p>

<h2>
	<span class="mw-headline" id="Browser_support">Browser support</span></h2>
<div class="rellink">
	Further information: <span>Comparison of layout engines (Cascading Style Sheets)</span></div>
<p>
	Because not all browsers comply identically with CSS code, a coding technique known as a <span>CSS filter</span> can be used to show or hide parts of the CSS to different browsers, either by exploiting CSS-<span>handling</span> quirks or bugs in the browser, or by taking advantage of lack of support for parts of the CSS specifications.<sup style="display:none;" class="reference" id="cite_ref-25"><span><span>[</span>26<span>]</span></span></sup> Using CSS filters, some designers have gone as far as delivering different CSS to certain browsers to ensure designs render as expected. Because very early web browsers were either completely incapable of handling CSS, or render CSS very poorly, designers today often routinely use CSS filters that completely prevent these browsers from accessing any of the CSS. <span>Internet Explorer</span> support for CSS began with <span>IE 3.0</span> and increased progressively with each version. By 2008, the first Beta of <span>Internet Explorer 8</span> offered support for CSS 2.1 in its best web standards mode.</p>

<p>
	An example of a well-known CSS browser bug is the <span>Internet Explorer box model bug</span>, where box widths are interpreted incorrectly in several versions of the browser, resulting in blocks that are too narrow when viewed in Internet Explorer, but correct in standards-compliant browsers. The bug can be avoided in <span>Internet Explorer 6</span> by using the correct <span class="mw-redirect">doctype</span> in (X)HTML documents. CSS hacks and <span>CSS filters</span> are used to compensate for bugs such as this, just one of hundreds of CSS bugs that have been documented in various versions of <span>Netscape</span>, <span class="mw-redirect">Mozilla Firefox</span>, <span>Opera</span>, and Internet Explorer (including <span>Internet Explorer 7</span>).<sup style="display:none;" class="reference" id="cite_ref-26"><span><span>[</span>27<span>]</span></span></sup><sup style="display:none;" class="reference" id="cite_ref-27"><span><span>[</span>28<span>]</span></span></sup></p>

<p>
	Even when the availability of CSS-capable browsers made CSS a viable technology, the adoption of CSS was still held back by designers' struggles with browsers' incorrect CSS implementation and patchy CSS support. Even today, these problems continue to make the business of CSS design more complex and costly than it was intended to be, and cross-browser testing remains a necessity. Other reasons for continuing non-adoption of CSS are: its perceived complexity, authors' lack of familiarity with CSS syntax and required techniques, poor support from authoring tools, the risks posed by inconsistency between browsers and the increased costs of testing.</p>
<p>
	Currently there is strong competition between <span>Mozilla</span>'s <span>Gecko</span> layout engine used in <span>Firefox</span>, the <span>WebKit</span> layout engine used in <span>Apple</span> <span>Safari</span> and <span>Google Chrome</span>, the similar <span>KHTML</span> engine used in <span>KDE</span>'s <span>Konqueror</span> browser, and Opera's <span>Presto layout engine</span>-each of them is leading in different aspects of CSS. As of August 2009, Internet Explorer 8, Firefox 2 and 3 have reasonably complete levels of implementation of CSS 2.1.<sup style="display:none;" class="reference" id="cite_ref-28"><span><span>[</span>29<span>]</span></span></sup></p>

<h2>
	<span class="mw-headline" id="Limitations">Limitations</span></h2>
<p>
	Some noted limitations of the current capabilities of CSS include:</p>
<dl>
	<dt>
		Poor controls for flexible layouts&nbsp;</dt>
	<dd>
		While new additions to CSS3 provide a stronger, more robust feature-set for layout, CSS is still at heart a styling language (for fonts, colours, borders and other decoration), not a layout language (for blocks with positions, sizes, margins, and so on). These limitations mean that creating fluid layouts generally requires hand-coding of CSS, and has held back the development of a standards-based <span>WYSIWYG</span> editor.<sup style="display:none;" class="Template-Fact" style="white-space: nowrap;">[<i><span>citation needed</span></i>]</sup>.</dd>

	<dt>
		Selectors are unable to ascend</dt>
	<dd>
		CSS offers no way to select a parent or ancestor of an element that satisfies certain criteria. A more advanced selector scheme (such as <span>XPath</span>) would enable more sophisticated style sheets. However, the major reasons for the CSS Working Group rejecting proposals for parent selectors are related to browser performance and incremental rendering issues.<sup style="display:none;" class="Template-Fact" style="white-space: nowrap;">[<i><span>citation needed</span></i>]</sup></dd>
	<dt>

		Vertical control limitations&nbsp;</dt>
	<dd>
		While horizontal placement of elements is generally easy to control, vertical placement is frequently unintuitive, convoluted, or impossible. Simple tasks, such as centering an element vertically or getting a footer to be placed no higher than bottom of viewport, either require complicated and unintuitive style rules, or simple but widely unsupported rules.<sup style="display:none;" class="noprint Inline-Template" style="white-space: nowrap;">[<i><span>clarification needed</span></i>]</sup></dd>
	<dt>
		Absence of expressions&nbsp;</dt>
	<dd>

		There is currently no ability to specify property values as simple expressions (such as <code>margin-left: 10% - 3em + 4px;</code>). This would be useful in a variety of cases, such as calculating the size of columns subject to a constraint on the sum of all columns. However, a <span>working draft</span> with a calc() value to address this limitation has been published by the CSS WG.<sup style="display:none;" class="reference" id="cite_ref-29"><span><span>[</span>30<span>]</span></span></sup> Internet Explorer versions 5 to 7 support a proprietary expression() statement,<sup style="display:none;" class="reference" id="cite_ref-properties1_30-0"><span><span>[</span>31<span>]</span></span></sup> with similar functionality. This proprietary expression() statement is no longer supported from Internet Explorer 8 onwards, except in compatibility modes. This decision was taken for "standards compliance, browser performance, and security reasons".<sup style="display:none;" class="reference" id="cite_ref-properties1_30-1"><span><span>[</span>31<span>]</span></span></sup></dd>

	<dt>
		Lack of column declaration&nbsp;</dt>
	<dd>
		While possible in current CSS, layouts with multiple columns can be complex to implement. With the current CSS, the process is often done using floating elements, which are often rendered differently by different browsers, different computer screen shapes, and different screen ratios set on standard monitors.</dd>
	<dt>
		Cannot explicitly declare new scope independently of position&nbsp;</dt>
	<dd>

		Scoping rules for properties such as z-index look for the closest parent element with a position:absolute or position:relative attribute. This odd coupling has undesired effects such as it is impossible to avoid declaring a new scope when one is forced to adjust an element's position, preventing one from using the desired scope of a parent element.</dd>
	<dt>
		Pseudo-class dynamic behavior not controllable&nbsp;</dt>
	<dd>
		CSS implements pseudo-classes that allow a degree of user feedback by conditional application of alternate styles. One CSS pseudo-class, ":hover", is dynamic (equivalent of javascript "onmouseover") and has potential for abuse (e.g., implementing cursor-proximity popups),<sup style="display:none;" class="reference" id="cite_ref-31"><span><span>[</span>32<span>]</span></span></sup> but CSS has no ability for a client to disable it (no "disable"-like property) or limit its effects (no "nochange"-like values for each property).</dd>

</dl>
<h2>
	<span class="mw-headline" id="Advantages">Advantages</span></h2>
<dl>
	<dt>
		Flexibility</dt>
	<dd>
		By combining CSS with the functionality of a <span class="mw-redirect">Content Management System</span>, a considerable amount of flexibility can be programmed into content submission forms. This allows a contributor, who may not be familiar or able to understand or edit CSS or HTML code to select the layout of an article or other page they are submitting on-the-fly, in the same form. For instance, a contributor, editor or author of an article or page might be able to select the number of columns and whether or not the page or article carries an image. This information is then passed to the Content Management System, and the program logic evaluates the information and determines, based on a certain number of combinations, how to apply classes and IDs to the HTML elements, therefore styling and positioning them according to the pre-defined CSS for that particular layout type. When working with large-scale, complex sites, with many contributors such as news and informational sites, this advantage weighs heavily on the feasibility and maintenance of the project.</dd>

	<dt>
		Separation of content from presentation</dt>
	<dd>
		CSS facilitates publication of content in multiple presentation formats based on nominal parameters. Nominal parameters include explicit user preferences, different web browsers, the type of device being used to view the content (a desktop computer or mobile Internet device), the geographic location of the user and many other variables.</dd>
	<dt>
		Site-wide consistency</dt>
	<dd>

		<div class="rellink relarticle mainarticle">
			Main articles: <span>Separation of presentation and content</span> and <span>Style sheet (web development)</span></div>
		<br>
		When CSS is used effectively, in terms of inheritance and "cascading," a global style sheet can be used to affect and style elements site-wide. If the situation arises that the styling of the elements should need to be changed or adjusted, these changes can be made by editing rules in the global style sheet. Before CSS, this sort of maintenance was more difficult, expensive and time-consuming.</dd>

	<dt>
		Bandwidth</dt>
	<dd>
		A style sheet is usually stored in the browser <span>cache</span>, and can therefore be used on multiple pages without being reloaded, reducing data transfer over a network.</dd>
	<dt>
		Page reformatting</dt>

	<dd>
		<div class="rellink relarticle mainarticle">
			Main article: <span>Progressive enhancement</span></div>
		<br>
		With a simple change of one line, a different style sheet can be used for the same page. This has advantages for accessibility, as well as providing the ability to tailor a page or site to different target devices. Furthermore, devices not able to understand the styling still display the content.</dd>
</dl>
<h2>
	<span class="mw-headline" id="CSS_framework">CSS framework</span></h2>

<p>
	A CSS <span>framework</span> is a pre-prepared <span>library</span> that is meant to allow for easier, more <span>standards-compliant</span> styling of <span>web pages</span> using the Cascading Style Sheets language. Like programming and scripting language libraries, CSS frameworks are usually incorporated as external .css sheets referenced in the HTML <code>&lt;head&gt;</code>. They provide a number of ready-made options for designing and laying out the web page. While many of these frameworks have been published, some authors use them mostly for rapid prototyping, or for learning from, and prefer to 'handcraft' CSS that is appropriate to each published site without the design, maintenance and download overhead of having many unused features in the site's styling.<sup style="display:none;" class="reference" id="cite_ref-32"><span><span>[</span>33<span>]</span></span></sup></p>

<h2>
	<span class="mw-headline" id="Positioning">Positioning</span></h2>
<p>
	CSS 2.1 defines three positioning schemes:</p>
<dl>
	<dt>
		Normal flow</dt>
	<dd>
		<i>Inline</i> items are laid out in the same way as the letters in words in text, one after the other across the available space until there is no more room, then starting a new line below. <i>Block</i> items stack vertically, like paragraphs and like the items in a bulleted list. Normal flow also includes relative positioning of block or inline items, and run-in boxes.</dd>

	<dt>
		Floats</dt>
	<dd>
		A floated item is taken out of the normal flow and shifted to the left or right as far as possible in the space available. Other content then flows alongside the floated item.</dd>
	<dt>
		Absolute positioning</dt>
	<dd>

		An absolutely positioned item has no place in, and no effect on, the normal flow of other items. It occupies its assigned position in its container independently of other items.<sup style="display:none;" class="reference" id="cite_ref-W3C-positioning_33-0"><span><span>[</span>34<span>]</span></span></sup></dd>
</dl>
<h3>
	<span class="mw-headline" id="Position:_top.2C_bottom.2C_left.2C_and_right">Position: top, bottom, left, and right</span></h3>
<p>
	There are four possible values of the <code>position</code> property. If an item is positioned in any way other than <code>static</code>, then the further properties <code>top</code>, <code>bottom</code>, <code>left</code>, and <code>right</code> are used to specify offsets and positions.</p>

<dl>
	<dt>
		Static</dt>
	<dd>
		The default value places the item in the <i>normal flow</i></dd>
	<dt>
		Relative</dt>

	<dd>
		The item is placed in the <i>normal flow</i>, and then shifted or offset from that position. Subsequent flow items are laid out as if the item had not been moved</dd>
	<dt>
		Absolute</dt>
	<dd>
		Specifies <i>absolute positioning</i></dd>

	<dt>
		Fixed</dt>
	<dd>
		The item is <i>absolutely positioned</i> in a fixed position on the screen even as the rest of the document is scrolled<sup style="display:none;" class="reference" id="cite_ref-W3C-positioning_33-1"><span><span>[</span>34<span>]</span></span></sup></dd>
</dl>

<h3>
	<span class="mw-headline" id="Float_and_clear">Float and clear</span></h3>
<p>
	The <code>float</code> property may have one of three values. <i>Absolutely</i> positioned or <i>fixed</i> items cannot be floated. Other elements normally flow around floated items, unless they are prevented from doing so by their <code>clear</code> property.</p>

<dl>
	<dt>
		left</dt>
	<dd>
		<i>Floats</i> to the left of the line that it would have appeared in; other items may flow around its right side</dd>
	<dt>
		right</dt>

	<dd>
		<i>Floats</i> to the right of the line that it would have appeared in; other items may flow around its left side</dd>
	<dt>
		none</dt>
	<dd>
		Removes the <i>float</i> property from an item<sup style="display:none;" class="reference" id="cite_ref-W3C-positioning_33-2"><span><span>[</span>34<span>]</span></span></sup><sup style="display:none;" class="reference" id="cite_ref-34"><span><span>[</span>35<span>]</span></span></sup></dd>

</dl>
<!-- end content here -->

<jsp:include page="contentFooter.jsp"/>
