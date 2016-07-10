<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglibs.jsp"%>


<div class="sidebar_box">
	<div id="sidebar_upper_panel">
		<div class="sidebar_box_title">
			<h3>博文管理</h3>
		</div>
		<div class="sidebar_box_body">
			<ul class="leftMenu">
				<li class="leftMenu"><a href="${ctx }/admin/index">博文管理</a></li>
				<li class="leftMenu"><a href="${ctx }/admin/cats">博文分类</a></li>
			</ul>
		</div>
	</div>


	<div id="sidebar_upper_panel">
		<div class="sidebar_box_title">
			<h3>系统管理</h3>
		</div>
		<div class="sidebar_box_body">
			<ul class="leftMenu">
				<li class="leftMenu"><a href="${ctx }/admin/users">用户管理</a></li>
				<li class="leftMenu"><a href="${ctx }/admin/roles">角色管理 </a></li>
			</ul>
		</div>
	</div>

</div>