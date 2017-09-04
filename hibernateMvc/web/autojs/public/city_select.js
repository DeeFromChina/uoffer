var data;
function init(){
//	setMap();
	var url = "baseData.do?action=getCity";
	data = ajaxSumbit(url);
	var countryData = treeToSelect(data);
	setList("country","请选择您的国家",countryData,0,"subProvince(this)");
	setList("province","请选择您的省份","",0,"");
}
function subProvince(obj){
	var id = obj.id;
	console.log(id);
	var provinceData = treeToSelect(data,id);
	setList("province","请选择您的省份",provinceData,0,"subCity(this)");
}
function subCity(){
	
}