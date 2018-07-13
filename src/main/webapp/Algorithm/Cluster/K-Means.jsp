<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1">
<base href="<%=basePath%>">
<link rel="stylesheet" type="text/css"
	href="assets1/css/bootstrap-clearmin.min.css">
<link rel="stylesheet" type="text/css" href="assets1/css/roboto.css">
<link rel="stylesheet" type="text/css"
	href="assets1/css/material-design.css">
<link rel="stylesheet" type="text/css"
	href="assets1/css/small-n-flat.css">
<link rel="stylesheet" type="text/css"
	href="assets1/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css"
	href="assets1/css/fileinput.min.css">
<link rel="stylesheet" type="text/css"
	href="assets1/css/bootstrap-select.min.css">
<link rel="stylesheet" href="assets1/demo/jquery-ui.custom.min.css" />
<!-- <link rel="stylesheet" href="assets1/demo/bootstrap.min.css" /> -->
<style type="text/css">
#div1, #div2, #div3, #div4, #div5 {
	display: inline-block;
}
</style>
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

#container .model h4 {
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

#container .model h4 a {
	color: #fff !important;
}

#container .model ul {
	border: 1px solid #62a8d1;
	max-height: 320px;
	overflow: auto;
	margin: 0px;
	width: 100%;
	padding: 0px;
}

#container .model ul li {
	border-bottom: 1px solid #62a8d1;
	font-size: 15px;
	list-style-type: none;
}

.jtk-endpoint, .endpointTargetLabel, .endpointSourceLabel {
	cursor: pointer;
}

#leftMenu li {
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
<script type="text/javascript" src="assets1/demo/jquery-2.1.4.min.js"></script>
<script type="text/javascript" src="assets1/js/echarts.js"></script>
<!-- <script type="text/javascript" src="assets1/js/jquery.min.js"></script> -->
<script type="text/javascript" src="assets1/demo/jquery-ui.min.js"></script>
<script type="text/javascript" src="assets1/demo/bootstrap.min.js"></script>
<script type="text/javascript" src="assets1/demo/jsPlumb-2.2.8.js"></script>
<script type="text/javascript" src="assets1/demo/metadata.js"></script>
<script type="text/javascript" src="assets1/demo/demo.js"></script>
<script src="assets1/js/jquery.mousewheel.min.js"></script>
<script src="assets1/js/jquery.cookie.min.js"></script>
<script src="assets1/js/fastclick.min.js"></script>
<script src="assets1/js/bootstrap.min.js"></script>
<script src="assets1/js/clearmin.min.js"></script>
<script src="assets1/js/fileinput.min.js"></script>
<script src="assets1/js/zh.js"></script>
<script src="assets1/js/bootstrap-select.min.js"></script>
<script src="assets1/js/defaults-zh_CN.min.js"></script>
<script src="assets1/js/echarts.min.js"></script>
	<script type="text/javascript">
	jQuery(document).ready(
					function() {
						setLeftMenu(metadata);
						//监听新的连接
						instance.bind("connection", function(connInfo,originalEvent) {
							init(connInfo.connection);
						});
						instance.bind("dblclick",function(conn, originalEvent) {
											if (confirm("要删除从 "+ conn.source.getElementsByTagName("span")[0].innerHTML
													+ " —— "+ conn.target.getElementsByTagName("span")[0].innerHTML
													+ " 的连接么?")) {
												instance.detach(conn);
											}
										});
					});
</script>


