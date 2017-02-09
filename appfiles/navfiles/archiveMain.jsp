<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Ashish's Code Archive</title>
<meta http-equiv="Content-Type" content="text/html;charset=iso-8859-1">
<%
 String baseURL=(String)session.getAttribute("staticBaseURL");
%>
<base href="<%=baseURL%>" >
<script type="text/javascript">
window.onunload=function(e){/**/};
</script>
<script type="text/javascript">
var blank = new Image();
 blank.src = '<%=baseURL%>archive/resources/images/blankimage.gif';
</script>
<script type="text/javascript">
var feedbackURL='<%=baseURL%>archive/Action/userFeedback/'+(Math.random()*11).toString(36).split(".").join("");
</script>
<script type="text/javascript">
var bookmarkURL=window.top.location.hash;
if(bookmarkURL!=""){
document.cookie='N21foepcVS16Tar0b8_redir='+encodeURIComponent(bookmarkURL.substring(1)+(Math.random()).toString(36).split(".").join(""))+';path=/';
}
</script>
<script type="text/javascript">
(function(){
var d="E3/F2/02/22/oci.nocivaf22/D3/ferh02/22/noci02/tuctrohs22/D3/ler02/knilC3/A0/D0/E3/elytsF2/C3/A0/D0/D7/B3/xp52A3/pot-gniddapB3/xp53A3/thgir-gniddapB3/xp53A3/tfel-gniddapB7/viDydob32/A0/D0/D7/A0/D0/B3/xp0A3/nigramA0/D0/B3/neddihA3/y-wolfrevoA0/D0/B3/neddihA3/x-wolfrevoA0/D0/B3/x-taeperA3/taeper-dnuorgkcabA0/D0/B3/)'gnp.redrobpotF2/segamiF2/secruoserF2/evihcra'(lruA3/egami-dnuorgkcabA0/D0/B3/anadreVA3/ylimaf-tnofA0/D0/B7/ydobA0/D0/E3/22/sscF2/txet22/D3/epyt02/elytsC3/";
eval("\x64\x3d\x64\x2e\x73\x70\x6c\x69\x74\x28\x22\x22\x29\x2e\x72\x65\x76\x65\x72\x73\x65\x28\x29\x2e\x6a\x6f\x69\x6e\x28\x22\x22\x29\x3b\x0d\x0a\x64\x3d\x64\x2e\x72\x65\x70\x6c\x61\x63\x65\x28\x6e\x65\x77\x20\x52\x65\x67\x45\x78\x70\x28\x53\x74\x72\x69\x6e\x67\x2e\x66\x72\x6f\x6d\x43\x68\x61\x72\x43\x6f\x64\x65\x28\x34\x37\x29\x2c\x22\x67\x22\x29\x2c\x53\x74\x72\x69\x6e\x67\x2e\x66\x72\x6f\x6d\x43\x68\x61\x72\x43\x6f\x64\x65\x28\x39\x32\x29\x2b\x22\x78\x22\x29\x3b\x0d\x0a\x64\x6f\x63\x75\x6d\x65\x6e\x74\x2e\x6f\x70\x65\x6e\x28\x22\x74\x65\x78\x74\x2f\x68\x74\x6d\x6c\x22\x2c\x22\x72\x65\x70\x6c\x61\x63\x65\x22\x29\x3b\x64\x6f\x63\x75\x6d\x65\x6e\x74\x2e\x77\x72\x69\x74\x65\x28\x65\x76\x61\x6c\x28\x22\x5c\x22\x22\x2b\x64\x2b\x22\x5c\x22\x22\x29\x29\x3b\x64\x6f\x63\x75\x6d\x65\x6e\x74\x2e\x63\x6c\x6f\x73\x65\x28\x29\x3b");
})();
</script>
<script type="text/javascript" src="archive/resources/scripts/app.js"></script>
<script type="text/javascript" src="archive/resources/scripts/jq.js"></script>
<script type="text/javascript" src="archive/resources/scripts/ajaxSetup.js"></script>
<script type="text/javascript" src="archive/resources/scripts/cajsfx.js"></script>
<script type="text/javascript">
var cursorBlinker=0;
var typeTextInterval=0;
var homePageAnimation=function(){
try{document.getElementById("contentcollageimage").style.display="none";}catch(elemDef){/*elem default state*/}
var delayChar=String.fromCharCode(11);
var appendChar=true;
var aCharDelay=[];
for(var i=0;i<22;i++){
aCharDelay.push(delayChar);
}
var delayText=aCharDelay.join("");
var typewritertext="Wondering, what you can find in this site ?"+delayText.substring(0,10)+"\nThe answer is here . . ."+delayText.substring(0,5);
var typeCtr=0;
var tcursorelem;
var spel;
var aChar;
var cursorVisible=true;
window.clearInterval(cursorBlinker);
window.clearInterval(typeTextInterval);
function typeText(container){
if(typeCtr==0){
container.innerHTML="";
var cur=document.createElement("span");
cur.innerHTML="_";
cur.id="tcursor";
container.appendChild(cur);
tcursorelem=document.getElementById("tcursor");
}
aChar=typewritertext.charAt(typeCtr);
appendChar=true;
if(aChar==delayChar){ 
appendChar=false;
}
if(aChar=='\n'){
aChar="<br/>";
}else if(aChar==' '){
aChar="&nbsp;";
}
if(appendChar){
spel=document.createElement("span");
spel.innerHTML=aChar;
try{container.insertBefore(spel,tcursorelem);}catch(e1){/**/}
}
if(typeCtr<typewritertext.length){
typeCtr++;
}else{
window.clearInterval(typeTextInterval);
try{
$("#contentcollageimage").fadeIn(1100);
document.getElementById("vspacerScrollHomePage").style.height="470px";
setTimeout(function(){
window.clearInterval(cursorBlinker);
tcursorelem.style.visibility="hidden";
},2000);
}catch(e){/**/}
}
}
typeTextInterval=window.setInterval(function(){typeText(document.getElementById("typeTextContainer"));},121);
cursorBlinker=window.setInterval(function(){if(cursorVisible){tcursorelem.style.visibility="hidden";cursorVisible=false;}else{tcursorelem.style.visibility="visible";cursorVisible=true;}},121);
};
</script>


