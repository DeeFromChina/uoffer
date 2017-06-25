<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@include file="/common/header.jsp"%>
<title></title>
<meta name="viewport" content="width=device-width, initial-scale=1" />
</head>
<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=jTB5Q082IG0seSILPcPpvVArxg8iExdU"></script>
<script language="javascript">
	function init(){
		var url = "login/firmInformation2.do";
		var data = ajaxSumbitNoform(url, "123");
		addInformation1(data.information1);
		addchanpin(data.chanpin);
		addxinxi(data.xinxi);
		addnews(data.news);
		addjieshao(data.jieshao);
		addcarousel(data.carousel);
		addjishu(data.jishu);
		addfuli(data.fuli);
		adddizhi(data.dizhi);
	}
	function addInformation1(items){
		var div1 = "<table>"
					+"<tr>"
					+"<td width='200px' rowspan='5'>"
					+"<img src='"+items.photo+"' width='200px' height='200px'/>"
					+"</td>"
					+"<td style='padding-left:100px;'/>"
					+"</tr>"
					+"<tr>"
					+"<td style='padding-left:100px;padding-bottom:10px;' valign='bottom'>"
					+"<font style='font-size:24px;' color='#4F4F4F'>"+items.name+"</font>"
					+"</td>"
					+"</tr>"
					+"<tr>"
					+"<td style='padding-left:100px;' valign='top'><font style='font-size:16px;' color='#4F4F4F'>"+items.descript+"</font></td>"
					+"</tr>"
					+"<tr>"
					+"<td style='padding-left:100px;'><font style='font-size:16px;' color='#4F4F4F'>"+items.allname+"</font></td>"
					+"</tr>"
					+"<tr>"
					+"<td style='padding-left:100px;'><font style='font-size:16px;' color='#00B38A'>"+(items.link==undefined?"": "<a href='"+items.link+"' target='_blank'>" + items.link + "</a>")+"</font></td>"
					+"</tr>"
					+"</table>"
					;
		document.getElementById("information1").innerHTML = div1;
	}
	function addchanpin(item){
		document.getElementById("chanpin").innerText=item;
	}
	function addxinxi(item){
		document.getElementById("firmType").innerText=item.firmType;
		document.getElementById("firmRongzi").innerText=item.firmRongzi;
		document.getElementById("firmSize").innerText=item.firmSize;
		document.getElementById("firmArddess").innerText=item.firmArddess;
		document.getElementById("firmPeople").innerText=item.firmPeople;
	}
	function addjieshao(item){
		document.getElementById("jieshao").innerText=item;
	}
	function addcarousel(items){
		var div1 = "";
		var div2 = "";
		var a = 1;
		var b = 1;
		for(var i in items){
			if(a == 1){
				div1 = div1 + "<li data-target='#myCarousel' data-slide-to='0' class='active'></li>";
				a=2;
			}else{
				div1 = div1 + "<li data-target='#myCarousel' data-slide-to='0'></li>";
			}
			if(b == 1){
				div2 = div2 + "<div class='item active'>"
							+ "<center>"
							+ "<img src='"+items[i].photo+"' width='200px' height='200px'>"
							+ "</center>"
							+ "</div>";
				b=2;
			}else{
				div2 = div2 + "<div class='item'>"
				+ "<center>"
				+ "<img src='"+items[i].photo+"' width='200px' height='200px'>"
				+ "</center>"
				+ "</div>";
			}
		}
		document.getElementById("firmCarousel").innerHTML = div1;
		document.getElementById("firmphotos").innerHTML = div2;
	}
	function addnews(item){
		if (item == undefined) return;
		var nowName = "";
		for (var i in item.split(';')) {
			nowName += item.split(';')[i] + "<br>";
		}
		document.getElementById("news").innerHTML = nowName;
	}
	function addjishu(items){
		var num = 0;
		var div1 = "";
		for(var i in items){
			if(num == 0){
				div1 = div1 + "<tr>";
				div1 = div1 + "<td style='padding-top:10px;'>"
			}
			div1 = div1+"<button type='button' class='btn btn-primary' data-toggle='button' style='cursor:default;background:#FFF;border-color:#9A9A9A;width:100px;color:#9A9A9A;margin-left:20px;'>"
				+items[i].name
				+"</button>";
			num = num + 1;
			if(num == 2){
				div1 = div1 +"</td>";
				div1 = div1 + "</tr>";
				num = 0;
			}
		}
		document.getElementById("jishu").innerHTML = div1;
	}
	function addfuli(items){
		var div1 = "";
		var div2 = "";
		var a = 0;
		for(var i in items){
			if(a < 4){
			div1 = div1 + "<button type='button' class='btn btn-primary' data-toggle='button' style='cursor:default;background:#FFF;border-color:#9A9A9A;max-width:100px;color:#9A9A9A;margin-left:18px;margin-top:20px;'>"
						+items[i].name
						+"</button>";
			}else{
				div2 = div2 + "<button type='button' class='btn btn-primary' data-toggle='button' style='cursor:default;background:#FFF;border-color:#9A9A9A;max-width:100px;color:#9A9A9A;margin-left:18px;margin-top:20px;'>"
				+items[i].name
				+"</button>";
			}
			a = a + 1;
		}
		document.getElementById("fuli").innerHTML = div1;
		document.getElementById("fuli2").innerHTML = div2;
	}
	var firmditu;
	function adddizhi(item){
		firmditu = item.photo;
		dituapi(firmditu);
		//document.getElementById("firmditu").innerHTML = "<img src='"+item.photo+"' width='200px' height='200px'/>";
		document.getElementById("firmName").innerHTML = item.name;
	}
