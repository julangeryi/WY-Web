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
<script type="text/javascript" src="assets/js/ajaxupload.js"></script>

<link href="../../assets/css/bootstrap.file-input.css" rel="stylesheet">

<script>
	jQuery(window).load(function() {

		var wait_loading = window.setTimeout(function() {
			$('#loading').slideUp('fast');
			jQuery('body').css('overflow', 'auto');
		}, 1000);

	});
</script>
<script src="../../assets/js/bootstrap.file-input.js"></script>

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

				<div class="infobox notice-bg">
					<div class="large btn font-blue info-icon">
						<i class="glyph-icon icon-cloud-upload"> </i>
					</div>
					<div class="dropdown">
						<button id="uploadButAjax">资料上传</button>
						<ul class="dropdown-menu float-right">
							<!--  
						<form method="POST" enctype="multipart/form-data"
							action="${pageContext.request.contextPath}/resUpLoad.do">
							<input type="file" id="file" name="file"><br /> 
							<input 	type="submit" value="Upload" class="glyph-icon icon-cloud-download">
						</form>
					-->
						</ul>
					</div>
					<h4 class="infobox-title"></h4>
					<p>
						<small>上传请点击上面的按钮</small>
					</p>
				</div>

				<script type="text/javascript">
					$(document).ready(function() {
						new AjaxUpload(
								'#uploadButAjax',
								{
									action : '${pageContext.request.contextPath}/upLoad.do',
									name : 'uploadFile',
									async:false,
									onSubmit : function(file, ext) {
										if (ext	&& /^(rar|pdf)$/.test(ext.toLowerCase())) {
											this.setData({'uploadFile' : file});
										} else {
											alert("请上传格式为 rar|pdf的文件！");
											return false;
										}
									},
									onComplete : function() {
									}
								});
					});
				</script>
				<table class="table" id="example1">
					<thead>
						<tr>
							<th></th>
							<th>名称</th>
							<th>上传时间</th>
							<th>上传人</th>
							<th>管理操作</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${upLoadList}" var="u">
							<tr>
								<td>${u.id }</td>
								<td>${u.upLoadName }</td>
								<td>${u.upLoadDate }</td>
								<td>${u.upLoadUser }</td>
								<!-- <a href="${pageContext.request.contextPath}/person/toupdate.action?id=${p.id}">修改</a> -->
								<td><a
									href="${pageContext.request.contextPath}/downLoad.do?id=${u.id }&uploadname=${u.upLoadName }"
									class="btn small bg-blue-alt tooltip-button"
									data-placement="top" title="下载"> <i
										class="glyph-icon icon-cloud-download"></i>
								</a> <a
									href="${pageContext.request.contextPath}/resDelete.do?id=${u.id }&uploadname=${u.upLoadName }"
									class="btn small bg-red tooltip-button" data-placement="top"
									title="删除"> <i class="glyph-icon icon-remove"></i>
								</a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>

			</div>
		</div>
		<!-- #page-content -->
	</div>
	<!-- #page-main -->
	</div>
	<!-- #page-wrapper -->

</body>
</html>
