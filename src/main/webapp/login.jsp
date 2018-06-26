<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

 <link rel="stylesheet" type="text/css" href="https://cdn.bootcss.com/bootstrap/3.0.0/css/bootstrap.min.css">
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <!--<script src="js/jquery.min.js"></script>-->
        <script src="assets/plugins/jquery-2.0.0.min.js"></script>
        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <script src="assets/plugins/bootstrap/js/bootstrap.min.js"></script>
<title>登录</title>

</head>
<body>
<div class="config">
<form action="user/login" method="get">
<label>账号：</label>
<input type="text" id="txtUsername" name="username" placeholder="请输入账号" /><br/>
<label>密码：</label>
<input type="password" id="txtPassword" name="password" placeholder="请输入密码" /><br/>
<input type="submit" value="提交" />
<input type="reset" value="重置" />
</br>
</form>

<form action="computer/add" method="post">
<label>数字1：</label>
<input type="text" id="number1" name="number1" placeholder="请输入数字1"/></br>
<label>数字2：</label>
<input type="text" id="number2" name="number2" placekholder="请输入数字2"/></br>
<input type="submit" value="提交" />
<input type="reset" value="重置" />
</br>
</form>

<form action="good/query">
<label>请输入要查询商品的id：</label>
<input type="text" id="GID" name="GID" placeholder="请输入要查询商品的ID"/></br>
<input type="submit" value="提交" />
<input type="reset" value="重置" />
</form>
<div class="container-fluid text-center">

	<button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">点击选择数据文件
        </button>
            <!-- 模态框（Modal） -->
            <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                            <h4 class="modal-title" id="myModalLabel">请选择输入数据</h4>
                        </div>
                        <div class="modal-body">
                             <form action="./file/fileupload.do" method="post" enctype="multipart/form-data">
							        <input type="file" name="file">
							        <button type="submit" class="btn btn-primary">确认</button>
							 </form>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>

                        </div>
                    </div>
                    <!-- /.modal-content -->
                </div>
                <!-- /.modal -->
            </div>
     <button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal1">点击进行算法配置
        </button>
            <!-- 模态框（Modal） -->
            <div class="modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                            <h4 class="modal-title" id="myModalLabel">请配置算法参数</h4>
                        </div>
                        <div class="modal-body">
                            
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>

                        </div>
                    </div>
                    <!-- /.modal-content -->
                </div>
                <!-- /.modal -->
            </div>
</div>
</body>
</html>