<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
<div id="page-header" class="clearfix">
                <div id="header-logo">
                    <a href="javascript:;" class="tooltip-button" data-placement="bottom" title="关闭侧边栏" id="close-sidebar">
                        <i class="glyph-icon icon-caret-left"></i>
                    </a>
                    <a href="javascript:;" class="tooltip-button hidden" data-placement="bottom" title="打开侧边栏" id="rm-close-sidebar">
                        <i class="glyph-icon icon-caret-right"></i>
                    </a>
                    <a href="javascript:;" class="tooltip-button hidden" title="Navigation Menu" id="responsive-open-menu">
                        <i class="glyph-icon icon-align-justify"></i>
                    </a>辅助决策平台 <i class="opacity-80">0.1</i>
                </div>
                
                <div class="user-profile dropdown">
                    <a href="javascript:;" title="" class="user-ico clearfix" data-toggle="dropdown">
                        <img width="36" src="assets/images/gravatar.jpg" alt="" />
                        	<span>个人设定</span>
                        <i class="glyph-icon icon-chevron-down"></i>
                    </a>
                    <ul class="dropdown-menu float-right">
                        <li>
                            <a href="javascript:;" title=""><i class="glyph-icon icon-user mrg5R"></i>修改密码 </a>
                            
                        </li>
                        <li>
                            <a href="javascript:;" title=""><i class="glyph-icon icon-cog mrg5R"></i>修改资料  </a>
                        </li>
                        <li>
                            <a href="${pageContext.request.contextPath}/logout.do" title=""><i class="glyph-icon icon-signout font-size-13 mrg5R"></i><span class="font-bold">注销退出</span></a>
                        </li>

                    </ul>
                </div>

                <div class="top-icon-bar">
                    <div class="dropdown">

                        <a data-toggle="dropdown" href="javascript:;" title="">
                            <i class="glyph-icon icon-lightbulb"></i>
                        </a>
                        <div class="dropdown-menu" title="主题切换">
                            <div class="small-box">
                                <div class="popover-title">背景选择</div>
                                <div class="popover-title">分割背景颜色</div>
                                <div class="pad10A clearfix">
                                    <a href="javascript:;" class="choose-bg" boxed-bg="#000" style="background: #000;" title=""></a>
                                    <a href="javascript:;" class="choose-bg" boxed-bg="#333" style="background: #333;" title=""></a>
                                    <a href="javascript:;" class="choose-bg" boxed-bg="#666" style="background: #666;" title=""></a>
                                    <a href="javascript:;" class="choose-bg" boxed-bg="#888" style="background: #888;" title=""></a>
                                    <a href="javascript:;" class="choose-bg" boxed-bg="#383d43" style="background: #383d43;" title=""></a>
                                    <a href="javascript:;" class="choose-bg" boxed-bg="#fafafa" style="background: #fafafa; border: #ccc solid 1px;" title=""></a>
                                    <a href="javascript:;" class="choose-bg" boxed-bg="#fff" style="background: #fff; border: #eee solid 1px;" title=""></a>
                                </div>
                                <div class="popover-title">主页主题选择</div>
                                <div class="pad10A clearfix change-layout-theme">
                                    <div class="divider mrg10T mrg10B"></div>
                                    <a href="javascript:;" class="choose-theme" layout-theme="dark-blue" title="">
                                        <span style="background: #2381E9;"></span>
                                    </a>
                                    <a href="javascript:;" class="choose-theme opacity-30 mrg15R" layout-theme="white-blue" title="">
                                        <span style="background: #2381E9;"></span>
                                    </a>
                                    <a href="javascript:;" class="choose-theme" layout-theme="dark-green" title="D">
                                        <span style="background: #78CE12;"></span>
                                    </a>
                                    <a href="javascript:;" class="choose-theme opacity-30 mrg15R" layout-theme="white-green" title="D">
                                        <span style="background: #78CE12;"></span>
                                    </a>
                                    <a href="javascript:;" class="choose-theme" layout-theme="dark-orange" title="">
                                        <span style="background: #FF6041;"></span>
                                    </a>
                                    <a href="javascript:;" class="choose-theme opacity-30 mrg15R" layout-theme="white-orange" title="">
                                        <span style="background: #FF6041;"></span>
                                    </a>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
</body>
</html>