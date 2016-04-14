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
					 <script type="text/javascript">
				$(document).ready(function() {
				});
			</script>
<table class="table" id="example1">
	<thead>
		<tr>
			<th>编号</th>
			<th>产品</th>
			<th>交付时间</th>
			<th>状态</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td>Trident</td>
			<td>Internet
				 Explorer 4.0</td>
			<td>Win 95+</td>
			<td class="center">4</td>
		</tr>
		<tr>
			<td>Trident</td>
			<td>Internet
				 Explorer 5.0</td>
			<td>Win 95+</td>
			<td class="center">5</td>
		</tr>
		<tr>
			<td>Trident</td>
			<td>Internet
				 Explorer 5.5</td>
			<td>Win 95+</td>
			<td class="center">5.5</td>
		</tr>
		<tr>
			<td>Trident</td>
			<td>Internet
				 Explorer 6</td>
			<td>Win 98+</td>
			<td class="center">6</td>
		</tr>
		<tr>
			<td>Trident</td>
			<td>Internet Explorer 7</td>
			<td>Win XP SP2+</td>
			<td class="center">7</td>
		</tr>
		<tr>
			<td>Trident</td>
			<td>AOL browser (AOL desktop)</td>
			<td>Win XP</td>
			<td class="center">6</td>
		</tr>
		<tr>
			<td>Gecko</td>
			<td>Firefox 1.0</td>
			<td>Win 98+ / OSX.2+</td>
			<td class="center">1.7</td>
		</tr>
		<tr>
			<td>Gecko</td>
			<td>Firefox 1.5</td>
			<td>Win 98+ / OSX.2+</td>
			<td class="center">1.8</td>
		</tr>
		<tr>
			<td>Gecko</td>
			<td>Firefox 2.0</td>
			<td>Win 98+ / OSX.2+</td>
			<td class="center">1.8</td>
		</tr>
		<tr>
			<td>Gecko</td>
			<td>Firefox 3.0</td>
			<td>Win 2k+ / OSX.3+</td>
			<td class="center">1.9</td>
		</tr>
		<tr>
			<td>Gecko</td>
			<td>Camino 1.0</td>
			<td>OSX.2+</td>
			<td class="center">1.8</td>
		</tr>
		<tr>
			<td>Gecko</td>
			<td>Camino 1.5</td>
			<td>OSX.3+</td>
			<td class="center">1.8</td>
		</tr>
		<tr>
			<td>Gecko</td>
			<td>Netscape 7.2</td>
			<td>Win 95+ / Mac OS 8.6-9.2</td>
			<td class="center">1.7</td>
		</tr>
		<tr>
			<td>Gecko</td>
			<td>Netscape Browser 8</td>
			<td>Win 98SE+</td>
			<td class="center">1.7</td>
		</tr>
		<tr>
			<td>Gecko</td>
			<td>Netscape Navigator 9</td>
			<td>Win 98+ / OSX.2+</td>
			<td class="center">1.8</td>
		</tr>
		<tr>
			<td>Gecko</td>
			<td>Mozilla 1.0</td>
			<td>Win 95+ / OSX.1+</td>
			<td class="center">1</td>
		</tr>
		<tr>
			<td>Gecko</td>
			<td>Mozilla 1.1</td>
			<td>Win 95+ / OSX.1+</td>
			<td class="center">1.1</td>
		</tr>
		<tr>
			<td>Gecko</td>
			<td>Mozilla 1.2</td>
			<td>Win 95+ / OSX.1+</td>
			<td class="center">1.2</td>
		</tr>
		<tr>
			<td>Gecko</td>
			<td>Mozilla 1.3</td>
			<td>Win 95+ / OSX.1+</td>
			<td class="center">1.3</td>
		</tr>
		<tr>
			<td>Gecko</td>
			<td>Mozilla 1.4</td>
			<td>Win 95+ / OSX.1+</td>
			<td class="center">1.4</td>
		</tr>
		<tr>
			<td>Gecko</td>
			<td>Mozilla 1.5</td>
			<td>Win 95+ / OSX.1+</td>
			<td class="center">1.5</td>
		</tr>
		<tr>
			<td>Gecko</td>
			<td>Mozilla 1.6</td>
			<td>Win 95+ / OSX.1+</td>
			<td class="center">1.6</td>
		</tr>
		<tr>
			<td>Gecko</td>
			<td>Mozilla 1.7</td>
			<td>Win 98+ / OSX.1+</td>
			<td class="center">1.7</td>
		</tr>
		<tr>
			<td>Gecko</td>
			<td>Mozilla 1.8</td>
			<td>Win 98+ / OSX.1+</td>
			<td class="center">1.8</td>
		</tr>
		<tr>
			<td>Gecko</td>
			<td>Seamonkey 1.1</td>
			<td>Win 98+ / OSX.2+</td>
			<td class="center">1.8</td>
		</tr>
		<tr>
			<td>Gecko</td>
			<td>Epiphany 2.20</td>
			<td>Gnome</td>
			<td class="center">1.8</td>
		</tr>
		<tr>
			<td>Webkit</td>
			<td>Safari 1.2</td>
			<td>OSX.3</td>
			<td class="center">125.5</td>
		</tr>
		<tr>
			<td>Webkit</td>
			<td>Safari 1.3</td>
			<td>OSX.3</td>
			<td class="center">312.8</td>
		</tr>
		<tr>
			<td>Webkit</td>
			<td>Safari 2.0</td>
			<td>OSX.4+</td>
			<td class="center">419.3</td>
		</tr>
		<tr>
			<td>Webkit</td>
			<td>Safari 3.0</td>
			<td>OSX.4+</td>
			<td class="center">522.1</td>
		</tr>
		<tr>
			<td>Webkit</td>
			<td>OmniWeb 5.5</td>
			<td>OSX.4+</td>
			<td class="center">420</td>
		</tr>
		<tr>
			<td>Webkit</td>
			<td>iPod Touch / iPhone</td>
			<td>iPod</td>
			<td class="center">420.1</td>
		</tr>
		<tr>
			<td>Webkit</td>
			<td>S60</td>
			<td>S60</td>
			<td class="center">413</td>
		</tr>
		<tr>
			<td>Presto</td>
			<td>Opera 7.0</td>
			<td>Win 95+ / OSX.1+</td>
			<td class="center">-</td>
		</tr>
		<tr>
			<td>Presto</td>
			<td>Opera 7.5</td>
			<td>Win 95+ / OSX.2+</td>
			<td class="center">-</td>
		</tr>
		<tr>
			<td>Presto</td>
			<td>Opera 8.0</td>
			<td>Win 95+ / OSX.2+</td>
			<td class="center">-</td>
		</tr>
		<tr>
			<td>Presto</td>
			<td>Opera 8.5</td>
			<td>Win 95+ / OSX.2+</td>
			<td class="center">-</td>
		</tr>
		<tr>
			<td>Presto</td>
			<td>Opera 9.0</td>
			<td>Win 95+ / OSX.3+</td>
			<td class="center">-</td>
		</tr>
		<tr>
			<td>Presto</td>
			<td>Opera 9.2</td>
			<td>Win 88+ / OSX.3+</td>
			<td class="center">-</td>
		</tr>
		<tr>
			<td>Presto</td>
			<td>Opera 9.5</td>
			<td>Win 88+ / OSX.3+</td>
			<td class="center">-</td>
		</tr>
		<tr>
			<td>Presto</td>
			<td>Opera for Wii</td>
			<td>Wii</td>
			<td class="center">-</td>
		</tr>
		<tr>
			<td>Presto</td>
			<td>Nokia N800</td>
			<td>N800</td>
			<td class="center">-</td>
		</tr>
		<tr>
			<td>Presto</td>
			<td>Nintendo DS browser</td>
			<td>Nintendo DS</td>
			<td class="center">8.5</td>
		</tr>
		<tr>
			<td>KHTML</td>
			<td>Konqureror 3.1</td>
			<td>KDE 3.1</td>
			<td class="center">3.1</td>
		</tr>
		<tr>
			<td>KHTML</td>
			<td>Konqureror 3.3</td>
			<td>KDE 3.3</td>
			<td class="center">3.3</td>
		</tr>
		<tr>
			<td>KHTML</td>
			<td>Konqureror 3.5</td>
			<td>KDE 3.5</td>
			<td class="center">3.5</td>
		</tr>
		<tr>
			<td>Tasman</td>
			<td>Internet Explorer 4.5</td>
			<td>Mac OS 8-9</td>
			<td class="center">-</td>
		</tr>
		<tr>
			<td>Tasman</td>
			<td>Internet Explorer 5.1</td>
			<td>Mac OS 7.6-9</td>
			<td class="center">1</td>
		</tr>
		<tr>
			<td>Tasman</td>
			<td>Internet Explorer 5.2</td>
			<td>Mac OS 8-X</td>
			<td class="center">1</td>
		</tr>
		<tr>
			<td>Misc</td>
			<td>NetFront 3.1</td>
			<td>Embedded devices</td>
			<td class="center">-</td>
		</tr>
		<tr>
			<td>Misc</td>
			<td>NetFront 3.4</td>
			<td>Embedded devices</td>
			<td class="center">-</td>
		</tr>
		<tr>
			<td>Misc</td>
			<td>Dillo 0.8</td>
			<td>Embedded devices</td>
			<td class="center">-</td>
		</tr>
		<tr>
			<td>Misc</td>
			<td>Links</td>
			<td>Text only</td>
			<td class="center">-</td>
		</tr>
		<tr>
			<td>Misc</td>
			<td>Lynx</td>
			<td>Text only</td>
			<td class="center">-</td>
		</tr>
		<tr>
			<td>Misc</td>
			<td>IE Mobile</td>
			<td>Windows Mobile 6</td>
			<td class="center">-</td>
		</tr>
		<tr>
			<td>Misc</td>
			<td>PSP browser</td>
			<td>PSP</td>
			<td class="center">-</td>
		</tr>
		<tr>
			<td>Other browsers</td>
			<td>All others</td>
			<td>-</td>
			<td class="center">-</td>
		</tr>
	</tbody>
	<tfoot>
		<tr>
			<th>编号</th>
			<th>产品</th>
			<th>交付时间</th>
			<th>状态</th>
		</tr>
	</tfoot>
</table>
			</div>
			<!-- #page-content -->
		</div>
		<!-- #page-main -->
	</div>
	<!-- #page-wrapper -->

</body>
</html>
