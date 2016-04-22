<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- AUI Framework -->
<html>
<head>

<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<title>Fides Admin</title>
<meta name="description" content="" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />

<!-- Favicons -->

<link rel="apple-touch-icon-precomposed" sizes="144x144"
	href="assets/images/icons/apple-touch-icon-144-precomposed.png" />
<link rel="apple-touch-icon-precomposed" sizes="114x114"
	href="assets/images/icons/apple-touch-icon-114-precomposed.png" />
<link rel="apple-touch-icon-precomposed" sizes="72x72"
	href="assets/images/icons/apple-touch-icon-72-precomposed.png" />
<link rel="apple-touch-icon-precomposed"
	href="assets/images/icons/apple-touch-icon-57-precomposed.png" />
<link rel="shortcut icon" href="assets/images/icons/favicon.png" />

<!--[if lt IE 9]>
          <script src="assets/js/minified/core/html5shiv.min.js"></script>
          <script src="assets/js/minified/core/respond.min.js"></script>
        <![endif]-->

<!-- Fides Admin CSS Core -->

<link rel="stylesheet" type="text/css"
	href="assets/css/minified/aui-production.min.css" />

<!-- Theme UI -->

<link id="layout-theme" rel="stylesheet" type="text/css"
	href="assets/themes/minified/fides/color-schemes/dark-blue.min.css" />

<!-- Fides Admin Responsive -->

<link rel="stylesheet" type="text/css"
	href="assets/themes/minified/fides/common.min.css" />
<link rel="stylesheet" type="text/css"
	href="assets/themes/minified/fides/responsive.min.css" />

<!-- Fides Admin JS -->

<script type="text/javascript"
	src="assets/js/minified/aui-production.min.js"></script>

<script src="assets/js/echarts.min.js"></script>

<script>
	jQuery(window).load(function() {

		var wait_loading = window.setTimeout(function() {
			$('#loading').slideUp('fast');
			jQuery('body').css('overflow', 'auto');
		}, 1000);

	});
</script>



