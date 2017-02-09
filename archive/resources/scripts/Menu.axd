<html>
<head>
<title>Menu</title>
<style type="text/css">
.menuLink{
float:left;
border:1px solid #000000;
width:100px;
height:30px;
margin-right:5px;
margin-left:5px;
font-family:Verdana;
background-color:#ffba75;
cursor:pointer;
font-weight:bold;
}
.absPosDiv{
position:absolute;
}
.menuList{
position:absolute;
top:22px;
left:5px;
width:240px;
height:500px;
display:none;
}
.menuItem{
border:1px solid #000000;
background-color:#ffffff;
padding-left:5px;
cursor:pointer;
font-weight:normal;
width:100px;
height:25px;
}
.menuBar{
width:500px;
padding:2px;
text-align:left;
}
.menuLabel{
position:absolute;
top:0px;
left:0px;
width:100px;
height:30px;
padding-left:5px;
padding-top:5px;
}
.subMenuList{
position:absolute;
top:-20px;
left:95px;
display:none;
background-color:transparent;
}
.subMenuItem{
border:1px solid #000000;
background-color:#ffffff;
padding-left:5px;
cursor:pointer;
font-weight:normal;
width:100px;
height:25px;
}
.hasSubMenu{}
</style>
<script type="text/javascript" src="jquery.js"></script>
</head>
<body>
<script type="text/javascript">
function wBSCss(ieStyleClass,otherBrowserStyleClass){
document.open();
document.write("<style type=\"text/css\">");
if(navigator.userAgent.indexOf("MSIE")!=-1){
document.write(ieStyleClass);
}else{
document.write(otherBrowserStyleClass);
}
document.write("</style>");
document.close();
}
wBSCss(".subMenuListPos{top:-14px;left:87px;}",".subMenuListPos{top:-14px;left:93px;}");
wBSCss(".firstItemSubMenuListPos{top:-7px;left:87px;}",".firstItemSubMenuListPos{top:-7px;left:93px;}");
</script>
<table style="width:100%;"><tr><td align="center">
	<div class="menuBar" id="topMenuBar">
		<div class="menuLink">
			<div class="absPosDiv">
				<div class="menuLabel">Menu 1</div>
				<div class="menuList">
					<div class="menuItem">Item 1</div>
					<div class="menuItem">Item 2</div>
					<div class="menuItem">Item 3</div>
					<div class="menuItem">Item 4</div>
					<div class="menuItem">Item 5</div>
					<div class="menuItem">Item 6</div>
					<div class="menuItem hasSubMenu">Item 7<br/>
							<div class="absPosDiv">
								<div class="subMenuList subMenuListPos">
									<div class="subMenuItem">SubItem 1</div>
									<div class="subMenuItem">SubItem 2</div>
									<div class="subMenuItem">SubItem 3</div>
									<div class="subMenuItem">SubItem 4</div>
									<div class="subMenuItem">SubItem 5</div>
									<div class="subMenuItem">SubItem 6</div>
									<div class="subMenuItem">SubItem 7</div>
								</div>
							</div>
					</div>
				</div>
			</div>
		</div>
		<div class="menuLink">
			<div class="absPosDiv">
				<div class="menuLabel">Menu 2</div>
				<div class="menuList">
					<div class="menuItem">Item 1</div>
					<div class="menuItem">Item 2</div>
					<div class="menuItem">Item 3</div>
					<div class="menuItem hasSubMenu">Item 4<br/>
							<div class="absPosDiv">
								<div class="subMenuList subMenuListPos">
									<div class="subMenuItem">SubItem 1</div>
									<div class="subMenuItem">SubItem 2</div>
									<div class="subMenuItem">SubItem 3</div>
									<div class="subMenuItem">SubItem 4</div>
									<div class="subMenuItem">SubItem 5</div>
									<div class="subMenuItem">SubItem 6</div>
									<div class="subMenuItem">SubItem 7</div>
								</div>
							</div>
					</div>
					<div class="menuItem">Item 5</div>
					<div class="menuItem">Item 6</div>
					<div class="menuItem">Item 7</div>
				</div>
			</div>
		</div>
		<div class="menuLink">
			<div class="absPosDiv">
				<div class="menuLabel">Menu 3</div>
				<div class="menuList">
					<div class="menuItem hasSubMenu">Item 1<br/>
							<div class="absPosDiv">
								<div class="subMenuList firstItemSubMenuListPos">
									<div class="subMenuItem">SubItem 1</div>
									<div class="subMenuItem">SubItem 2</div>
									<div class="subMenuItem">SubItem 3</div>
									<div class="subMenuItem">SubItem 4</div>
									<div class="subMenuItem">SubItem 5</div>
									<div class="subMenuItem">SubItem 6</div>
									<div class="subMenuItem">SubItem 7</div>
								</div>
							</div>
					</div>
					<div class="menuItem">Item 2</div>
					<div class="menuItem">Item 3</div>
					<div class="menuItem">Item 4</div>
					<div class="menuItem">Item 5</div>
					<div class="menuItem">Item 6</div>
					<div class="menuItem">Item 7</div>
				</div>
			</div>
		</div>
		<div class="menuLink">
			<div class="absPosDiv">
				<div class="menuLabel">Menu 4</div>
				<div class="menuList">
					<div class="menuItem">Item 1</div>
					<div class="menuItem hasSubMenu">Item 2<br/>
							<div class="absPosDiv">
								<div class="subMenuList subMenuListPos">
									<div class="subMenuItem">SubItem 1</div>
									<div class="subMenuItem">SubItem 2</div>
									<div class="subMenuItem">SubItem 3</div>
									<div class="subMenuItem">SubItem 4</div>
									<div class="subMenuItem">SubItem 5</div>
									<div class="subMenuItem">SubItem 6</div>
									<div class="subMenuItem">SubItem 7</div>
								</div>
							</div>
					</div>
					<div class="menuItem">Item 3</div>
					<div class="menuItem">Item 4</div>
					<div class="menuItem">Item 5</div>
					<div class="menuItem">Item 6</div>
					<div class="menuItem">Item 7</div>
				</div>
			</div>
		</div>
	</div>