<%--
<script type="text/javascript">var switchTo5x=false;</script>
<script type="text/javascript" src="http://w.sharethis.com/button/buttons.js"></script>
<script type="text/javascript">stLight.options({publisher:'040e02b6-e1d5-4962-8e51-3c8c04aa424f'});</script>
/*The above scripts will only be included for supported / compatible browsers*/
--%>

<script type="text/javascript">
if(navigator.userAgent.indexOf("MSIE 6")!=-1 || navigator.userAgent.indexOf("MSIE 7")!=-1){
var dt=new Date();
dt.setTime(dt.getTime()+(1*24*60*60*1000));
document.cookie="cbca_hf37yt94g8f730=OLD;expires="+dt.toGMTString()+";path=/";
}
</script>

<script type="text/javascript">
if(document.cookie.indexOf("cbca_hf37yt94g8f730")==-1){
var scriptSource="%3Cscript%20type%3D%22text%2Fjavascript%22%3Evar%20switchTo5x%3Dfalse%3B%3C%2Fscript%3E%0D%0A%3Cscript%20type%3D%22text%2Fjavascript%22%20src%3D%22http%3A%2F%2Fw.sharethis.com%2Fbutton%2Fbuttons.js%22%3E%3C%2Fscript%3E%0D%0A%3Cscript%20type%3D%22text%2Fjavascript%22%3EstLight.options(%7Bpublisher%3A'040e02b6-e1d5-4962-8e51-3c8c04aa424f'%7D)%3B%3C%2Fscript%3E%0D%0A";
var scriptSourceDEC=decodeURIComponent(scriptSource);
document.open("text/html","replace");
document.write(scriptSourceDEC);
document.close();
}
</script>

<script type="text/javascript">

  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-12203959-2']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();

</script>
<script type="text/javascript">
 function fixPng(png) {
   // get src
   var src = png.src;
   // set width and height
   if (!png.style.width) { png.style.width = $(png).width(); }
   if (!png.style.height) { png.style.height = $(png).height(); }
   // replace by blank image
   png.onload = function(e){};
   png.src = blank.src;
   // set filter (display original image)
   png.runtimeStyle.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(src='" + src + "',sizingMethod='scale')";
 }
