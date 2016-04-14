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
            jQuery(window).load(
                function(){

                    var wait_loading = window.setTimeout( function(){
                      $('#loading').slideUp('fast');
                      jQuery('body').css('overflow','auto');
                    },1000
                    );

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
								<li><a href="#normal-tabs-1" title="Tab 1">铁科院1 </a></li>
								<li><a href="#normal-tabs-2" title="Tab 2">铁科院2</a></li>
								<li><a href="#normal-tabs-3" title="Tab 3">西北院1</a></li>
								<li><a href="#normal-tabs-4" title="Tab 3">西北院2</a></li>
							</ul>
							<div id="normal-tabs-1">
								<p class="font-gray-dark">铁科院1选取信息发布内容</p>
								<div class="example-box">
									<div class="example-code">

										<table class="table table-condensed">
											<thead>
												<tr>
													<th>名称</th>
													<th>参数</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td class="font-bold text-left">John Clark</td>
													<td><a href="javascript:;">Sales</a></td>
												</tr>
												<tr>
													<td class="font-bold text-left">Kenny Davis</td>
													<td><a href="javascript:;">Development</a></td>
												</tr>
												<tr>
													<td class="font-bold text-left">David Robertson</td>
													<td><a href="javascript:;">Support</a></td>
												</tr>
												<tr>
													<td class="font-bold text-left">John Doe</td>
													<td><a href="javascript:;">Testing</a></td>
												</tr>
												<tr>
													<td class="font-bold text-left">Sofia Williams</td>
													<td><a href="javascript:;">IT</a></td>
												</tr>
												<tr>
													<td class="font-bold text-left">Katy Lewis</td>
													<td><a href="javascript:;">Business</a></td>
												</tr>
											</tbody>
										</table>

									</div>

								</div>
							</div>
							<div id="normal-tabs-2">
								<p class="font-gray-dark">铁科院2选取信息发布内容</p>
								<div class="example-box">
									<div class="example-code">
										<table class="table table-condensed">
											<thead>
												<tr>
													<th>名称</th>
													<th>参数</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td class="font-bold text-left">John Clark</td>
													<td><a href="javascript:;">Sales</a></td>
												</tr>
												<tr>
													<td class="font-bold text-left">Kenny Davis</td>
													<td><a href="javascript:;">Development</a></td>
												</tr>
												<tr>
													<td class="font-bold text-left">David Robertson</td>
													<td><a href="javascript:;">Support</a></td>
												</tr>
												<tr>
													<td class="font-bold text-left">John Doe</td>
													<td><a href="javascript:;">Testing</a></td>
												</tr>
												<tr>
													<td class="font-bold text-left">Sofia Williams</td>
													<td><a href="javascript:;">IT</a></td>
												</tr>
												<tr>
													<td class="font-bold text-left">Katy Lewis</td>
													<td><a href="javascript:;">Business</a></td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
							</div>
							<div id="normal-tabs-3">
								<p class="font-gray-dark">西北院1选取信息发布内容</p>
								<div class="example-box">
									<div class="example-code">

										<table class="table table-condensed">
											<thead>
												<tr>
													<th>名称</th>
													<th>参数</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td class="font-bold text-left">John Clark</td>
													<td><a href="javascript:;">Sales</a></td>
												</tr>
												<tr>
													<td class="font-bold text-left">Kenny Davis</td>
													<td><a href="javascript:;">Development</a></td>
												</tr>
												<tr>
													<td class="font-bold text-left">David Robertson</td>
													<td><a href="javascript:;">Support</a></td>
												</tr>
												<tr>
													<td class="font-bold text-left">John Doe</td>
													<td><a href="javascript:;">Testing</a></td>
												</tr>
												<tr>
													<td class="font-bold text-left">Sofia Williams</td>
													<td><a href="javascript:;">IT</a></td>
												</tr>
												<tr>
													<td class="font-bold text-left">Katy Lewis</td>
													<td><a href="javascript:;">Business</a></td>
												</tr>
											</tbody>
										</table>

									</div>
								</div>
							</div>
							<div id="normal-tabs-4">
								<div class="example-box">
    <div class="example-code clearfix">

        <form action="" class="col-md-10 center-margin" method="" />
            <div class="form-row pad0B row">
                <div class="form-input col-md-12">
                    <textarea name="" id="" class="large-textarea"></textarea>
                </div>
            </div>
         <a href="#" class="btn medium primary-bg" title="">
            <span class="button-content">Primary</span>
        </a>
        </form>

    </div>
    
</div>
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
