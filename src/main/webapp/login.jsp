<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- AUI Framework -->
<!DOCTYPE html>
<html>
<head>

<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<title>TGWY Admin</title>
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
	href="../_assets/themes/fides/common.css" />
<link rel="stylesheet" type="text/css"
	href="../_assets/themes/fides/responsive.css" />

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

	<div id="login-page" class="mrg25B">

		<div id="page-header" class="clearfix">

			<img width="100" height="100" src="assets/images/gravatar.jpg" alt="" />

		</div>
		<!-- #page-header -->

	</div>
	<div class="pad20A">

		<div class="row">
			<div class="clear"></div>


			<form action="${pageContext.request.contextPath}/login.do"
				id="login-validation"
				class="col-md-3 center-margin form-vertical mrg25T" method="post" />

			<div id="login-form" class="content-box">
				<h3 class="content-box-header ui-state-default">
					<div class="glyph-icon icon-separator">
						<i class="glyph-icon icon-user"></i>
					</div>
					<span>登陆界面</span>
				</h3>
				<div class="content-box-wrapper pad20A pad0B">
					<div class="form-row">
						<div class="form-label col-md-2">
							<label for="login_email"> 用户登陆名: <span class="required">*</span></label>
						</div>

						<div class="form-input col-md-10">
							<div class="form-input-icon">
								<i class="glyph-icon icon-envelope-alt ui-state-default"></i> <input
									placeholder="请输入用户名" data-type="email" data-trigger="change"
									data-required="true" type="text" name="userName"
									id="loginUserName" value="${user.userName}" />
							</div>
						</div>
					</div>

					<div class="form-row">
						<div class="form-label col-md-2">
							<label for="login_pass"> 用户的密码: <span class="required">*</span>
							</label>
						</div>
						<div class="form-input col-md-10">
							<div class="form-input-icon">
								<i class="glyph-icon icon-unlock-alt ui-state-default"></i> <input
									placeholder="请输入密码" data-trigger="keyup"
									data-rangelength="[3,25]" type="password" name="password"
									id="loginUserPass" value="${user.password}"  />
							</div>
						</div>
					</div>
				</div>
				<div class="button-pane text-center" id="buttons">
					<button type="submit"
						class="btn large primary-bg text-transform-upr font-size-11"
						id="demo-form-valid" title="Validate!"
						>
						<span class="button-content"> 登陆 </span>
					</button>

					<script type="text/javascript">
					   $(function() { 
						      $("#buttons .btn").click(function(){
									var login_name = $("#loginUserName").val();
									var login_pass = $("#loginUserPass").val();
									if((login_name==null||login_name=="")||(login_pass==null||login_pass=="")){
							        	alert("请确认用户名或密码");
									}
						      });
						   }); 
			        </script>

				</div>

			</div>
			<div class="divider"></div>
			</form>
		</div>
	</div>
</body>
</html>