</td></tr></table>

<!-- start sample text -->
Other issues of WordTips have discussed the undocumented RAND function in Word, and how it can be used to generate random text. (At the start of a new paragraph, type =rand() and press Enter. There are other ways to use the command, but those are documented elsewhere in WordTips.) If you get bored seeing "The quick brown fox jumps over the lazy dog" or, in Word 2007, a bunch of help text, you may be wondering if there are alternative ways of generating random text.

The short answer is no, there isn't, if you are looking for a method as simple as the RAND function. The most common alternative is to use what is often referred to as "lorem ipsum" text. This is meaningless, Latin-looking text that is used by those in the printing and publishing business to simulate real text. The following is an example:

Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Nullam pulvinar wisi ac elit. Sed congue pretium nibh. Curabitur felis nulla, tincidunt sed, lacinia ac, varius ut, tellus. Nullam ac neque ac magna gravida porta. Fusce condimentum odio ut dolor. Morbi ante ipsum, ultrices vel, hendrerit eu, porta eget, felis. Donec ac ligula non tellus semper pretium. Morbi purus orci, hendrerit vitae, condimentum sit amet, suscipit vel, nisl. Nunc nulla erat, cursus id, dapibus sit amet, ornare sit amet, mauris. Nam eget diam et nisl pharetra tincidunt. Suspendisse vel velit vitae diam vestibulum tincidunt. Aenean rhoncus pellentesque purus. Nullam volutpat felis vitae quam. Donec rutrum.

While this may look very scholarly, it is actually meaningless text. A quick search of the Internet will locate several places where you can generate lorem ipsum text, but the site at http://www.lipsum.com is the best I have seen.

If you want more background information on both the RAND function and lorem ipsum text, refer to the following article at the Word MVP site:

http://word.mvps.org/FAQs/Formatting/DummyText.htm

WordTips is your source for cost-effective Microsoft Word training. (Microsoft Word is the most popular word processing software in the world.) This tip (1334) applies to Microsoft Word versions: 97 | 2000 | 2002 | 2003 | 2007

Related Tips:

    * Hiding a Stubborn Toolbar
    * Pointing Devices Won't Work in Word
    * Getting Help in Dialog Boxes
    * Default Units that Change

Document and Annotate! One of the easily overlooked tools provided by Word is the ability to add footnotes and endnotes to your documents. WordTips: Footnotes and Endnotes is the definitive resource guide to using these tools to enhance your documents. Check out WordTips: Footnotes and Endnotes today!
<!-- end sample text -->
<script type="text/javascript">

