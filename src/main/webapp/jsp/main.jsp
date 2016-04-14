<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
  <html>
    <head>

        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
        <title>辅助决平台</title>
        <meta name="description" content="" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />

        <!-- Favicons -->

        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="assets/images/icons/apple-touch-icon-144-precomposed.png" />
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="assets/images/icons/apple-touch-icon-114-precomposed.png" />
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="assets/images/icons/apple-touch-icon-72-precomposed.png" />
        <link rel="apple-touch-icon-precomposed" href="assets/images/icons/apple-touch-icon-57-precomposed.png" />
        <link rel="shortcut icon" href="assets/images/icons/favicon.png" />

        <!--[if lt IE 9]>
          <script src="assets/js/minified/core/html5shiv.min.js"></script>
          <script src="assets/js/minified/core/respond.min.js"></script>
        <![endif]-->

        <!-- Fides Admin CSS Core -->

        <link rel="stylesheet" type="text/css" href="assets/css/minified/aui-production.min.css" />

        <!-- Theme UI -->

        <link id="layout-theme" rel="stylesheet" type="text/css" href="assets/themes/minified/fides/color-schemes/dark-blue.min.css" />

        <!-- Fides Admin Responsive -->

        <link rel="stylesheet" type="text/css" href="assets/themes/minified/fides/common.min.css" />
        <link rel="stylesheet" type="text/css" href="assets/themes/minified/fides/responsive.min.css" />

        <!-- Fides Admin JS -->

        <script type="text/javascript" src="assets/js/minified/aui-production.min.js"></script>

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

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" /></head>
    <body style="overflow: hidden;">

        <div id="loading" class="ui-front loader ui-widget-overlay bg-white opacity-100">
            <img src="assets/images/loader-dark.gif" alt="" />
        </div>

        <div id="page-wrapper" class="demo-example">
            <!-- #page-header -->
        	<jsp:include page="common/page_header.jsp" flush="true"></jsp:include>

			<!-- #page-sidebar -->
			<jsp:include page="common/sidebar-menu.jsp" flush="true"></jsp:include>
			
            <div id="page-content-wrapper">
				<!-- #page-title -->
				<jsp:include page="common/page-title.jsp" flush="true"></jsp:include>
				
				<div id="page-content">
		        </div>
		        <!-- #page-content -->
            </div>
            <!-- #page-main -->
        </div>
        <!-- #page-wrapper -->
    </body>
</html>
