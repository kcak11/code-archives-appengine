function getXmlHttpRequestObject(){
var xmlhttpreq;
try{
xmlhttpreq=new ActiveXObject("Msxml2.XMLHTTP");
}catch(e){
try{
xmlhttpreq=new ActiveXObject("Microsoft.XMLHTTP");
}catch(e){
try{
xmlhttpreq=new XMLHttpRequest();
}catch(e){
xmlhttpreq=false;
}
}
}
return xmlhttpreq;
}
function doAjaxCall(url,targetContainerId,params){
var checkStatus=((window.location+"").indexOf("file:///")==-1)?200:0;
var xhr=getXmlHttpRequestObject();
xhr.open("POST",url,true);
xhr.setRequestHeader("Content-type","application/x-www-form-urlencoded");
xhr.setRequestHeader("Connection","close");
xhr.onreadystatechange=function(){
if(xhr.readyState==4 && xhr.status==checkStatus){
document.getElementById(targetContainerId).innerHTML=parseRequiredContent(xhr.responseText,"%3Cdiv%20id%3D%22SHMC9GxhviVNtXv6C5B17FV5zTAaGE33kHRmIc2aximoPf%22%20style%3D%22display%3Anone%3B%22%3E%20%3C%2Fdiv%3E","%3Cdiv%20id%3D%22EHMC9GxhviVNtXv6C5B17FV5zTAaGE33kHRmIc2aximoPf%22%20style%3D%22display%3Anone%3B%22%3E%20%3C%2Fdiv%3E");
}
};
xhr.send(params);
}

var eCode="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";

function _getEKey(){var st=(Math.random()*Math.pow(2,11));return eCode.substring(st,st+Math.pow(11,2))+String.fromCharCode(47)+"+"+(Math.random()*11).toString(36).split(".").join("");}

function parseRequiredContent(content,start,end){
var sstr=decodeURIComponent(start);
var estr=decodeURIComponent(end);
var sindex=content.indexOf(sstr);
var eindex=content.indexOf(estr);
var retVal="";
retVal=content.substring(sindex+sstr.length,eindex);
return retVal;
}