</script>
<body bgcolor="#FFF" onload=" init()">
	<table width="100%">
		<tr height="44px"/>
		<tr>
			<td colspan="2" style="padding:0px 14%;">
				<div style="width:100%;padding:60px 0px 37px 0px;border-bottom:1px #CCCCCC solid;" id="information1">
				</div>
			</td>
		</tr>
		<tr>
			<td width="52%" valign="top" style="padding-left:14%;">
				<div style="width:90%;padding:20px 0px;">
					<table width="90%">
						<tr>
							<td valign="top">
								<font style="font-size:18px;" color="#4F4F4F">公司产品</font>
							</td>
						</tr>
						<tr>
							<td style="padding:20px 0px;">
								<font style="font-size:14px;" class="textL" color="#4F4F4F" style="line-height:20px;" id="chanpin">
								</font>
							</td>
						</tr>
					</table>
				</div>
			</td>
			<td width="48%" style="padding-right:14%;" valign="top">
				<div style="width:100%;padding:20px 0px;border-left:5px #CCCCCC solid;">
					<table width="100%">
						<tr>
							<td style="padding-left:38px;">
								<font style="font-size:18px;" color="#4F4F4F">公司基本信息</font>
							</td>
						</tr>
						<tr>
							<td style="padding:38px 30px;">
								<table style="border-collapse:separate;border-spacing:20px;width:100%">
									<tr>
										<td>
											<img src="../img/type.png" width="18px" height="18px"/>
											<font style="font-size:14px;padding-left:10px;" color="#4F4F4F" id="firmType"></font>
										</td>
									</tr>
									<tr>
										<td>
											<img src="../img/rongzi.png" width="18px" height="18px"/>
											<font style="font-size:14px;padding-left:10px;" color="#4F4F4F" id="firmRongzi"></font>
										</td>
									</tr>
									<tr>
										<td>
											<img src="../img/person.png" width="18px" height="18px"/>
											<font style="font-size:14px;padding-left:10px;" color="#4F4F4F" id="firmSize"></font>
										</td>
									</tr>
									<tr>
										<td>
											<img src="../img/dingwei.png" width="18px" height="18px"/>
											<font style="font-size:14px;padding-left:10px;" color="#4F4F4F" id="firmArddess"></font>
										</td>
									</tr>
									<tr>
										<td>
											<img src="../img/person.png" width="18px" height="18px"/>
											<font style="font-size:14px;padding-left:10px;" color="#4F4F4F" id="firmPeople"></font>
										</td>
									</tr>
								</table>
							</td>
						</tr>
					</table>
				</div>
			</td>
		</tr>
		<tr>
			<td valign="top" style="padding-left:14%;">
				<table width="100%">
					<tr>
						<td valign="top">
							<div style="width:100%;padding:20px 0px;border-bottom:1px #CCCCCC solid;border-top:1px #CCCCCC solid;">
								<table width="100%">
									<tr>
										<td><font style="font-size:18px;" color="#4F4F4F">公司介绍</font></td>
									</tr>
									<tr height="22px"/>
									<tr>
										<td>
											<font style="font-size:14px;" style="white-space:normal;" id="jieshao">
											</font>
										</td>
									</tr>
									<tr height="37px"/>
									<tr>
										<td class="textC" style="padding:20px 0px;">
											<table width="100%">
												<tr>
													<td width="20px">
														<a href="#myCarousel" data-slide="prev" style="height:200px;padding-top:100px">
															<font  style='font-size:20px;' color="#CCCCCC">&lsaquo;</font>
													    </a>
													</td>
													<td>
														<div id="myCarousel" class="carousel slide" style="width:100%;height:200px;">
															<ol class="carousel-indicators" style="margin-bottom:-20px;" id="firmCarousel">
														    </ol>
														    <div class="carousel-inner" id="firmphotos">
														    </div>
														</div>
													</td>
													<td width="20px">
														<a href="#myCarousel" data-slide="next" style="height:200px;padding-top:100px">
													        <font style='font-size:20px;' color="#CCCCCC">&rsaquo;</font>
													    </a>
													</td>
												</tr>
											</table>
										</td>
									</tr>
								</table>
							</div>
						</td>
					</tr>
					<tr>
						<td valign="top">
							<div style="width:90%;padding:20px 0px;">
								<table width="100%">
									<tr>
										<td><font style="font-size:18px;" color="#4F4F4F">新闻报道</font></td>
									</tr>
									<tr height="22px"/>
									<tr>
										<td class="textC">
											<div style="margin:auto;">
												<font style="font-size:14px;" color="#9A9A9A"><span id="news">暂无内容</span></font>
											</div>
										</td>
									</tr>
								</table>
							</div>
						</td>
					</tr>
				</table>
			</td>
			<td valign="top" width="48%" style="padding-right:14%;">
				<table style="border-left:5px #CCCCCC solid;" width="100%">
					<tr>
						<td>
							<div style="width:100%;padding:20px 0px;border-bottom:1px #CCCCCC solid;border-top:1px #CCCCCC solid;">
								<table width="100%">
									<tr>
										<td style="padding-left:38px;"><font style="font-size:18px;" color="#4F4F4F">公司技术</font></td>
									</tr>
									<tr height="37px"/>
									<tr>
										<td>
											<div style="width:100%;padding-left:75px;">
												<table width="100%" id="jishu">
												</table>
											</div>
										</td>
									</tr>
								</table>
							</div>
						</td>
					</tr>
					<tr>
						<td>
							<div style="width:100%;padding:20px 0px;border-bottom:1px #CCCCCC solid;">
								<table width="100%">
									<tr>
										<td colspan="4" style="padding-left:38px;"><font style="font-size:18px;" color="#4F4F4F">公司福利</font></td>
									</tr>
									<tr height="37px"/>
									<tr>
										<td>
											<div style="width:100%;padding-left:12%;" id="fuli">
											</div>
										</td>
									</tr>
									<tr height="20px"/>
									<tr>
										<td>
											<div style="width:100%;padding-left:12%;" id="fuli2">
											</div>
										</td>
									</tr>
								</table>
							</div>
						</td>
					</tr>
					<tr>
						<td>
							<div style="width:100%;padding:38px 18px;">
								<table width="100%" style="border-collapse:separate;border-spacing:20px;">
									<tr>
										<td><font style="font-size:18px;" color="#4F4F4F">公司地址</font></td>
									</tr>
									<tr>
										<td class="textC" id="firmditu">
											<center>
												<div id="allmap" style="width:200px;height:200px;">
												</div>
											</center>
										</td>
									</tr>
									<tr>
										<td class="textC"><font style="font-size:14px;" color="#4F4F4F" id="firmName"></font></td>
									</tr>
								</table>
							</div>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
	<div style="width:100%;height:60px;"></div>
	<table style="width:100%;height:81px;background:#32373C;" id="botom">
		<tr>
			<td class="textC">
				<font color="#F5F8F9" style="font-size:14px;white-space: nowrap;">
					关于我们&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					使用攻略&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					法律声明&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					关注我们
				</font>
			</td>
		</tr>
	</table>
