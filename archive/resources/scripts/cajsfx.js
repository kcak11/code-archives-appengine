var ImageLoader=function(parentDivID,imgURL,imgWidth,imgHeight){
	var loadinghtml="<br/>&nbsp;&nbsp;<img src='archive/resources/images/loader.png' style='width:267px;height:65px;'/>";
	var loadImageInBrowser=function(htmlContent){
		var containerElem=document.getElementById(parentDivID);
		if(imgWidth>=267){containerElem.style.width=imgWidth+"px";}else{containerElem.style.width="280px";}
		if(imgHeight>=65){containerElem.style.height=imgHeight+"px";}else{containerElem.style.height="75px";}
		containerElem.style.border="2px solid #000000";
		var animationElem=document.createElement("div");
		if(htmlContent==""){
			animationElem.innerHTML=loadinghtml;
		}else{
			animationElem.innerHTML=htmlContent;
		}
		containerElem.appendChild(animationElem);
		var imgElem=document.createElement("img");
		imgElem.style.width=imgWidth+"px";
		imgElem.style.height=imgHeight+"px";
		imgElem.style.display="none";
		imgElem.src=imgURL;
		var imgTimer=setInterval(function(){
			if(imgElem.complete){
				clearInterval(imgTimer);
				setTimeout(function(){containerElem.style.border="none";
				animationElem.style.display="none";
				imgElem.style.display="block";},1100);
			}
		},200);
		containerElem.appendChild(imgElem);
	};

	this.loadImage=function(htmlContent){
		if(htmlContent){
			loadImageInBrowser(htmlContent);			
		}else{
			loadImageInBrowser("");			
		}
	};
};