<script type="text/javascript">
	//     $(document).ready(function(){
	//         //加载初始化数据
	//         loadInit();
	//     });
	//加载初始化数据
	function loadModels() {
		//在这里写你要加载的数据（可以采用jquery的ajax调用，异步、同步均可以）
		jQuery
				.ajax({
					url : "/ssm/modeling/GetAllModel.do", //将要跳转的 servlet
					type : "get", //传值方式
					//data:"type="+selectedcity_id,  //要传的值
					dataType : "json", //返回格式
					contentType : "application/x-www-form-urlencoded; charset=utf-8",
					success : function(json) { // 返回的结果显示
						//var cc = json.array;  //这是我返回的结果  
						console.log(json); //对结果进行 处理
						var s = "";
						for (var i = 0; i < json.length; i++) {

							s += "<div  class=\"panel panel-default\">";
							s += "<div style=\"text-align:left;\" class=\"panel-heading\">"
									+ json[i].name + "</div>";
							s += "<div style=\"height=50%;\" class=\"panel-body\">应用场景："
									+ json[i].scenarios + "</div>";
							s += "<div style=\"height=50%;\" class=\"panel-body\">算法类型："
									+ json[i].type + "</div>";
							s += "<div style=\"height=50%;\" class=\"panel-body\">......</div>";
							s += "<div style=\"text-align:right;\" class=\"panel-body\"><button class=\"btn btn-primary\">查看详情</button></th></div>";
							s += "</div>"
						}
						document.getElementById("showModels").innerHTML = s;
						//以上就是 Ajax 异步 前台处理 代码
					}
				});
	}
	function getDataSet(value) {
		//console.log(value);
		jQuery
				.ajax({
					url : "/AIEngine/GetDataSetServlet", //将要跳转的 servlet
					type : "get", //传值方式
					data : "id=" + value, //要传的值
					dataType : "json", //返回格式
					contentType : "application/x-www-form-urlencoded; charset=utf-8",
					success : function(json) { // 返回的结果显示
						var cc = json.array; //这是我返回的结果  
						console.log(cc); //对结果进行 处理
						var s = "";
						s += "<table class=\"table table-striped table-bordered table-hover\">"
								+ "<thead><tr><th>字段名</th><th>数据类型</th><th>描述</th></tr></thead>";
						for (var i = 0; i < json.array.length; i++) {
							s += "<tr><td>" + json.array[i].name + "</td><td>"
									+ json.array[i].type + "</td><td>"
									+ json.array[i].description + "</td></tr>";
						}
						s += "</table>";
						console.log(s);
						document.getElementById("dataSetAttribute").innerHTML = s;
						//以上就是 Ajax 异步 前台处理 代码
					}
				});

	}
</script>
<title>Modeling</title>