</body>
</html>
<script type="text/javascript">
	// 百度地图API功能
	var map = new BMap.Map("allmap");    // 创建Map实例
	//map.centerAndZoom(new BMap.Point(116.404, 39.915), 11);  // 初始化地图,设置中心点坐标和地图级别
	//map.addControl(new BMap.MapTypeControl());   //添加地图类型控件
	//map.setCurrentCity("广州");          // 设置地图显示的城市 此项是必须设置的
	map.enableScrollWheelZoom(true);     //开启鼠标滚轮缩放
	//map.centerAndZoom("广州uc技术有限公司",11); 
	
	var localSearch = new BMap.LocalSearch(map);
    localSearch.enableAutoViewport();
    function dituapi(firmditu){
	    localSearch.setSearchCompleteCallback(function (searchResult) {
	    	map.clearOverlays();
	        var poi = searchResult.getPoi(0);
	        //document.getElementById("result_").value = poi.point.lng + "," + poi.point.lat;
	        map.centerAndZoom(poi.point, 13);
	        var marker = new BMap.Marker(new BMap.Point(poi.point.lng, poi.point.lat));  // 创建标注，为要查询的地方对应的经纬度
	        map.addOverlay(marker);
	        //var content = document.getElementById("text_").value + "<br/><br/>经度：" + poi.point.lng + "<br/>纬度：" + poi.point.lat;
	        //var infoWindow = new BMap.InfoWindow("<p style='font-size:14px;'>" + content + "</p>");
	        //marker.addEventListener("click", function () { this.openInfoWindow(infoWindow); });
	        // marker.setAnimation(BMAP_ANIMATION_BOUNCE); //跳动的动画
	    });
	    localSearch.search(firmditu);
    }
</script>