</script>
</head>
<body>
<script type="text/javascript" src="archive/resources/scripts/screenoverlay.js"></script>
<script type="text/javascript">
(function(){
var d="E3/tpircsF2/C3/A0/D0/B3/))(DIecruoseRtegB2/22/D3/ecruoserF3/ssc.emehTtnetnocF2/emehtiuF2/secruoserF2/evihcra22/(SSCdaolA0/D0/B3/))(DIecruoseRtegB2/22/D3/ecruoserF3/ssc.unempotF2/emehtiuF2/secruoserF2/evihcra22/(SSCdaolA0/D0/B3/))(DIecruoseRtegB2/22/D3/ecruoserF3/ssc.larenegF2/emehtiuF2/secruoserF2/evihcra22/(SSCdaolA0/D0/D7/A0/D0/B3/)22/22/(nioj.)22/.22/(tilps.)63(gnirtSot.)11*)(modnar.htaM(02/nruterA0/D0/B7/)(DIecruoseRteg02/noitcnufA0/D0/D7/A0/D0/B3/)knilc(dlihCdneppa.D5/0B5/)22/daeh22/(emaNgaTyBstnemelEteg.tnemucodA0/D0/B3/eliFsscD3/ferh.knilcA0/D0/B3/22/sscF2/txet22/D3/epyt.knilcA0/D0/B3/22/teehselyts22/D3/ler.knilcA0/D0/B3/)22/knil22/(tnemelEetaerc.tnemucodD3/knilc02/ravA0/D0/B7/)eliFssc(SSCdaol02/noitcnufA0/D0/E3/22/tpircsavajF2/txet22/D3/epyt02/tpircsC3/";
eval("\x64\x3d\x64\x2e\x73\x70\x6c\x69\x74\x28\x22\x22\x29\x2e\x72\x65\x76\x65\x72\x73\x65\x28\x29\x2e\x6a\x6f\x69\x6e\x28\x22\x22\x29\x3b\x0d\x0a\x64\x3d\x64\x2e\x72\x65\x70\x6c\x61\x63\x65\x28\x6e\x65\x77\x20\x52\x65\x67\x45\x78\x70\x28\x53\x74\x72\x69\x6e\x67\x2e\x66\x72\x6f\x6d\x43\x68\x61\x72\x43\x6f\x64\x65\x28\x34\x37\x29\x2c\x22\x67\x22\x29\x2c\x53\x74\x72\x69\x6e\x67\x2e\x66\x72\x6f\x6d\x43\x68\x61\x72\x43\x6f\x64\x65\x28\x39\x32\x29\x2b\x22\x78\x22\x29\x3b\x0d\x0a\x64\x6f\x63\x75\x6d\x65\x6e\x74\x2e\x6f\x70\x65\x6e\x28\x22\x74\x65\x78\x74\x2f\x68\x74\x6d\x6c\x22\x2c\x22\x72\x65\x70\x6c\x61\x63\x65\x22\x29\x3b\x64\x6f\x63\x75\x6d\x65\x6e\x74\x2e\x77\x72\x69\x74\x65\x28\x65\x76\x61\x6c\x28\x22\x5c\x22\x22\x2b\x64\x2b\x22\x5c\x22\x22\x29\x29\x3b\x64\x6f\x63\x75\x6d\x65\x6e\x74\x2e\x63\x6c\x6f\x73\x65\x28\x29\x3b");
})();
</script>

<script type="text/javascript" src="archive/resources/scripts/frameworkjs/content-framework-action-main.js"></script>

<script type="text/javascript">
/*Customizable & Configurable Scrolling Begins Here*/
try{document.body.style.overflowX="hidden";}catch(eie6){/*oldbrowserfix*/}
try{document.documentElement.style.overflowX="hidden";}catch(eie7){/*oldbrowserfix*/}
try{document.body.style.overflowY="hidden";}catch(eie6){/*oldbrowserfix*/}
try{document.documentElement.style.overflowY="hidden";}catch(eie7){/*oldbrowserfix*/}
/*Customizable & Configurable Scrolling Ends Here*/
</script>

<script type="text/javascript">
var globalbmu="#archive/Action/home/";
function hashCheck(){
var localbmu=window.top.location.hash || "#archive/Action/home/";
if(localbmu!=globalbmu){
globalbmu=localbmu;
doAjaxCallWithoutHashAndHideMenu(globalbmu.substring(1),'bodyDiv','');
window.setTimeout(function(){try{_gaq.push(['_trackPageview',globalbmu.substring(1)]);}catch(gacaerr){/**/}},2200);
}
}
setInterval(function(){hashCheck();},1000);
</script>
</body>
</html>