<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
</head>
<body style="overflow: hidden;">
	<div id="loading"
		class="ui-front loader ui-widget-overlay bg-white opacity-100">
		<img src="assets/images/loader-dark.gif" alt="" />
	</div>

	<div id="page-wrapper" class="demo-example">

		<!-- #page-header -->
		<jsp:include page="../common/page_header.jsp" flush="true"></jsp:include>

		<!-- #page-sidebar -->
		<jsp:include page="../common/sidebar-menu.jsp" flush="true"></jsp:include>

		<div id="page-content-wrapper">

			<!-- #page-title -->
			<jsp:include page="../common/page-title.jsp" flush="true"></jsp:include>

			<div id="page-content">
				<div class="example-box">
					<div class="example-code">
						<div class="tabs">
							<ul>
								<li><a href="#normal-tabs-1" title="Tab 1">地表降雨量 </a></li>
								<li><a href="#normal-tabs-2" title="Tab 2">地下水位 </a></li>
								<li><a href="#normal-tabs-3" title="Tab 3">深孔位移</a></li>
								<li><a href="#normal-tabs-4" title="Tab 4">报警信息</a></li>
							</ul>
							<div id="normal-tabs-1">
								<div id="main1" style="width: 1100px; height: 400px;"></div>

								<script type="text/javascript">
									var myChart = echarts.init(document
											.getElementById('main1'));
									var categories = [];
									var values = [];
									var legend = [];
									$
											.ajax({
												url : "${pageContext.request.contextPath}/getOutRainInfo.do",
												type : "GET",
												dataType : "json",
												async : false,
												success : function(json) {
													values = json.values;
													categories = json.categories;
												}

											});
									// 指定图表的配置项和数据
									var option = {

										title : {
											text : '地表降雨量'
										},
										tooltip : {},
										legend : {
											data : [ '雨量(1)', '雨量(2)' ]
										},
										xAxis : [ {
											type : 'category',
											boundaryGap : false,
											data : categories
										} ],
										yAxis : {},
										series : [ {
											name : '雨量(1)',
											type : 'line',
											data : values[0]
										}, {
											name : '雨量(2)',
											type : 'line',
											data : values[1]
										} ]
									};
									myChart.setOption(option);
								</script>

							</div>
							<div id="normal-tabs-2">
								<div id="main2" style="width: 1100px; height: 400px;"></div>
								<script type="text/javascript">
									var myChart = echarts.init(document
											.getElementById('main2'));
									var categories = [];
									var values = [];
									var legend = [];
									$
											.ajax({
												url : "${pageContext.request.contextPath}/getOutWaterLevelInfo.do",
												type : "GET",
												dataType : "json",
												async : false,
												success : function(json) {
													values = json.values;
													categories = json.categories;
												}

											});
									// 指定图表的配置项和数据
									var option = {

										title : {
											text : '地下水位图'
										},
										tooltip : {},
										legend : {
											data : [ '(1)号监测点', '(2)号监测点',
													'(3)号监测点', '(4)号监测点',
													'(5)号监测点', '(6)号监测点',
													'(7)号监测点', '(8)号监测点' ]
										},
										xAxis : [ {
											type : 'category',
											boundaryGap : false,
											data : categories
										} ],
										yAxis : {},
										series : [ {
											name : '(1)号监测点',
											type : 'line',
											data : values[0]
										}, {
											name : '(2)号监测点',
											type : 'line',
											data : values[1]
										}, {
											name : '(3)号监测点',
											type : 'line',
											data : values[2]
										}, {
											name : '(4)号监测点',
											type : 'line',
											data : values[3]
										}, {
											name : '(5)号监测点',
											type : 'line',
											data : values[4]
										}, {
											name : '(6)号监测点',
											type : 'line',
											data : values[5]
										}, {
											name : '(7)号监测点',
											type : 'line',
											data : values[6]
										}, {
											name : '(8)号监测点',
											type : 'line',
											data : values[7]
										} ]
									};
									myChart.setOption(option);
								</script>

								<script type="text/javascript">
									$(document)
											.ready(
													function() {
														setInterval(
																"startOutWaterLevelRequest()",
																600000);
													});

									function startOutWaterLevelRequest() {

										var myChart = echarts.init(document
												.getElementById('main2'));
										var categories = [];
										var values = [];
										var legend = [];
										$
												.ajax({
													url : "${pageContext.request.contextPath}/getOutWaterLevelInfo.do",
													type : "GET",
													dataType : "json",
													async : false,
													success : function(json) {
														values = json.values;
														categories = json.categories;
													}

												});
										// 指定图表的配置项和数据
										var option = {

											title : {
												text : '地下水位图'
											},
											tooltip : {},
											legend : {
												data : [ '(1)号监测点', '(2)号监测点',
														'(3)号监测点', '(4)号监测点',
														'(5)号监测点', '(6)号监测点',
														'(7)号监测点', '(8)号监测点' ]
											},
											xAxis : [ {
												type : 'category',
												boundaryGap : false,
												data : categories
											} ],
											yAxis : {},
											series : [ {
												name : '(1)号监测点',
												type : 'line',
												data : values[0]
											}, {
												name : '(2)号监测点',
												type : 'line',
												data : values[1]
											}, {
												name : '(3)号监测点',
												type : 'line',
												data : values[2]
											}, {
												name : '(4)号监测点',
												type : 'line',
												data : values[3]
											}, {
												name : '(5)号监测点',
												type : 'line',
												data : values[4]
											}, {
												name : '(6)号监测点',
												type : 'line',
												data : values[5]
											}, {
												name : '(7)号监测点',
												type : 'line',
												data : values[6]
											}, {
												name : '(8)号监测点',
												type : 'line',
												data : values[7]
											} ]
										};
										myChart.setOption(option);

									}
								</script>
							</div>
							<div id="normal-tabs-3">
								<div id="main3" style="width: 1000px; height: 500px;"></div>
								<script type="text/javascript">
									// 基于准备好的dom，初始化echarts实例
									var myChart3 = echarts.init(document.getElementById('main3'));
									var group1=[];
									var group2=[];
									var group3=[];
									var group4=[];
									var group5=[];
									var group6=[];
									var group7=[];
									$.ajax({url : "${pageContext.request.contextPath}/getSAAInfo.do",
												type : "GET",
												dataType : "json",
												async : false,
												success : function(json) {
													group1 = json.group1;
													group2 = json.group2;
													group3 = json.group3;
													group4 = json.group4;
													group5 = json.group5;
													group6 = json.group6;
													group7 = json.group7;
												}
											});
									// 指定图表的配置项和数据
									option3 = {
										title : {
											text : '山体位移图',
											subtext : '  当天的信息'
										},
										grid : {
											left : '3%',
											right : '4%',
											bottom : '3%',
											containLabel : true
										},
										tooltip : {
											trigger : 'axis',
											showDelay : 0,
											formatter : function(params) {
												if (params.value.length > 1) {
													return params.seriesName
															+ ' :<br/>'
															+ params.value[0]
															+ 'mm '
															+ params.value[1]
															+ 'mm '+'<br/>'
															+ '采集时间<br/>'
															+ params.value[2]
															
															;
												} else {
													return params.seriesName
															+ ' :<br/>'
															+ params.name
															+ ' : '
															+ params.value
															+ 'mm ';
												}
											},
											axisPointer : {
												show : true,
												type : 'cross',
												lineStyle : {
													type : 'dashed',
													width : 1
												}
											}
										},
										legend : {
											selected: {
									            '山体位移(2)组' : false,
									            '山体位移(3)组' : false,
									            '山体位移(4)组' : false,
									            '山体位移(5)组' : false,
									            '山体位移(6)组' : false,
									            '山体位移(7)组' : false
									        },
											data : [ '山体位移(1)组', 
											         '山体位移(2)组', 
											         '山体位移(3)组',
											         '山体位移(4)组', 
											         '山体位移(5)组', 
											         '山体位移(6)组',
											         '山体位移(7)组' ],
											left : 'center'
										},
										xAxis : [ {
											type : 'value',
											scale : true,
											axisLabel : {
												formatter : '{value} mm'
											},
											splitLine : {
												lineStyle : {
													type : 'dashed'
												}
											}
										} ],
										yAxis : [ {
											type : 'value',
											scale : true,
											axisLabel : {
												formatter : '{value} mm'
											},
											splitLine : {
												lineStyle : {
													type : 'dashed'
												}
											}
										} ],
										series : [
												{
													name : '山体位移(1)组',
													type : 'scatter',
													data :  group1
												},
												{
													name : '山体位移(2)组',
													type : 'scatter',
													data : group2
												},
												{
													name : '山体位移(3)组',
													type : 'scatter',
													data : group3
												},
												{
													name : '山体位移(4)组',
													type : 'scatter',
													data : group4
												},
												{
													name : '山体位移(5)组',
													type : 'scatter',
													data : group5
												},
												{
													name : '山体位移(6)组',
													type : 'scatter',
													data : group6
												},
												{
													name : '山体位移(7)组',
													type : 'scatter',
													data : group7,
													itemStyle :{color: 'lightblue',label:{show:true}}
												}
												
												]
									};

									// 使用刚指定的配置项和数据显示图表。
									myChart3.setOption(option3);
									
									//自动刷新
									$(document).ready(
											function() {
												setInterval(
														"refreshSAAInfo()",
														3600000);
											});
									function refreshSAAInfo(){
										var myChart3 = echarts.init(document.getElementById('main3'));
										var group1 = [];
										var group2 = [];
										var group3 = [];
										var group4 = [];
										var group5 = [];
										var group6 = [];
										var group7 = [];
										$.ajax({
													url : "${pageContext.request.contextPath}/getSAAInfo.do",
													type : "GET",
													dataType : "json",
													async : false,
													success : function(json) {
														group1 = json.group1;
														group2 = json.group2;
														group3 = json.group3;
														group4 = json.group4;
														group5 = json.group5;
														group6 = json.group6;
														group7 = json.group7;
													}

												});
										// 指定图表的配置项和数据
										option3 = {
											title : {
												text : '山体位移图',
												subtext : '  当天的信息'
											},
											grid : {
												left : '3%',
												right : '4%',
												bottom : '3%',
												containLabel : true
											},
											
											tooltip : {
												trigger : 'axis',
												showDelay : 0,
												formatter : function(params) {
													if (params.value.length > 1) {
														return params.seriesName
														+ ' :<br/>'
														+ params.value[0]
														+ 'mm '
														+ params.value[1]
														+ 'mm '+'<br/>'
														+ '采集时间<br/>'
														+ params.value[2]
													} else {
														return params.seriesName
																+ ' :<br/>'
																+ params.name
																+ ' : '
																+ params.value
																+ 'mm ';
													}
												},
												axisPointer : {
													show : true,
													type : 'cross',
													lineStyle : {
														type : 'dashed',
														width : 1
													}
												}
											},
											legend : {
												selected: {
										            '山体位移(2)组' : false,
										            '山体位移(3)组' : false,
										            '山体位移(4)组' : false,
										            '山体位移(5)组' : false,
										            '山体位移(6)组' : false,
										            '山体位移(7)组' : false
										        },
												data : [ '山体位移(1)组', '山体位移(2)组', '山体位移(3)组','山体位移(4)组', '山体位移(5)组', '山体位移(6)组', '山体位移(7)组' ],
												left : 'center'
											},
											xAxis : [ {
												type : 'value',
												scale : true,
												axisLabel : {
													formatter : '{value} mm'
												},
												splitLine : {
													lineStyle : {
														type : 'dashed'
													}
												}
											} ],
											yAxis : [ {
												type : 'value',
												scale : true,
												axisLabel : {
													formatter : '{value} mm'
												},
												splitLine : {
													lineStyle : {
														type : 'dashed'
													}
												}
											} ],
											series : [
													{
														name : '山体位移(1)组',
														type : 'scatter',
														data : group1
													},
													{
														name : '山体位移(2)组',
														type : 'scatter',
														data : group2
													},
													{
														name : '山体位移(3)组',
														type : 'scatter',
														data : group3
													},
													{
														name : '山体位移(4)组',
														type : 'scatter',
														data : group4
													},
													{
														name : '山体位移(5)组',
														type : 'scatter',
														data : group5
													},
													{
														name : '山体位移(6)组',
														type : 'scatter',
														data : group6
													},
													{
														name : '山体位移(7)组',
														type : 'scatter',
														data : group7
													}
													]
										};

										// 使用刚指定的配置项和数据显示图表。
										myChart3.setOption(option3);
										
									}
								</script>
							</div>
							<div id="normal-tabs-4">
								<div id="main4" style="width: 600px; height: 400px;"></div>
								<script type="text/javascript">
									// 基于准备好的dom，初始化echarts实例
									var myChart = echarts.init(document
											.getElementById('main4'));

									// 指定图表的配置项和数据
									var option = {
										title : {
											text : '报警信息'
										},
										tooltip : {},
										legend : {
											data : [ '销量' ]
										},
										xAxis : {
											data : [ "衬衫", "羊毛衫", "雪纺衫", "裤子",
													"高跟鞋", "袜子" ]
										},
										yAxis : {},
										series : [ {
											name : '销量',
											type : 'bar',
											data : [ 5, 20, 36, 10, 10, 20 ]
										} ]
									};

									// 使用刚指定的配置项和数据显示图表。
									myChart.setOption(option);
								</script>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- #page-content -->
		</div>
		<!-- #page-main -->
	</div>
	<!-- #page-wrapper -->

</body>
</html>
