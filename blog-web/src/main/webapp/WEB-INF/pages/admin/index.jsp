<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglibs.jsp"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>blog console</title>

<link rel="stylesheet" type="text/css" href="${ctx }/css/admin.css">

<!-- DataTables CSS -->
<link rel="stylesheet" type="text/css" href="${ctx }/plugins/DataTables-1.10.4/css/jquery.dataTables.css">
<!-- jQuery -->
<script type="text/javascript" charset="utf8" src="${ctx }/plugins/jquery/jquery-1.9.1.min.js"></script>
<!-- DataTables -->
<script type="text/javascript" charset="utf8" src="${ctx }/plugins/DataTables-1.10.4/js/jquery.dataTables.js"></script>


</head>
<body>
	<!-- header -->
	<jsp:include page="/common/header.jsp"></jsp:include>

	<!-- clear -->
	<div class="myb-clear"></div>

	<!-- contain -->
	<div id="myb-contain">
		<div id="myb-column-holder">

			<!-- contain left -->
			<div id="myb-left">
				<!-- menu bar -->
				<jsp:include page="/common/menuBar.jsp"></jsp:include>
			</div>

			<!-- contain right -->
			<div id="myb-right">
				
				
				<!-- <table width="100%" border="1">
					<tr>
						<td>1</td>
						<td>2</td>
						<td>3</td>
						<td>4</td>
					</tr>
					<tr>
						<td>1</td>
						<td>2</td>
						<td>3</td>
						<td>4</td>
					</tr>
				</table> -->
				
				
				<table id="table_id" class="display">
    <thead>
        <tr>
            <th>Column 1</th>
            <th>Column 2</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>Row 1 Data 1</td>
            <td>Row 1 Data 2</td>
        </tr>
        <tr>
            <td>Row 2 Data 1</td>
            <td>Row 2 Data 2</td>
        </tr>
    </tbody>
</table>
				
				
			</div>
		</div>
	</div>

	<!-- clear -->
	<div class="myb-clear"></div>
	
	<!-- footer -->
	<jsp:include page="/common/footer.jsp"></jsp:include>


	<script type="text/javascript" src="${ctx }/js/components/article/article-list.js"></script>
</body>
</html>