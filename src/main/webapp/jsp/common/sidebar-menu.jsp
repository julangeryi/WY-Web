<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
</head>
<body>
	<div id="page-sidebar" class="scrollable-content">

		<div id="sidebar-menu">
			<ul>
				<li><a href="#" title="个人办公"><i
						class="glyph-icon icon-dashboard"></i>个人办公</a></li>
				<c:choose>
					<c:when test="${sessionScope.userRole =='res'}">
						<!-- 资料整合与管理 -->
						<li><a href="javascript:;" title="资料整合与管理"><i
								class="glyph-icon icon-code"></i>资料整合与管理</a>
							<ul>
								<li><a
									href="${pageContext.request.contextPath}/resSurvey.do"
									title="勘察设计资料"><i class="glyph-icon icon-chevron-right"></i>勘察设计资料</a>
								</li>
								<li><a
									href="${pageContext.request.contextPath}/resBuild.do"
									title="施工资料"><i class="glyph-icon icon-chevron-right"></i>施工资料</a>
								</li>
								<li><a
									href="${pageContext.request.contextPath}/resResearch.do"
									title="科研资料"><i class="glyph-icon icon-chevron-right"></i>科研资料</a>
								</li>
								<li><a
									href="${pageContext.request.contextPath}/resManagement.do"
									title="资料管理"><i class="glyph-icon icon-chevron-right"></i>资料管理</a>
								</li>
								<li><a
									href="${pageContext.request.contextPath}/resDeleteHistory.do"
									title="资料管理"><i class="glyph-icon icon-chevron-right"></i>删除查询</a>
								</li>
							</ul></li>
					</c:when>
					
					<c:when test="${sessionScope.userRole =='norole'}">
						<!-- 资料整合与管理 -->
						<li><a href="javascript:;" title="请联系管理员，给此用户授权"><i
								class="glyph-icon icon-code"></i>请联系管理员，授权</a>
					</c:when>

					<c:when test="${sessionScope.userRole =='mon'}">
						<!-- 监测信息采集 -->
						<li><a href="javascript:;" title="监测信息采集"><i
								class="glyph-icon icon-folder-open"></i>监测信息采集</a>
							<ul>
								<li><a
									href="${pageContext.request.contextPath}/monEquipmentDistribution.do"
									title="Grid Layouts"><i
										class="glyph-icon icon-chevron-right"></i>设备分布</a></li>
								<li><a
									href="${pageContext.request.contextPath}/monEquipmentState.do"
									title="Helpers"><i class="glyph-icon icon-chevron-right"></i>
										设备状态</a></li>
								<li><a
									href="${pageContext.request.contextPath}/monEquipmentParameter.do"
									title="Login"><i class="glyph-icon icon-chevron-right"></i>设备参数</a>
								</li>
								<li><a
									href="${pageContext.request.contextPath}/monRealTimeData.do"
									title="Login"><i class="glyph-icon icon-chevron-right"></i>实时数据</a>
								</li>
								<li><a
									href="${pageContext.request.contextPath}/monHistoryQuery.do"
									title="Login"><i class="glyph-icon icon-chevron-right"></i>历史查询</a>
								</li>
								<li><a
									href="${pageContext.request.contextPath}/monDownload.do"
									title="Login"><i class="glyph-icon icon-chevron-right"></i>数据下载</a>
								</li>
							</ul></li>
					</c:when>

					<c:when test="${sessionScope.userRole =='inf'}">
						<!-- 信息发布 -->
						<li><a href="javascript:;" title="信息发布"><i
								class="glyph-icon icon-tags"></i>信息发布</a>
							<ul>
								<li><a
									href="${pageContext.request.contextPath}/infAutoRelease.do"
									title="Tabs"> <i class="glyph-icon icon-chevron-right"></i>
										自动发布
								</a></li>
								<li><a
									href="${pageContext.request.contextPath}/infArtificialRelease.do"
									title="Tabs"> <i class="glyph-icon icon-chevron-right"></i>
										及时发布
								</a></li>
								<li><a
									href="${pageContext.request.contextPath}/infJournal.do"
									title="Tabs"> <i class="glyph-icon icon-chevron-right"></i>
										信息日志
								</a></li>
							</ul></li>
					</c:when>

					<c:when test="${sessionScope.userRole =='rep'}">
						<!-- 统计与报表 -->
						<li><a href="javascript:;" title="统计与报表"> <i
								class="glyph-icon icon-laptop"></i> 统计与报表
						</a>
							<ul>
								<li><a
									href="${pageContext.request.contextPath}/repDataStatistics.do"
									title="Content Boxes"> <i
										class="glyph-icon icon-chevron-right"></i>数据统计
								</a></li>
								<li><a
									href="${pageContext.request.contextPath}/repUpLoad.do"
									title="Response Messages"> <i
										class="glyph-icon icon-chevron-right"></i>报表上传
								</a></li>
								<li><a
									href="${pageContext.request.contextPath}/repQuery.do"
									title="Badges &amp; Labels"> <i
										class="glyph-icon icon-chevron-right"></i> 报表查询
								</a></li>
							</ul></li>
					</c:when>

					<c:when test="${sessionScope.userRole =='aux'}">
						<!-- 辅助决策 -->
						<li><a href="javascript:;" title="Charts"> <i
								class="glyph-icon icon-bar-chart"></i> 辅助决策
						</a>
							<ul>
								<li><a
									href="${pageContext.request.contextPath}/auxDecisionInfo.do"
									title="Pie Gauges"> <i
										class="glyph-icon icon-chevron-right"></i> 决策信息
								</a></li>
								<li><a
									href="${pageContext.request.contextPath}/auxReferenceResources.do"
									title="JustGage"> <i class="glyph-icon icon-chevron-right"></i>
										参考文件
								</a></li>
								<li><a
									href="${pageContext.request.contextPath}/auxUpLoad.do"
									title="Sparklines"> <i
										class="glyph-icon icon-chevron-right"></i> 文档上传
								</a></li>
							</ul></li>

					</c:when>

					<c:when test="${sessionScope.userRole =='admin'}">
						<!-- 资料整合与管理 -->
						<li><a href="javascript:;" title="资料整合与管理"><i
								class="glyph-icon icon-code"></i>资料整合与管理</a>
							<ul>
								<li><a
									href="${pageContext.request.contextPath}/resSurvey.do"
									title="勘察设计资料"><i class="glyph-icon icon-chevron-right"></i>勘察设计资料</a>
								</li>
								<li><a
									href="${pageContext.request.contextPath}/resBuild.do"
									title="施工资料"><i class="glyph-icon icon-chevron-right"></i>施工资料</a>
								</li>
								<li><a
									href="${pageContext.request.contextPath}/resResearch.do"
									title="科研资料"><i class="glyph-icon icon-chevron-right"></i>科研资料</a>
								</li>
								<li><a
									href="${pageContext.request.contextPath}/adminResManagement.do"
									title="资料管理"><i class="glyph-icon icon-chevron-right"></i>资料管理</a>
								</li>
								<li><a
									href="${pageContext.request.contextPath}/resDeleteHistory.do"
									title="资料管理"><i class="glyph-icon icon-chevron-right"></i>删除查询</a>
								</li>
							</ul></li>
						<!-- 监测信息采集 -->
						<li><a href="javascript:;" title="监测信息采集"><i
								class="glyph-icon icon-folder-open"></i>监测信息采集</a>
							<ul>
								<li><a
									href="${pageContext.request.contextPath}/monEquipmentDistribution.do"
									title="Grid Layouts"><i
										class="glyph-icon icon-chevron-right"></i>设备分布</a></li>
								<li><a
									href="${pageContext.request.contextPath}/monEquipmentState.do"
									title="Helpers"><i class="glyph-icon icon-chevron-right"></i>
										设备状态</a></li>
								<li><a
									href="${pageContext.request.contextPath}/monEquipmentParameter.do"
									title="Login"><i class="glyph-icon icon-chevron-right"></i>设备参数</a>
								</li>
								<li><a
									href="${pageContext.request.contextPath}/monRealTimeData.do"
									title="Login"><i class="glyph-icon icon-chevron-right"></i>实时数据</a>
								</li>
								<li class="dropdown-submenu"><a
									href="${pageContext.request.contextPath}/monHistoryQuery.do"
									title="Login"><i class="glyph-icon icon-chevron-right"></i>历史查询</a>
								</li>
								<li><a
									href="${pageContext.request.contextPath}/monDownload.do"
									title="Login"><i class="glyph-icon icon-chevron-right"></i>数据下载</a>
								</li>
							</ul></li>
						<!-- 信息发布 -->
						<li><a href="javascript:;" title="信息发布"><i
								class="glyph-icon icon-tags"></i>信息发布</a>
							<ul>
								<li><a
									href="${pageContext.request.contextPath}/infAutoRelease.do"
									title="Tabs"> <i class="glyph-icon icon-chevron-right"></i>
										自动发布
								</a></li>
								<li><a
									href="${pageContext.request.contextPath}/infArtificialRelease.do"
									title="Tabs"> <i class="glyph-icon icon-chevron-right"></i>
										及时发布
								</a></li>
								<li><a
									href="${pageContext.request.contextPath}/infJournal.do"
									title="Tabs"> <i class="glyph-icon icon-chevron-right"></i>
										信息日志
								</a></li>
							</ul></li>
						<!-- 统计与报表 -->
						<li><a href="javascript:;" title="统计与报表"> <i
								class="glyph-icon icon-laptop"></i> 统计与报表
						</a>
							<ul>
								<li><a
									href="${pageContext.request.contextPath}/repDataStatistics.do"
									title="Content Boxes"> <i
										class="glyph-icon icon-chevron-right"></i>数据统计
								</a></li>
								<li><a
									href="${pageContext.request.contextPath}/repUpLoad.do"
									title="Response Messages"> <i
										class="glyph-icon icon-chevron-right"></i>报表上传
								</a></li>
								<li><a
									href="${pageContext.request.contextPath}/repQuery.do"
									title="Badges &amp; Labels"> <i
										class="glyph-icon icon-chevron-right"></i> 报表查询
								</a></li>
							</ul></li>
						<!-- 辅助决策 -->
						<li><a href="javascript:;" title="Charts"> <i
								class="glyph-icon icon-bar-chart"></i> 辅助决策
						</a>
							<ul>
								<li><a
									href="${pageContext.request.contextPath}/auxDecisionInfo.do"
									title="Pie Gauges"> <i
										class="glyph-icon icon-chevron-right"></i> 决策信息
								</a></li>
								<li><a
									href="${pageContext.request.contextPath}/auxReferenceResources.do"
									title="JustGage"> <i class="glyph-icon icon-chevron-right"></i>
										参考文件
								</a></li>
								<li><a
									href="${pageContext.request.contextPath}/auxUpLoad.do"
									title="Sparklines"> <i
										class="glyph-icon icon-chevron-right"></i> 文档上传
								</a></li>
							</ul></li>
						<!-- 用户管理 -->
						<li><a href="javascript:;" title="Tables"> <i
								class="glyph-icon icon-table"></i> 用户管理
						</a>
							<ul>
								<li><a
									href="${pageContext.request.contextPath}/usrPermission.do"
									title="Normal tables"> <i
										class="glyph-icon icon-chevron-right"></i>权限设置
								</a></li>
								<li><a
									href="${pageContext.request.contextPath}/usrRegister.do"
									title="Dynamic tables"> <i
										class="glyph-icon icon-chevron-right"></i> 用户注册
								</a></li>
								<li><a
									href="${pageContext.request.contextPath}/usrManage.do"
									title="Dynamic tables"> <i
										class="glyph-icon icon-chevron-right"></i> 用户管理
								</a></li>
								<li><a
									href="${pageContext.request.contextPath}/usrJournal.do"
									title="Dynamic tables"> <i
										class="glyph-icon icon-chevron-right"></i> 用户日志
								</a></li>
								<li><a
									href="${pageContext.request.contextPath}/usrStatistics.do"
									title="Dynamic tables"> <i
										class="glyph-icon icon-chevron-right"></i> 用户统计
								</a></li>
							</ul></li>
					</c:when>
				</c:choose>
			</ul>
			<div class="divider mrg5T mobile-hidden"></div>
			<div class="text-center mobile-hidden">
				<div class="button-group display-inline">
					<a href="javascript:;" class="btn medium bg-green tooltip-button"
						data-placement="top" title="消息"> <i
						class="glyph-icon icon-flag"></i>
					</a> <a href="javascript:;" class="btn medium bg-green tooltip-button"
						data-placement="top" title="邮箱"> <i
						class="glyph-icon icon-inbox"></i>
					</a> <a href="javascript:;" class="btn medium bg-green tooltip-button"
						data-placement="top" title="留言板"> <i
						class="glyph-icon icon-hdd"></i>
					</a>
				</div>

			</div>
		</div>
	</div>

</body>
</html>