</head>
<body class="cm-no-transition cm-2-navbar">
        <div id="cm-menu">
            <nav class="cm-navbar cm-navbar-primary">
            <!-- logo class="cm-logo" -->
                <div class="cm-flex"><a href="index.jsp"  logo class="cm-logo"></a></div>
                <div class="btn btn-primary md-menu-white" data-toggle="cm-menu"></div>
            </nav>
            <div id="cm-menu-content">
                <div id="cm-menu-items-wrapper">
                    <div id="cm-menu-scroller">
                    	
                        <ul class="cm-menu-items">
                            <li class="cm-submenu">
                                <a class="sf-folder-document">关联规则<span class="caret"></span></a>
                                <ul>
                                    <li><a href="#">Apriori</a></li>
                                    <li><a href="#">Apriori Lite</a></li>
                                    <li><a href="#">FP-Growth</a></li>
                                    <li><a href="#">KORD-Top K Rule Discovery</a></li>
                                </ul>
                            </li>
                            <li class="cm-submenu">
                                <a class="sf-folder-document">分类算法<span class="caret"></span></a>
                                <ul>
                                    <li><a href="#">CART</a></li>
                                   	<li><a href="#">C4.5 Decision Tree Analysis</a></li>
                                    <li><a href="#">CHAID Decision Tree Analysis</a></li>
                                    <li><a href="#">K Nearest Neighbour</a></li>
                                    <li><a href="#">Logistic Regression</a></li>
                                    <li><a href="#">Back-Propagation(Neural Network)</a></li>
                                    <li><a href="#">Support Vector Machine</a></li>
                                </ul>
                            </li>
                            <li class="cm-submenu">
                                <a class="sf-folder-document">回归<span class="caret"></span></a>
                                <ul>
                                    <li><a href="#">Multiple Linear Regression</a></li>
                                   	<li><a href="#">Polynomial Regression</a></li>
                                    <li><a href="#">Exponential Regression</a></li>
                                    <li><a href="#">Bi-Variate Geometric Regression</a></li>
                                    <li><a href="#">Bi-Variate Logarithmic Regression</a></li>
                                </ul>
                            </li>
                            <li class="cm-submenu pre-open">
                                <a class="sf-folder-document">聚类算法<span class="caret"></span></a>
                                <ul>
                                    <li><a href="#">ABC Classification</a></li>
                                   	<li><a href="#">DBSCAN</a></li>
                                    <li class="active"><a href="Algorithm/Cluster/K-Means.jsp">K-Means</a></li>
                                    <li><a href="#">K-Medoid Clustering</a></li>
                                    <li><a href="#">K-Medians</a></li>
                                    <li><a href="#">Kohonen Self Organized Maps</a></li>
                                    <li><a href="#">Agglomerate Hierarchical</a></li>
                                    <li><a href="#">Affinity Propagation</a></li>
                                </ul>
                            </li>
                            <li class="cm-submenu">
                                <a class="sf-folder-document">时间序列分析<span class="caret"></span></a>
                                <ul>
                                    <li><a href="#">Single Exponential Smoothing</a></li>
                                   	<li><a href="#">Double Exponential Smoothing</a></li>
                                    <li><a href="#">Triple Exponential Smoothing</a></li>
                                    <li><a href="#">Forecast Smoothing</a></li>
                                    <li><a href="#">ARIMA</a></li>
                                    <li><a href="#">Brown Exponential Smoothing</a></li>
                                    <li><a href="#">Croston Method</a></li>
                                    <li><a href="#">Forecast Accuracy Measure</a></li>
                                    <li><a href="#">Linear Regression with Damped Trend and Seasonal Adjust</a></li>
                                    
                                </ul>
                            </li>
                            <li class="cm-submenu">
                                <a class="sf-folder-document">概率分布<span class="caret"></span></a>
                                <ul>
                                    <li><a href="#">Distribution Fit</a></li>
                                   	<li><a href="#">Cumulative Distribution Function</a></li>
                                    <li><a href="#">Quantile Function</a></li>
                                    
                                </ul>
                            </li>
                            <li class="cm-submenu pre-open">
                                <a class="sf-folder-document">离群检测<span class="caret"></span></a>
                                <ul>
                                    <li><a href="#">Inter-Quartile Range Test(Tukey's Test)</a></li>
                                   	<li><a href="#">Variance Test</a></li>
                                    <li><a href="#">Anomaly Detection</a></li>
                                    
                                </ul>
                            </li>
                            <li class="cm-submenu">
                                <a class="sf-folder-document">链接检测<span class="caret"></span></a>
                                <ul>
                                    <li><a href="#">Common Neighbors</a></li>
                                   	<li><a href="#">Jaccard's Coefficient</a></li>
                                    <li><a href="#">Adamic/Adar</a></li>
                                    <li><a href="#">Katzβ</a></li>
                                    
                                </ul>
                            </li>
                            <li class="cm-submenu">
                                <a class="sf-folder-document">数据准备<span class="caret"></span></a>
                                <ul>
                                    <li><a href="#">Sample</a></li>
                                   	<li><a href="#">Random Distribution Sampling</a></li>
                                    <li><a href="#">Binning</a></li>
                                    <li><a href="#">Scaling</a></li>
                                    <li><a href="#">Partitioning</a></li>
                                    <li><a href="#">Principal Component Analysis(PCA)</a></li>
                                    
                                </ul>
                            </li>
                            <li class="cm-submenu">
                                <a class="sf-folder-document">统计函数(单变量)<span class="caret"></span></a>
                                <ul>
                                    <li><a href="#">Mean，Median，Variance， Standard Deviation</a></li>
                                   	<li><a href="#">Kurtosis</a></li>
                                    <li><a href="#">Skewness</a></li>
                                    
                                </ul>
                            </li>
                            <li class="cm-submenu">
                                <a class="sf-folder-document">统计函数(多变量)<span class="caret"></span></a>
                                <ul>
                                    <li><a href="#">Covariance Matrix</a></li>
                                   	<li><a href="#">Pearson Correlations Matrix</a></li>
                                    <li><a href="#">Chi-squared Tests</a></li>
                                    <li><a href="#">F-test(variance equal test)</a></li>
                                    
                                </ul>
                            </li>
                            <li class="cm-submenu">
                                <a class="sf-folder-document">其他<span class="caret"></span></a>
                                <ul>
                                    <li><a href="#">Weight Scores Table</a></li>
                                   	<li><a href="#">Substitute Missing Values</a></li>   
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <header id="cm-header">
            <nav class="cm-navbar cm-navbar-primary">
                <div class="btn btn-primary md-menu-white hidden-md hidden-lg" data-toggle="cm-menu"></div>
                <div class="cm-flex">
                    <div class="cm-breadcrumb-container">
                        <ol class="breadcrumb">
                            <li class="active"><a href="modeling.jsp">建模</a></li>
                            <li><a href="#">模型库</a></li>
                            <li ><a href="document.jsp">算法文档</a></li>
                        </ol>
                    </div>
                    <form id="cm-search" action="index.html" method="get">
                        <input type="search" name="q" autocomplete="off" placeholder="Search...">
                    </form>
                </div>
                <div class="pull-right">
                    <div id="cm-search-btn" class="btn btn-primary md-search-white" data-toggle="cm-search"></div>
                </div>

     			<div class="dropdown pull-right">
                    <button class="btn btn-primary md-account-circle-white" data-toggle="dropdown"></button>
                    <ul class="dropdown-menu">
                        <li class="disabled text-center">
                            <a style="cursor:default;"><strong>Penghai Software</strong></a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#"><i class="fa fa-fw fa-user"></i> Profile</a>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-fw fa-cog"></i> Settings</a>
                        </li>
                        <li>
                            <a href="login1.jsp"><i class="fa fa-fw fa-sign-out"></i> Sign out</a>
                        </li>
                    </ul>
                </div>

            </nav>
             <nav class="cm-navbar cm-navbar-default cm-navbar-slideup">
                <div class="cm-flex">
                    <div class="nav-tabs-container">
                        <ul class="nav nav-tabs">
                            <li><a href="#lorem" data-toggle="tab">新建模型</a></li>
                            <li><a href="#showModels" onclick="loadModels()" data-toggle="tab">已建模型</a></li>
                            <li><a href="#dolor" data-toggle="tab">K-Means算法文档</a></li>
                        </ul>
                    </div>
                </div>
            </nav>
        </header>
	<div id="global">
		<div class="container-fluid">
			<div class="tab-content">
				<div class="tab-pane fade in active" id="lorem" style="margin-top: 20px">
					<div class="panel panel-default">
						<div class="panel-body">
							<div id="demo" style="margin: 20px;">
								<div class="container">
									<div class="row">
										<div class="col-xs-2"
											style="min-height: 700px; background-color: #62a8d1; border-radius: 5px; padding-top: 12px; width: auto;">
											<div class="content_wrap" style="width: 100%;">
												<div class="left" style="width: 100%;">
													<ul id="leftMenu" style="overflow: auto; margin: 0px; padding: 0px;"></ul>
												</div>
											</div>
										</div>
										<div class="col-xs-10">
											<div id="container"></div>
										</div>
									</div>
								</div>
								<div style="padding-top: 10px;">
									模型名称：<input type="text" value='' id="modelName"
										style="height: 32px; margin-right: 5px;" /> 模型描述：<input
										type="text" value='' id="modelDesc"
										style="height: 32px; margin-right: 5px;" />
									<button class="btn btn-white btn-info" type="button"
										onclick="save()" style="display: inline-block;">
										<i class="ace-icon fa fa-check bigger-120 blue"></i> 保存
									</button>
								</div>
								<div id="myModal" class="modal fade"
									aria-labelledby="myModalLabel" aria-hidden="true">
									<div class="modal-dialog">
										<div class="modal-content">
											<div class="modal-header">
												<button type="button" class="close" data-dismiss="modal"
													aria-hidden="true">&times;</button>
												<h4 class="modal-title" id="myModalLabel">请选择模型联系条件</h4>
											</div>
											<div class="modal-body">
												连线类型:<select id="twoWay">
													<option value="false">单向</option>
													<option value="true">双向</option>
												</select> 条件:<select id="select_sourceList">
												</select> <select id="select_comparison">
													<option value="=" selected="selected">=</option>
												</select> <select id="select_targetList">
												</select>
											</div>
											<div class="modal-footer">
												<button id="submit_label" type="button"
													class="btn btn-primary" data-dismiss="modal">确定</button>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="panel panel-default">
						<div class="panel-body">
							<!-- form action="#" method="post" enctype="multipart/form-data"-->
							<div style="margin-left: 20px">
								<div>
									<button type="button" class="btn btn-primary"
										data-toggle="modal" data-target="#dataInputModal">
										数据输入</button>
									<button type="button" class="btn btn-primary">--></button>

									<button type="button" class="btn btn-primary"
										data-toggle="modal" data-target="#dataProcessingModal">数据处理</button>
									<button type="button" class="btn btn-primary">--></button>
									<button type="button" class="btn btn-primary"
										data-toggle="modal" data-target="#algmConfigurationModal">K-Means</button>
									<button type="button" class="btn btn-primary">--></button>
									<button type="button" class="btn btn-primary"
										data-toggle="modal" data-target="#dataVisModal">数据可视化</button>

									<!-- Modal -->
									<div class="modal fade" id="dataInputModal" tabindex="-1"
										role="dialog" aria-labelledby="myModalLabel"
										aria-hidden="true">
										<div class="modal-dialog modal-lg" role="document">
											<div class="modal-content">
												<div class="modal-header">
													<h5 class="modal-title" id="myModalLabel">数据输入</h5>
													<button type="button" class="close" data-dismiss="modal"
														aria-label="Close">
														<span aria-hidden="true">&times;</span>
													</button>
												</div>
												<form action="modeling/fileupload.do" method="post"
													enctype="multipart/form-data">
													<div class="modal-body">
														<label class="control-label">选择文件</label> <input
															id="data_file" name="file" type="file" multiple
															class="file" data-show-upload="false"
															data-show-caption="true">
													</div>
													<div class="modal-footer">
														<button type="button" class="btn btn-secondary"
															data-dismiss="modal">关闭</button>
														<button type="submit" class="btn btn-primary">上传</button>

													</div>
												</form>
											</div>
										</div>
									</div>
								</div>
								<div style="float: right;">
									<div id="div1">
										<form action="modeling/CalculateGetResult.do" method="post"
											enctype="multipart/form-data">
											<!-- 模态框（Modal） -->
											<div class="modal fade" id="dataProcessingModal"
												tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
												aria-hidden="true">
												<div class="modal-dialog">
													<div class="modal-content">
														<div class="modal-header">
															<button type="button" class="close" data-dismiss="modal"
																aria-hidden="true">&times;</button>
															<h4 class="modal-title" id="myModalLabel">数据处理</h4>

														</div>
														<div class="modal-body">
															<span> <label>缺失值 &nbsp;</label> <!--  multiple -->
																<select name="missdata" id="missdata"
																class="selectpicker data-live-search="
																true" data-live-search-placeholder="搜索"
																data-actions-box="true" name="MissSelect">
																	<optgroup label="filter1">
																		<option value="1">删除缺失值</option>
																		<option value="2">取平均数</option>
																		<option value="3">置为与上一行相同</option>
																		<option value="4">置为与下一行相同</option>
																	</optgroup>
															</select>
															</span> <span> <label>数据变换 &nbsp;</label> <!--  multiple -->
																<table class="table table-bordered table-hover">
																	<thead>
																		<tr>
																			<th width="20%">字段名</th>
																			<th width="20%">类型</th>
																			<th width="30%">数据正则化</th>
																			<th width="30%">数据归一化</th>
																		</tr>
																	</thead>
																	<tbody>
																		<%
																			int i = 0;
																		%>
																		<c:forEach var="file_attribute"
																			items="${message.dataInput.getAttribution()}"
																			varStatus="status">
																			<tr>
																				<td>${file_attribute}</td>
																				<td></td>
																				<td><select name="normalization_<%=i %>"
																					id="normalization_${file_attribute }"
																					class="selectpicker" style="width: 100px" size="1">
																						<optgroup>
																							<option value='0'>N</option>
																							<option value='1'>Y</option>
																						</optgroup>
																				</select></td>
																				<td><select name="regularization_<%=i %>"
																					id="regularization_${file_attribute }"
																					class="selectpicker" style="width: 100px" size="1">
																						<optgroup>
																							<option value='0'>N</option>
																							<option value='1'>Y</option>
																						</optgroup>
																				</select></td>
																			</tr>
																			<%
																				i++;
																			%>
																		</c:forEach>
																	</tbody>
																</table>

															</span>
														</div>
														<div class="modal-footer">
															<!-- 							                        	<button type="submit" class="btn btn-primary">确认</button> -->
															<button type="button" class="btn btn-default"
																data-dismiss="modal">关闭</button>
														</div>

													</div>
													<!-- /.modal-content -->
												</div>
												<!-- /.modal -->
											</div>

											<!-- 模态框（Modal） -->
											<div class="modal fade" id="algmConfigurationModal"
												tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
												aria-hidden="true">
												<div class="modal-dialog">
													<div class="modal-content">
														<div class="modal-header">
															<button type="button" class="close" data-dismiss="modal"
																aria-hidden="true">&times;</button>
															<h4 class="modal-title" id="myModalLabel">算法配置</h4>
														</div>
														<div class="modal-body">
															<div>基本参数</div>
															<br>
															<div class="form-group">
																<label for="OutModel" class="col-sm-2 control-label">输出模型</label>
																<div class="col-sm-10">
																	<input type="text" class="form-control" id="OutModel"
																		placeholder="CLUSTER" disabled>
																</div>
															</div>
															<div class="form-group">
																<label for="OutModel" class="col-sm-2 control-label">数据选择</label>
																<div class="col-sm-10">
																	<select name="data_select" id="data_select"
																		class="selectpicker" data-live-search="true" multiple
																		data-live-search-placeholder="搜索"
																		data-actions-box="true">
																		<optgroup label="filter1">
																			<%
																				int j = 0;
																			%>
																			<c:forEach var="file_attribute"
																				items="${message.dataInput.getAttribution()}"
																				varStatus="status">

																				<option value="<%=j%>">${file_attribute}</option>
																				<%
																					j++;
																				%>
																			</c:forEach>
																		</optgroup>
																	</select>
																</div>
															</div>
															<div class="form-group">
																<label for="OutModel" class="col-sm-2 control-label">聚类数目</label>
																<div class="col-sm-10">
																	<input id="clusterNumber" name="clusterNumber"
																		type="text" class="form-control" id="OutModel"
																		placeholder="请输入聚类数目">
																</div>
															</div>
															<div>高级参数</div>
															<br>
															<div class="form-group">
																<label for="OutModel" class="col-sm-2 control-label">迭代次数</label>
																<div class="col-sm-10">
																	<input id="maxIter" name="maxIter" type="text"
																		class="form-control" placeholder="请输入最大迭代次数">
																</div>
															</div>
															<div class="form-group">
																<label for="OutModel" class="col-sm-2 control-label">中心计算</label>
																<div class="col-sm-10">
																	<select name="centerCalculation" id="centerCalculation"
																		class="selectpicker" data-live-search="true" multiple
																		data-live-search-placeholder="搜索"
																		data-actions-box="true">
																		<optgroup label="filter1">
																			<option value="1">随机确定</option>
																			<option value="2">*******</option>
																		</optgroup>
																	</select>
																</div>
															</div>
															<div class="form-group">
																<label for="OutModel" class="col-sm-2 control-label">距离计算</label>
																<div class="col-sm-10">
																	<select name="distanceCalculation"
																		id="distanceCalculation" class="selectpicker"
																		data-live-search="true" multiple
																		data-live-search-placeholder="搜索"
																		data-actions-box="true">
																		<optgroup label="filter1">
																			<option value="1">欧式距离</option>
																			<option value="2">余弦相似度</option>
																			<option value="3">正弦相似度</option>

																		</optgroup>
																	</select>
																</div>
															</div>
															<!-- <div class="form-group">
				                                        <label for="OutModel" class="col-sm-2 control-label">正则化</label>
				                                        <div class="col-sm-10">
				                                        <select class="selectpicker" data-live-search="true" multiple data-live-search-placeholder="搜索" data-actions-box="true">
														　　<optgroup label="filter1">
															<option>是</option>
															<option>否</option>
															</optgroup>
														</select>
														</div>
											        </div> -->
															<div class="form-group">
																<label for="OutModel" class="col-sm-2 control-label">线程数</label>
																<div class="col-sm-10">
																	<input name="threads" id="threads" type="text"
																		class="form-control" id="OutModel"
																		placeholder="请输入线程数">
																</div>
															</div>
															<div class="form-group">
																<label for="OutModel" class="col-sm-2 control-label">退出阈值</label>
																<div class="col-sm-10">
																	<input name="exitThreshold" id="exitThreshold"
																		type="text" class="form-control" id="OutModel"
																		placeholder="阈值范围0-1">
																</div>
															</div>

														</div>
														<div class="modal-footer">
															<!-- 						                        	<button type="submit" class="btn btn-primary" data-dismiss="modal">确认</button> -->
															<button type="button" class="btn btn-default"
																data-dismiss="modal">关闭</button>
														</div>
													</div>
													<!-- /.modal-content -->
												</div>
												<!-- /.modal -->
											</div>

											<!-- 模态框（Modal） -->
											<div class="modal fade" id="dataVisModal" tabindex="-1"
												role="dialog" aria-labelledby="myModalLabel"
												aria-hidden="true">
												<div class="modal-dialog">
													<div class="modal-content">

														<div class="modal-header">
															<button type="button" class="close" data-dismiss="modal"
																aria-hidden="true">&times;</button>
															<h4 class="modal-title" id="myModalLabel">可视化选项</h4>
														</div>
														<div class="modal-body">
															<div class="form-group">
																<label for="OutModel" class="col-sm-2 control-label">选择可视化方式</label>

																<select name="visualization" id="visualization"
																	class="selectpicker" data-live-search="true" multiple
																	data-live-search-placeholder="搜索"
																	data-actions-box="true">
																	<optgroup label="filter1">
																		<option value="A">表格</option>
																		<option value="B">文本文件</option>
																		<option value="C">PMML</option>
																	</optgroup>
																	<optgroup label="filter2">
																		<option value="1">折线图</option>
																		<option value="2">柱状图</option>
																		<option value="3">饼状图</option>
																		<option value="4">散点图</option>
																		<option value="5">雷达图</option>
																		<option value="6">热图</option>
																		<option value="7">树</option>
																		<option value="8">旭日图</option>
																		<option value="9">平行图</option>
																	</optgroup>
																</select>

															</div>
														</div>
														<div class="modal-footer">
															<!-- 						                        	<button type="submit" class="btn btn-primary" data-dismiss="modal">确认</button> -->
															<button type="button" class="btn btn-default"
																data-dismiss="modal">关闭</button>
														</div>
													</div>
													<!-- /.modal-content -->
												</div>
												<!-- /.modal -->


											</div>
											<!-- example -->
											<input name="datanumber" id="datanumber" type="hidden"
												value="${message.dataInput.getNumberNum() }" /> <input
												name="path" id="path" type="hidden"
												value="${message.dataInput.getPath() }" /> <input
												name="filename" id="filename" type="hidden"
												value="${message.dataInput.getFilename() }" />
											<button name="train" id="train" type="submit"
												class="btn btn-primary" data-dismiss="modal">训练</button>
										</form>
									</div>
									<div id="div2">
										<button name="savemodel" id="savemodel" type="submit"
											class="btn btn-primary" data-dismiss="modal">验证</button>
									</div>
									<div id="div3">
										<button name="savemodel" id="savemodel" type="submit"
											class="btn btn-primary" data-dismiss="modal">测试</button>
									</div>
									<div id="div4">
										<form action="modeling/SaveModel.do" method="post"
											enctype="multipart/form-data">
											<%
												i = 0;
											%>
											<c:forEach var="map"
												items="${message.algorithm.getParameter() }">
												<input name="parameter<%=i %>" type="hidden"
													value="${map.key }:${map.value }" />
												<%
													i++;
												%>
											</c:forEach>
											<input name="parameterNumber" id="parameterNumber"
												type="hidden"
												value="${message.algorithm.getParameterNumber() }" /> <input
												name="dataSetName" id="dataSetName" type="hidden"
												value="${message.dataInput.getFilename() }" /> <input
												name="inputpath" id="inputpath" type="hidden"
												value="${message.dataInput.getPath() }" /> <input
												name="outputpath" id="outputpath" type="hidden"
												value="${message.dataOutput.getPath() }" /> <input
												name="outputfile" id="outputfile" type="hidden"
												value="${message.dataOutput.getFilename() }" /> <input
												name="numberNum" id="numberNum" type="hidden"
												value="${message.dataProcess.getSelectedDataNumber() }">
											<%
												j = 0;
											%>
											<c:forEach var="attribute"
												items="${message.dataProcess.getSelectedData()}"
												varStatus="status">
												<input name="attribute<%=j %>" id="attribute<%=j %>"
													type="hidden" value="${attribute}" />
												<%
													j++;
												%>
											</c:forEach>
											<button name="savemodel" id="savemodel" type="submit"
												class="btn btn-primary" data-dismiss="modal">模型保存</button>
										</form>
									</div>
									<!-- /form  -->
									<div id="div5">
										<form action="modeling/DownloadModel.do" method="post"
											enctype="multipart/form-data">

											<input name="modelpath" id="modelpath" type="hidden"
												value="${message.model.getSavepath() }">
											<button name="downloadmodel" id="downloadmodel" type="submit"
												class="btn btn-primary" data-dismiss="modal">导出模型</button>
										</form>
									</div>
								</div>
							</div>
						</div>
					</div>
					<c:if test="${message.dataInput!=null }">
						<c:if test="${message.dataInput.isWorked()==true }">
							<div class="panel panel-default" id="file_road">
								<div class="panel-body">
									<select id="Xdata" class="selectpicker" data-live-search="true"
										data-live-search-placeholder="搜索" data-actions-box="true">
										<optgroup label="filter1">
											<%
												j = 0;
											%>
											<c:forEach var="file_attribute"
												items="${message.dataOutput.getAttribution()}"
												varStatus="status">

												<option value="<%=j%>">${file_attribute}</option>
												<%
													j++;
												%>
											</c:forEach>
										</optgroup>
									</select> <select id="Ydata" class="selectpicker"
										data-live-search="true" data-live-search-placeholder="搜索"
										data-actions-box="true">
										<optgroup label="filter1">
											<%
												j = 0;
											%>
											<c:forEach var="file_attribute"
												items="${message.dataOutput.getAttribution()}"
												varStatus="status">

												<option value="<%=j%>">${file_attribute}</option>
												<%
													j++;
												%>
											</c:forEach>
										</optgroup>
									</select> <input type="button" class="btn btn-default" value="打开图例"
										id="btn" onclick="sub()">
									<div id="main" style="width: 600px; height: 400px;">123</div>
									<script type="text/javascript">
								// 基于准备好的dom，初始化echarts实例
								var myChart = echarts.init(document.getElementById('main'));

								var option = {
									title : {
										text : '数据表格'

									},
									tooltip : {

									},
									legend : {
										data : []
									},
									toolbox : {
										show : true,
										feature : {
											mark : {
												show : true
											},
											dataZoom : {
												show : true
											},
											dataView : {
												show : true,
												readOnly : false
											},
											restore : {
												show : true
											},
											saveAsImage : {
												show : true
											}
										}
									},
									xAxis : [ {
										type : 'value',
										scale : true,
										axisLabel : {
											formatter : '{value} cm'
										}
									} ],
									yAxis : [ {
										type : 'value',
										scale : true,
										axisLabel : {
											formatter : '{value} kg'
										}
									} ],
									series : []
								};

								// 使用刚指定的配置项和数据显示图表。
								myChart.setOption(option);
								function sub(val) {
									var Xdata = $("#Xdata").val();
									var Ydata = $("#Ydata").val();
									
									var dataNum=${requestScope.message.dataOutput.dataNum};
									var numberNum=${requestScope.message.dataOutput.numberNum};
									var str='${requestScope.message.dataOutput.result}';
									var array=eval('(' + str + ')');
									//console.log(array);
									var attributions='${requestScope.message.dataOutput.attribution}';
									//console.log(attributions);
									var classify = new Array();
									var count=0;
									for(var i=0;i<dataNum;i++){
										var find=false;
										for(var j=0;j<count;j++){
											if(array[i].classes==classify[j]){
												find=true;
												break;
											}
										}
										if(find){
											
										}else{
											classify[count]=array[i].classes.toString();
											count++;
										}
											
									}
									//console.log(classify);
									var alldata=new Array();
									for(var i=0;i<dataNum;i++){
										var d=new Array();
										var j=0;
										for(var key in array[i]){
											d[j++]=array[i][key];
										}
										alldata[i]=d;
									}
									//console.log(alldata);
									var values = new Array();
									for (var i = 0; i < classify.length; i++) {
										var value = new Array();
										for(var j=0;j<dataNum;j++){
											if(array[j].classes==classify[i]){
												value.push([alldata[j][Xdata],alldata[j][Ydata]]);
												
											}
										}
										values.push(value);
									}

									console.log(values);
									
									


									var serie = [];

									for (var i = 0; i < classify.length; i++) {

										serie.push({
											name : classify[i],
											type : 'scatter',
											data : values[i]
										});
										console.log(classify[i]);
									}
									console.log(classify);
									myChart.setOption({
												title : {
													text : '数据表格'

												},
												tooltip : {

												},
												legend : {
													data : classify
													
												},
												toolbox : {

													show : true,
													feature : {
														mark : {
															show : true
														},
														dataZoom : {
															show : true
														},
														dataView : {
															show : true,
															readOnly : false
														},
														restore : {
															show : true
														},
														saveAsImage : {
															show : true
														}
													}
												},
												xAxis : [ {
													name : Xdata,
													type : 'value',
													scale : true,
													axisLabel : {
														formatter : '{value} '
													}
												} ],
												yAxis : [ {
													name : Ydata,
													type : 'value',
													scale : true,
													axisLabel : {
														formatter : '{value} '
													}
												} ],
												series : serie
											});
// 									for(var arr in array){
// 										for(var a in arr){
// 											console.log(a.value);
// 										}
// 									}
									
								}
								</script>
								</div>
							</div>
						</c:if>

						<div class="panel panel-default" id="testReport">
							<div class="panel-body">

								<table class="table table-bordered table-hover">

									<thead>
										<tr>
											<c:forEach var="file_attribute"
												items="${message.dataInput.getAttribution()}"
												varStatus="status">

												<td>${file_attribute}</td>
											</c:forEach>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="file_data_json"
											items="${message.dataInput.getJarray()}" varStatus="status">
											<tr>
												<%
												int k = 0;
											%>
												<c:forEach items="${file_data_json}" var="item">
													<td>${item.value}</td>
													<%
													k++;
												%>
												</c:forEach>
											</tr>
										</c:forEach>
									</tbody>
								</table>

							</div>
						</div>
					</c:if>
				</div>
				<div class="tab-pane fade in active" id="showModels"
					style="margin-top: 20px">
					<div class="panel panel-default" id="testReport"></div>

				</div>
				<div class="tab-pane fade in active" id="dolor"
					style="margin-top: 20px">
					<div class="panel panel-default">
						<div class="panel-body"></div>
					</div>

				</div>
			</div>
		</div>
		<footer class="cm-footer">
		<span class="pull-left">Connected as Penghai Software</span>
		<span class="pull-right">&copy; COSMOPlat PAR</span></footer>
	</div>

    </body>
</html>