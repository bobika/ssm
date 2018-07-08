<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1">
        <link rel="stylesheet" type="text/css" href="assets1/css/bootstrap-clearmin.min.css">
        <link rel="stylesheet" type="text/css" href="assets1/css/roboto.css">
        <link rel="stylesheet" type="text/css" href="assets1/css/material-design.css">
        <link rel="stylesheet" type="text/css" href="assets1/css/small-n-flat.css">
        <link rel="stylesheet" type="text/css" href="assets1/css/font-awesome.min.css">
        <title>Document</title>
    </head>
    <body class="cm-no-transition cm-1-navbar">
        <div id="cm-menu">
            <nav class="cm-navbar cm-navbar-primary">
            <!-- logo class="cm-logo" -->
                <div class="cm-flex"><a href="index.html"></a></div>
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
                            <li class="cm-submenu">
                                <a class="sf-folder-document">聚类算法<span class="caret"></span></a>
                                <ul>
                                    <li><a href="#">ABC Classification</a></li>
                                   	<li><a href="#">DBSCAN</a></li>
                                    <li><a href="Algorithm/Cluster/K-Means.jsp">K-Means</a></li>
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
                            <li class="cm-submenu">
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
                <!-- <div class="dropdown pull-right">
                    <button class="btn btn-primary md-notifications-white" data-toggle="dropdown"> <span class="label label-danger">23</span> </button>
                    <div class="popover cm-popover bottom">
                        <div class="arrow"></div>
                        <div class="popover-content">
                            <div class="list-group">
                                <a href="#" class="list-group-item">
                                    <h4 class="list-group-item-heading text-overflow">
                                        <i class="fa fa-fw fa-envelope"></i> Nunc volutpat aliquet magna.
                                    </h4>
                                    <p class="list-group-item-text text-overflow">Pellentesque tincidunt mollis scelerisque. Praesent vel blandit quam.</p>
                                </a>
                                <a href="#" class="list-group-item">
                                    <h4 class="list-group-item-heading">
                                        <i class="fa fa-fw fa-envelope"></i> Aliquam orci lectus
                                    </h4>
                                    <p class="list-group-item-text">Donec quis arcu non risus sagittis</p>
                                </a>
                                <a href="#" class="list-group-item">
                                    <h4 class="list-group-item-heading">
                                        <i class="fa fa-fw fa-warning"></i> Holy guacamole !
                                    </h4>
                                    <p class="list-group-item-text">Best check yo self, you're not looking too good.</p>
                                </a>
                            </div>
                            <div style="padding:10px"><a class="btn btn-success btn-block" href="#">Show me more...</a></div>
                        </div>
                    </div>
                </div> -->
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
        </header>
        <div id="global">
            <div class="container-fluid">
                <div class="panel panel-default">
<!--                     <iframe src="document/PRD_AIWRD.html" frameBorder=0 scrolling=no width="100%"></iframe> -->
						<jsp:include page="document/PRD_AIWRD.htm" />
                </div>
                <div class="panel panel-default">
                    <div class="panel-body">
                        
                    </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-body">
                        
                    </div>
                </div>
            </div>
            <footer class="cm-footer"><span class="pull-left">Connected as Penghai Software</span><span class="pull-right">&copy; COSMOPlat PAR</span></footer>
        </div>
        <script src="assets1/js/lib/jquery-2.1.3.min.js"></script>
        <script src="assets1/js/jquery.mousewheel.min.js"></script>
        <script src="assets1/js/jquery.cookie.min.js"></script>
        <script src="assets1/js/fastclick.min.js"></script>
        <script src="assets1/js/bootstrap.min.js"></script>
        <script src="assets1/js/clearmin.min.js"></script>
    </body>
</html>