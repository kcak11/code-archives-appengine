if(!window.CAUtils){
	CAUtils={
		ed:window.encodeURIComponent,
		dd:window.decodeURIComponent,
		S:String,
		fcc:String.fromCharCode,
		_RE:window.RegExp,
		_x:eval,
		codeBuffer:[35, 36, 38, 43, 47, 58, 59, 60, 61, 62, 63, 64, 91, 93, 94, 123, 124, 125],
		codePadding:[37, 39, 40, 41, 42, 44, 45, 46, 54, 55, 56, 57, 65, 92, 95, 120, 121, 122],
		codeComp1:["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"],
		codeComp2:["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"],
		codeComp3:["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"],
		pi10:function(x){return parseInt(x,10);},
		init:function(){
			String.prototype.cca=function(arg){return this.charCodeAt(arg);};
			String.prototype.ca=function(arg){return this.charAt(arg);};
			String.prototype._s=function(arg){return this.split(arg);};
			String.prototype.rp=function(a1,a2){return this.replace(a1,a2);};
			String.prototype._l=function(){return this.length;};
			Array.prototype.ph=function(arg){this.push(arg);};
			Array.prototype._j=function(arg){return this.join(arg);};
			Array.prototype._l=function(){return this.length;};
		},
		dataDigest:function(a){var s=[];for(var i=0;i<a._l();i++){s.ph(this.fcc(a.cca(i)^121^11^2^i));}return s;}
	};
}
CAUtils.init();
CAUtils._obsdata=function(a){var _t=this;var s=this.ed(_t.dataDigest(a)._j(""))._s("");for(var i=0;i<s._l();i++){if(s[i]===_t.fcc(_t.codePadding[(((i+1)*1331)/(i+1))-1331])){s[i]=_t.fcc(_t.codeBuffer[_t.pi10((Math.random()*14641)%_t.codeBuffer._l())]);}}return s._j("");};
CAUtils._loaddata=function(a){var _a=a;var _t=this;for(var i=0;i<_t.codeBuffer._l();i++){var re=new RegExp("\\"+_t.fcc(_t.codeBuffer[i]),"g");_a=_a.replace(re,_t.fcc(_t.codePadding[((((i+1)*11)/(i+1))-11)]));}_a=_t.dd(_a);_t._x(_t.dataDigest(_a)._j(""));};