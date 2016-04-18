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
					<div class="example-code">
						<div class="tabs">
							<ul>
								<li><a href="#normal-tabs-1" title="Tab 1">地表降雨量 </a></li>
								<li><a href="#normal-tabs-2" title="Tab 2">地下水位 </a></li>
								<li><a href="#normal-tabs-3" title="Tab 3">深孔位移</a></li>
								<li><a href="#normal-tabs-4" title="Tab 4">报警信息</a></li>
							</ul>
							<div id="normal-tabs-1">
								<script type="text/javascript">
									$(document).ready(function() {
									});
								</script>
								<table class="table" id="example1">
									<thead>
										<tr>
											<th>序号</th>
											<th>测量点</th>
											<th>测量值</th>
											<th>测量时间</th>
											<th>数据下载</th>
										</tr>
									</thead>
									<tbody>
									<c:forEach items="${outRainList }" var="o">
										<tr>
											<td>${o.num }</td>
											<td>${o.sensorId }</td>
											<td>${o.value }</td>
											<td>${o.dateTime }</td>
											<td><a
									href="${pageContext.request.contextPath}/monHistoryDownLoad.do?num=${o.num }"
									class="btn small bg-blue-alt tooltip-button"
									data-placement="top" title="下载"> <i
										class="glyph-icon icon-cloud-download"></i>
								</a></td>
										</tr>
										
									</c:forEach>
									</tbody>
									<tfoot>
										<tr>
											<th></th>
											<th>测量点</th>
											<th>测量值</th>
											<th>测量时间</th>
											<th>数据下载</th>
										</tr>
									</tfoot>
								</table>
							</div>
							<div id="normal-tabs-2"></div>
							<div id="normal-tabs-3"></div>
							<div id="normal-tabs-4"></div>
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
