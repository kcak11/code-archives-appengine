<jsp:include page="../contentHeader.jsp">
<jsp:param name="docTitle" value="CodeArchives - Typesafe Enum Design Pattern" />
</jsp:include>


<!-- start content here -->

<div class="dpHeading">
<span style="font-weight:bold;">Typesafe Enum Design Pattern</span>
</div>
<br/>
<br/>
<span style="font-size:16px;border-bottom:2px solid #ff0000;">Graphical Representation:</span>
<br/>
<br/>

<div id="img_typesafeenum">
</div>
<iframe style="display:none;" onload="(function(){new ImageLoader('img_typesafeenum','archive/resources/images/dp/typesafeenum.png',620,481).loadImage();})();"></iframe>

<div>

<br/><br/><h2><span>Definition</span></h2>

<p><span>Define a class representing a
single element of the enumerated type and provide no public constructor. An
enumeration is a new type since Java 5 (jdk1.5). Before jdk1.4, you can create
a similar type that is much better and type safe. This is so-called Typesafe
Enum pattern.</span></p>

<br/><br/><h2><span>Where to use &amp; benefits</span></h2>

<ul type="disc">
 <li><span>Use
     class to present int or String constants if using jdk version below 1.5.</span></li>
 <li><span>Need
     several constants to describe some situations.</span></li>
 <li><a name="#top"><span>Combining with<span> </span></span></a><span><a><span>visitor<span> </span></span></a></span><span>design pattern.</span></li>
 <li><span>Translate
     typedef enum in C/C++/C# if using jdk version below 1.5.</span></li>
</ul>

<p><span>Alter or expand
the class later safely.</span></p>

</div>
<!-- end content here -->

<jsp:include page="../contentFooter.jsp"/>