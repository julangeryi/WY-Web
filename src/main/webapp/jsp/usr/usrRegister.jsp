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
				<h3>用户注册授权向导</h3>
				<p class="font-gray-dark">
					<small>管理员可以通过此向导，注册新用户并给新用户授权</small>
				</p>

				<div class="example-box">
					<div class="example-code">

						<div id="form-wizard" class="form-wizard">
							<ul>
								<li><a href="#step-1"> <label class="wizard-step">1</label>
										<span class="wizard-description"> 新用户注册 <small>填写新用户</small>
									</span>
								</a></li>
								<li><a href="#step-2"> <label class="wizard-step">2</label>
										<span class="wizard-description"> 新用户授权 <small>新用户授权</small>
									</span>
								</a></li>
								<li><a href="#step-3"> <label class="wizard-step">3</label>
										<span class="wizard-description"> 新用户激活 <small>新用户是否激活</small>
									</span>
								</a></li>
							</ul>
							<div id="step-1">
								<form action="" class="col-md-8 center-margin" method="" />
								<div class="form-row form-vertical pad0B row">
									<div class="form-label col-md-2">
										<label for="" class="label-description"> Vertical
											label: <span class="float-right">Labels can have
												inline descriptions</span>
										</label>
									</div>
									<div class="form-input col-md-6">
										<select id="" name="">
											<option />Option 1
											<option />Option 2
											<option />Option 3
											<option />Option 4
										</select>
									</div>
								</div>
								</form>

							</div>
							<div id="step-2">

								<form action="" class="col-md-8 center-margin" method="" />
					<div class="form-row form-vertical pad0B row">
									<div class="form-label col-md-2">
										<label for="" class="label-description"> 权限列表: <span class="float-right">列表中显示了所有的权限</span>
										</label>
									</div>
									<div class="form-input col-md-6">
										<select id="" name="">
											<option>请选择权限</option>
											<option>资源整合与管理</option>
											<option>监测信息采集</option>
											<option>信息发布</option>
											<option>统计与报表</option>
											<option>辅助决策</option>
											<option>用户管理</option>
										</select>
									</div>
								</div>
								</form>

							</div>
							<div id="step-3">

								<form action="" class="col-md-8 center-margin" method="" />
								<div class="form-row form-vertical pad0B row">
									<div class="form-label col-md-2">
										<label for=""> 是否激活: </label>
									</div>
									<div class="form-checkbox-radio col-md-6">
										<input type="checkbox" class="custom-checkbox" name="" id="" />
										<label for="">激活</label> 
									</div>
								</div>
								</form>
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