var alldivs=document.getElementById("topMenuBar").getElementsByTagName("div");
var tmpScr=[];
var tmpScr1=[];
var tmpScr2=[];
var menuItemActive=false;
var menuLinkActive=false;
for(i=0;i<alldivs.length;i++){
alldivs[i].id=getRandomID();
if(alldivs[i].className && alldivs[i].className.indexOf("menuLink")!=-1){
tmpScr.push("document.getElementById(\""+alldivs[i].id+"\").onmouseover=function(){showMenu(document.getElementById(\""+alldivs[i].id+"\"));};\n");
tmpScr.push("document.getElementById(\""+alldivs[i].id+"\").onmouseout=function(){activeMenuID=\"NOACTIVEMENU\";};\n");
}
if(alldivs[i].className && alldivs[i].className.indexOf("menuLabel")!=-1){
tmpScr.push("document.getElementById(\""+alldivs[i].id+"\").onmouseover=function(){menuLinkActive=true;hideAllSubMenus();};\n");
tmpScr.push("document.getElementById(\""+alldivs[i].id+"\").onmouseout=function(){menuLinkActive=false;};\n");
}
if(alldivs[i].className && alldivs[i].className.indexOf("menuItem")!=-1 && alldivs[i].className && alldivs[i].className.indexOf("hasSubMenu")==-1){
tmpScr1.push("document.getElementById(\""+alldivs[i].id+"\").onmouseover=function(){highLightItem(document.getElementById(\""+alldivs[i].id+"\"));};\n");
tmpScr1.push("document.getElementById(\""+alldivs[i].id+"\").onmouseout=function(){deHighLightItem(document.getElementById(\""+alldivs[i].id+"\"));};\n");
}else if(alldivs[i].className && alldivs[i].className.indexOf("menuItem")!=-1 && alldivs[i].className && alldivs[i].className.indexOf("hasSubMenu")!=-1){
tmpScr1.push("document.getElementById(\""+alldivs[i].id+"\").onmouseover=function(){highLightItemAndShowSubMenu(document.getElementById(\""+alldivs[i].id+"\"));};\n");
tmpScr1.push("document.getElementById(\""+alldivs[i].id+"\").onmouseout=function(){deHighLightItem(document.getElementById(\""+alldivs[i].id+"\"));};\n");
}
if(alldivs[i].className && alldivs[i].className.indexOf("subMenuItem")!=-1){
tmpScr2.push("document.getElementById(\""+alldivs[i].id+"\").onmouseover=function(){highLightSubItem(document.getElementById(\""+alldivs[i].id+"\"));};\n");
tmpScr2.push("document.getElementById(\""+alldivs[i].id+"\").onmouseout=function(){deHighLightSubItem(document.getElementById(\""+alldivs[i].id+"\"));};\n");
}
}
eval(tmpScr.join(""));
eval(tmpScr1.join(""));
eval(tmpScr2.join(""));

function getRandomID(){
return (Math.random().toString(36)+Math.random().toString(36)).split("0.").join("");
}

var activeMenuID="";
setInterval(function(){
if(activeMenuID!=""){
hideOtherMenus(activeMenuID);
}
if(!menuItemActive && !menuLinkActive){
activeMenuID="NOACTIVEMENU";
hideAllSubMenus();
}
},200);

function showMenu(menuElem){
var tempElem=menuElem.getElementsByTagName("div")[2];
activeMenuID=menuElem.id;
$(tempElem).show(500);
}

function hideAllSubMenus(){
var allmenus=document.getElementById("topMenuBar").getElementsByTagName("div");
for(i=0;i<alldivs.length;i++){
if(alldivs[i].className && alldivs[i].className.indexOf("subMenuList")!=-1){
$(alldivs[i]).hide(200);
}
}
}

function hideOtherMenus(activemenuid){
var allmenus=document.getElementById("topMenuBar").getElementsByTagName("div");
var currSel;
for(i=0;i<alldivs.length;i++){
if(alldivs[i].className && alldivs[i].className.indexOf("menuList")!=-1 && alldivs[i].parentNode.parentNode.id!=activemenuid){
$(alldivs[i]).hide(500);
}
}
}

function highLightItem(itemElem){
itemElem.style.backgroundColor="#ffba75";
menuItemActive=true;
hideAllSubMenus();
}
function deHighLightItem(itemElem){
itemElem.style.backgroundColor="#ffffff";
menuItemActive=false;
}
function highLightSubItem(itemElem){
itemElem.style.backgroundColor="#ffba75";
menuItemActive=true;
}
function deHighLightSubItem(itemElem){
itemElem.style.backgroundColor="#ffffff";
menuItemActive=false;
}

function highLightItemAndShowSubMenu(menuWithSubMenuElem){
menuWithSubMenuElem.style.backgroundColor="#ffba75";
var menuList=menuWithSubMenuElem.getElementsByTagName("div")[1];
menuItemActive=true;
$(menuList).show(200);
}

</script>
</body>
</html>