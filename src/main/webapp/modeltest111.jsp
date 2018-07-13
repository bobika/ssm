<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
<meta charset="UTF-8">
<title>社会主义好</title>
<link rel="stylesheet" href="assets1/css/bootstrap.min.css" />
<link rel="stylesheet" href="assets1/css/jquery-ui.custom.min.css" />
<script type="text/javascript" src="assets1/js/jquery-2.1.4.min.js"></script>
<script type="text/javascript" src="assets1/js/jquery-ui.min.js"></script>
<script type="text/javascript" src="assets1/js/bootstrap.min.js"></script>
<script type="text/javascript" src="assets1/js/jsPlumb-2.2.8.js"></script>
<script type="text/javascript" src="assets1/js/metadata.js"></script>
<script type="text/javascript" src="assets1/js/demo.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function(){
		setLeftMenu(metadata);
		//监听新的连接
		instance.bind("connection", function (connInfo, originalEvent) {
	            init(connInfo.connection);
	        });
		instance.bind("dblclick", function (conn, originalEvent) {
	           if (confirm("要删除从 " + conn.source.getElementsByTagName("span")[0].innerHTML 
			   + " —— " + conn.target.getElementsByTagName("span")[0].innerHTML + " 的连接么?")){
				    instance.detach(conn);
			   }
	        });
	});
</script>
<style>
#container {
	min-height: 700px;
	position: relative;
	border: 1px solid #666666;
	background-color: #ffffff;
	border-radius: 5px;
	z-index: 0;
	overflow: auto;
}
#container .model {
	border: 1px solid #ddd;
	border-radius: 5px;
	margin-bottom: 0;
	min-width: 160px;
}
#container .model h4{
	background-color: #438eb9;
	text-align: center;
	background-image: none;
	font-size: 16px;
	color: #fff;
	border: 1px solid #438eb9;
	margin: 0px;
	height: 35px;
	vertical-align: middle;
	padding: 0 3px;
	line-height: 30px;
}
#container .model h4 a{
	color: #fff!important;
}
#container .model ul{
	border: 1px solid #62a8d1;
	max-height: 320px;
	overflow: auto;
	margin: 0px;
	width: 100%;
	padding: 0px;
}
#container .model ul li{
	border-bottom: 1px solid #62a8d1;
	font-size: 15px;
	list-style-type: none;
}
.jtk-endpoint, .endpointTargetLabel, .endpointSourceLabel {
    cursor: pointer;
}
#leftMenu li{
	height: 40px;
	width: 150px;
	background-color: #438eb9;
	border-radius: 5px;
	font-size: 18px;
	color: #fff;
	text-align: center;
	margin-bottom: 10px;
	list-style-type: none;
	vertical-align: middle;
	line-height: 40px;
	z-index: 1;
	cursor: pointer;
}
</style>
</head>
<body>
<div id="demo" style="margin:20px;">
<div class="container-fluid">
	<div class="row">
		<div class="col-xs-2" style="min-height: 700px;background-color: #62a8d1;border-radius:5px;padding-top: 12px;width: auto;">
			<div class="content_wrap" style="width: 100%;">
				<div class="left" style="width: 100%;">
					<ul id="leftMenu" style="overflow: auto;margin: 0px;padding:0px;"></ul>
				</div>
			</div>
		</div>
		<div class="col-xs-10">
			<div id="container"></div>
		</div>
	</div>
</div>
<div style="padding-top: 10px;">
模型名称：<input type="text" value='' id="modelName" style="height: 32px;margin-right:5px;"/>
模型描述：<input type="text" value='' id="modelDesc" style="height: 32px;margin-right:5px;"/>
<button class="btn btn-white btn-info" type="button" onclick="save()" style="display: inline-block;">
							<i class="ace-icon fa fa-check bigger-120 blue"></i> 保存</button>
</div>
<div id="myModal" class="modal fade" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				<h4 class="modal-title" id="myModalLabel">请选择模型联系条件</h4>
			</div>
			<div class="modal-body">
			连线类型:<select id="twoWay">
				<option value="false">单向</option>
				<option value="true">双向</option>
			</select>
				条件:<select id="select_sourceList">
				</select>
				<select id="select_comparison" >
					<option value="=" selected="selected">=</option>
				</select>
				<select id="select_targetList">
				</select>
			</div>
			<div class="modal-footer">
				<button id="submit_label" type="button" class="btn btn-primary" data-dismiss="modal">确定</button>
			</div>
		</div>
	</div>
</div>
</div>
</body>
</html>