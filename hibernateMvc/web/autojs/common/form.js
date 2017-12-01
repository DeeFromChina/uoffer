var form = function(param){
	this.value = param.value;
	this.id    = param.id;
	
	f = this;
	
	this.sys = function(){
		alert(this.value);
	}
}