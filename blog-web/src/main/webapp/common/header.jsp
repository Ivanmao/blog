<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglibs.jsp"%>


<!-- header -->
<div class="myb-head">

	<div class="breadcrumbs">
		<span class="breadcrumb_root">blog console</span>
	</div>

	<div class="myb-help">
		<span><a href="javascript:void(0)">${user.username }</a></span> <span><a
			href="${ctx }/account/logout">logout</a></span>
	</div>
</div>