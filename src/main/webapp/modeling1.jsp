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
        <link rel="stylesheet" href="modeltemp/jquery-ui.custom.min.css" />
            <script type="text/javascript" src="modeltemp/jquery-2.1.4.min.js"></script>
    <script type="text/javascript" src="modeltemp/jquery-ui.min.js"></script>
    <script src="modeltemp/bootstrap.min.js"></script>
    <script type="text/javascript" src="modeltemp/jsPlumb-2.2.8.js"></script>
<!--         <script src="assets1/js/lib/jquery-2.1.3.min.js"></script> -->
        <script src="assets1/js/jquery.mousewheel.min.js"></script>
        <script src="assets1/js/jquery.cookie.min.js"></script>
        <script src="assets1/js/fastclick.min.js"></script>
<!--         <script src="assets1/js/bootstrap.min.js"></script> -->
        <script src="assets1/js/clearmin.min.js"></script>

    <script type="text/javascript" src="modeltemp/testdata.js"></script>
    <script type="text/javascript" src="modeltemp/test.js"></script>
    <link href='https://fonts.useso.com/css?family=Jaldi:400,700' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="modeltemp/css/reset.css">
    <link rel="stylesheet" href="modeltemp/css/style.css">
    <link rel="stylesheet" type="text/css" href="modeltemp/css/default.css">

    <script src="modeltemp/js/modernizr.js"></script>
    <script type="text/javascript">
        jQuery(document).ready(function(){

            setLeftMenu(testdata);

            //监听新的连接
            instance.bind("connection", function (connInfo, originalEvent) {
                //init(connInfo.connection);
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

    </style>
        <title>Modeling</title>
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
                    <div id="leftMenu" class="left" style="width: 100%;">
                    </div>
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
                            <li class="active"><a href="modeling1.jsp">建模</a></li>
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
        </header>
        <div id="global">
            <div class="container-fluid">
                <div class="panel panel-default">
                    <div class="panel-body">
                        <div id="container"></div>
                    </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-body">
                        <div style="padding-top: 10px;">
           模型名称：<input type="text" value='' id="modelName" style="height: 32px;margin-right:5px;"/>
           模型描述：<input type="text" value='' id="modelDesc" style="height: 32px;margin-right:5px;"/>
           <button class="btn btn-white btn-info" type="button" onclick="save()" style="display: inline-block;">
               <i class="ace-icon fa fa-check bigger-120 blue"></i> 保存</button>
       </div>
                    </div>
                </div>
                
            </div>
            <div id="myModal" class="modal fade" aria-labelledby="myModalLabel" aria-hidden="true">
           <div class="modal-dialog">
               <div class="modal-content">
                   <div class="modal-header">
                       <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                       <h4 class="modal-title" id="myModalLabel">设置</h4>
                   </div>
                   <div id="modalbody" class="modal-body">
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
            <footer class="cm-footer"><span class="pull-left">Connected as Penghai Software</span><span class="pull-right">&copy; COSMOPlat PAR</span></footer>
        </div>

    </body>
</html>