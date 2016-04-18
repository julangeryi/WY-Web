<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
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
									
								var myChart = echarts.init(document.getElementById('main1'));
								var categories = [];
								var values = [];
								var legend = [];
								
								$.ajax({
									url : "${pageContext.request.contextPath}/getOutRainInfo.do",
									type : "GET",
									dataType : "json",
									async : false,
									success:function(json){
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
										data : [ '雨量(1)','雨量(2)' ]
									},
									xAxis : [ {
										type : 'category',
										 boundaryGap : false,
										data : categories
									}],
									yAxis : {},
									series : [ {
										name : '雨量(1)',
										type : 'line',
										data : values[0]
										} ,
										{
											name : '雨量(2)',
											type : 'line',
											data : values[1]
											}  
									]
								};
								myChart.setOption(option);
								</script>
								
								
								
								<script type="text/javascript">
								  $(document).ready(function () {  
								        setInterval("startRequest()", 10000);  
								    });
								  
								  function startRequest(){
									  
									 	var myChart = echarts.init(document.getElementById('main1'));
										var categories = [];
										var values = [];
										var legend = [];
										
										$.ajax({
											url : "${pageContext.request.contextPath}/getOutRainInfo.do",
											type : "GET",
											dataType : "json",
											async : false,
											success:function(json){
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
												data : [ '雨量(1)','雨量(2)' ]
											},
											xAxis : [ {
												type : 'category',
												 boundaryGap : false,
												data : categories
											}],
											yAxis : {},
											series : [ {
												name : '雨量(1)',
												type : 'line',
												data : values[0]
												} ,
												{
													name : '雨量(2)',
													type : 'line',
													data : values[1]
													}  
											]
										};
										myChart.setOption(option);
										
								  }
								
	
								
								</script>

							</div>
							<div id="normal-tabs-2">
								<div id="main2" style="width: 1000px; height: 400px;"></div>
								<script type="text/javascript">
									// 基于准备好的dom，初始化echarts实例
									var myChart = echarts.init(document
											.getElementById('main2'));

									// 指定图表的配置项和数据
									var option = {

										title : {
											text : '地下水位图'
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
											type : 'line',
											data : [ 5, 20, 36, 10, 10, 20 ]
										} ]
									};

									// 使用刚指定的配置项和数据显示图表。
									myChart.setOption(option);
								</script>

							</div>
							<div id="normal-tabs-3">
								<div id="main3" style="width: 600px; height: 400px;"></div>
								<script type="text/javascript">
									// 基于准备好的dom，初始化echarts实例
									var myChart = echarts.init(document
											.getElementById('main3'));

									// 指定图表的配置项和数据
									var option = {
										title : {
											text : '深孔位移图'
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
