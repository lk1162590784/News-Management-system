<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Dream</title>
    <!-- Bootstrap Styles-->
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
    <!-- FontAwesome Styles-->
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
    <!-- Custom Styles-->
    <link href="assets/css/custom-styles.css" rel="stylesheet" />
    <link rel="stylesheet" href="css/layui.css" tppabs="http://res.layui.com/layui/dist/css/layui.css"  media="all">
    <!-- 引入 ECharts 文件 -->
    <script src="${pageContext.request.contextPath}/resource/echarts.min.js"></script>
    <script src="${pageContext.request.contextPath}/resource/jquery.min.js"></script>
    <link type="text/css" rel="stylesheet" href="css/style.css">
    <script src="js/jquery-3.4.1.min.js"></script>
    <script src="js/echarts.min.js"></script>
    <script src="js/echarts-cloud.js"></script>
    <style>
        #main{
            width: 100%;
            height: 500px;

            border:1px solid #ddd;
            float:left;
        }
        #table{
            overflow-x: auto;
            overflow-y: auto;
            width: 70%;
            height: 500px;
            float:left;
            margin-top:100gd;
            padding-top:100gd;

        }

    </style>
</head>
<body>
<div id="wrapper">
    <nav class="navbar navbar-default top-navbar" role="navigation">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="index.html">Dream</a>
        </div>

        <ul class="nav navbar-top-links navbar-right">
            <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false">
                    <i class="fa fa-envelope fa-fw"></i> <i class="fa fa-caret-down"></i>
                </a>
                <ul class="dropdown-menu dropdown-messages">
                    <li>
                        <a href="#">
                            <div>
                                <strong>John Doe</strong>
                                <span class="pull-right text-muted">
                                        <em>Today</em>
                                    </span>
                            </div>
                            <div>Lorem Ipsum has been the industry's standard dummy text ever since the 1500s...</div>
                        </a>
                    </li>
                    <li class="divider"></li>
                    <li>
                        <a href="#">
                            <div>
                                <strong>John Smith</strong>
                                <span class="pull-right text-muted">
                                        <em>Yesterday</em>
                                    </span>
                            </div>
                            <div>Lorem Ipsum has been the industry's standard dummy text ever since an kwilnw...</div>
                        </a>
                    </li>
                    <li class="divider"></li>
                    <li>
                        <a href="#">
                            <div>
                                <strong>John Smith</strong>
                                <span class="pull-right text-muted">
                                        <em>Yesterday</em>
                                    </span>
                            </div>
                            <div>Lorem Ipsum has been the industry's standard dummy text ever since the...</div>
                        </a>
                    </li>
                    <li class="divider"></li>
                    <li>
                        <a class="text-center" href="#">
                            <strong>Read All Messages</strong>
                            <i class="fa fa-angle-right"></i>
                        </a>
                    </li>
                </ul>
                <!-- /.dropdown-messages -->
            </li>
            <!-- /.dropdown -->
            <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false">
                    <i class="fa fa-tasks fa-fw"></i> <i class="fa fa-caret-down"></i>
                </a>
                <ul class="dropdown-menu dropdown-tasks">
                    <li>
                        <a href="#">
                            <div>
                                <p>
                                    <strong>Task 1</strong>
                                    <span class="pull-right text-muted">60% Complete</span>
                                </p>
                                <div class="progress progress-striped active">
                                    <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
                                        <span class="sr-only">60% Complete (success)</span>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li class="divider"></li>
                    <li>
                        <a href="#">
                            <div>
                                <p>
                                    <strong>Task 2</strong>
                                    <span class="pull-right text-muted">28% Complete</span>
                                </p>
                                <div class="progress progress-striped active">
                                    <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="28" aria-valuemin="0" aria-valuemax="100" style="width: 28%">
                                        <span class="sr-only">28% Complete</span>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li class="divider"></li>
                    <li>
                        <a href="#">
                            <div>
                                <p>
                                    <strong>Task 3</strong>
                                    <span class="pull-right text-muted">60% Complete</span>
                                </p>
                                <div class="progress progress-striped active">
                                    <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
                                        <span class="sr-only">60% Complete (warning)</span>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li class="divider"></li>
                    <li>
                        <a href="#">
                            <div>
                                <p>
                                    <strong>Task 4</strong>
                                    <span class="pull-right text-muted">85% Complete</span>
                                </p>
                                <div class="progress progress-striped active">
                                    <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="85" aria-valuemin="0" aria-valuemax="100" style="width: 85%">
                                        <span class="sr-only">85% Complete (danger)</span>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li class="divider"></li>
                    <li>
                        <a class="text-center" href="#">
                            <strong>See All Tasks</strong>
                            <i class="fa fa-angle-right"></i>
                        </a>
                    </li>
                </ul>
                <!-- /.dropdown-tasks -->
            </li>
            <!-- /.dropdown -->
            <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false">
                    <i class="fa fa-bell fa-fw"></i> <i class="fa fa-caret-down"></i>
                </a>
                <ul class="dropdown-menu dropdown-alerts">
                    <li>
                        <a href="#">
                            <div>
                                <i class="fa fa-comment fa-fw"></i> New Comment
                                <span class="pull-right text-muted small">4 min</span>
                            </div>
                        </a>
                    </li>
                    <li class="divider"></li>
                    <li>
                        <a href="#">
                            <div>
                                <i class="fa fa-twitter fa-fw"></i> 3 New Followers
                                <span class="pull-right text-muted small">12 min</span>
                            </div>
                        </a>
                    </li>
                    <li class="divider"></li>
                    <li>
                        <a href="#">
                            <div>
                                <i class="fa fa-envelope fa-fw"></i> Message Sent
                                <span class="pull-right text-muted small">4 min</span>
                            </div>
                        </a>
                    </li>
                    <li class="divider"></li>
                    <li>
                        <a href="#">
                            <div>
                                <i class="fa fa-tasks fa-fw"></i> New Task
                                <span class="pull-right text-muted small">4 min</span>
                            </div>
                        </a>
                    </li>
                    <li class="divider"></li>
                    <li>
                        <a href="#">
                            <div>
                                <i class="fa fa-upload fa-fw"></i> Server Rebooted
                                <span class="pull-right text-muted small">4 min</span>
                            </div>
                        </a>
                    </li>
                    <li class="divider"></li>
                    <li>
                        <a class="text-center" href="#">
                            <strong>See All Alerts</strong>
                            <i class="fa fa-angle-right"></i>
                        </a>
                    </li>
                </ul>
                <!-- /.dropdown-alerts -->
            </li>
            <!-- /.dropdown -->
            <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false">
                    <i class="fa fa-user fa-fw"></i> <i class="fa fa-caret-down"></i>
                </a>
                <ul class="dropdown-menu dropdown-user">
                    <li><a href="#"><i class="fa fa-user fa-fw"></i> User Profile</a>
                    </li>
                    <li><a href="#"><i class="fa fa-gear fa-fw"></i> Settings</a>
                    </li>
                    <li class="divider"></li>
                    <li><a href="#"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
                    </li>
                </ul>
                <!-- /.dropdown-user -->
            </li>
            <!-- /.dropdown -->
        </ul>
    </nav>
    <!--/. NAV TOP  -->
    <nav class="navbar-default navbar-side" role="navigation">
        <div class="sidebar-collapse">
            <ul class="nav" id="main-menu">

                <li>
                    <a href="#"><i class="fa fa-sitemap"></i> 新闻<span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a href="tablecol.jsp?i=财经">财经</a>
                        </li>
                        <li>
                            <a href="tablecol.jsp?i=房产">房产</a>
                        </li>
                        <li>
                            <a href="tablecol.jsp?i=教育">教育</a>
                        </li>
                        <li>
                            <a href="tablecol.jsp?i=军事">军事</a>
                        </li>
                        <li>
                            <a href="tablecol.jsp?i=科技">科技</a>
                        </li>
                        <li>
                            <a href="tablecol.jsp?i=汽车">汽车</a>
                        </li>
                        <li>
                            <a href="tablecol.jsp?i=体育">体育</a>
                        </li>
                        <li>
                            <a href="tablecol.jsp?i=游戏">游戏</a>
                        </li>
                        <li>
                            <a href="tablecol.jsp?i=娱乐">娱乐</a>
                        </li>
                        <li>
                            <a href="#">Second Level Link<span class="fa arrow"></span></a>
                            <ul class="nav nav-third-level">
                                <li>
                                    <a href="#">Third Level Link</a>
                                </li>
                                <li>
                                    <a href="#">Third Level Link</a>
                                </li>
                                <li>
                                    <a href="#">Third Level Link</a>
                                </li>

                            </ul>

                        </li>
                    </ul>
                </li>
                <li>
                    <a href="zhu.jsp"><i class="fa fa-fw fa-file"></i> 柱状图</a>
                </li>
                <li>
                    <a href=""><i class="fa fa-sitemap"></i>词云<span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a href="ciyun.jsp?i=caijing">财经</a>
                        </li>
                        <li>
                            <a href="ciyun.jsp?i=fangchan">房产</a>
                        </li>
                        <li>
                            <a href="ciyun.jsp?i=jiaoyu">教育</a>
                        </li>
                        <li>
                            <a href="ciyun.jsp?i=junshi">军事</a>
                        </li>
                        <li>
                            <a href="ciyun.jsp?i=keji">科技</a>
                        </li>
                        <li>
                            <a href="ciyun.jsp?i=qiche">汽车</a>
                        </li>
                        <li>
                            <a href="ciyun.jsp?i=tiyu">体育</a>
                        </li>
                        <li>
                            <a href="ciyun.jsp?i=youxi">游戏</a>
                        </li>
                        <li>
                            <a href="ciyun.jsp?i=yule">娱乐</a>
                        </li>
                        <li>
                            <a href="ciyun.jsp?i=zong">全部</a>
                        </li>
                    </ul>
                </li>
            </ul>

        </div>

    </nav>
    <!-- /. NAV SIDE  -->
    <div id="page-wrapper" >

        <h1>热词云</h1>

        <div id="main">
        </div>
        <script type="text/javascript">
            <%
      //获得number
      String str=request.getParameter("i");
      request.getSession().setAttribute("i",str);
      session.setAttribute("i1",str);
   %>
            var dt;
            $.ajax({
                url : "${pageContext.request.contextPath}/RcServlet",
                async : true,
                type : "POST",
                data : {
                },
                dataType : "json",
                success : function(data) {
                    dt = data;

                    var mydata = new Array(0);
                    for (var i = 0; i < dt.length; i++) {
                        var d = {};

                        d["name"] = dt[i].TABLE_NAME;

                        d["value"] = dt[i].TABLE_ROWS;
                        mydata.push(d);
                    }
                    var myChart = echarts.init(document.getElementById('main'));
                    //设置点击效果



                    myChart.setOption({
                        title: {
                            text: ''
                        },
                        tooltip: {},
                        series: [{
                            type : 'wordCloud',  //类型为字符云
                            shape:'smooth',  //平滑
                            gridSize : 8, //网格尺寸
                            size : ['50%','50%'],
                            //sizeRange : [ 50, 100 ],
                            rotationRange : [-45, 0, 45, 90], //旋转范围
                            textStyle : {
                                normal : {
                                    fontFamily:'微软雅黑',
                                    color: function() {
                                        return 'rgb(' +
                                            Math.round(Math.random() * 255) +
                                            ', ' + Math.round(Math.random() * 255) +
                                            ', ' + Math.round(Math.random() * 255) + ')'
                                    }
                                },
                                emphasis : {
                                    shadowBlur : 5,  //阴影距离
                                    shadowColor : '#333333'  //阴影颜色
                                }
                            },
                            left: 'center',
                            top: 'center',
                            right: null,
                            bottom: null,
                            width:'100%',
                            height:'100%',
                            data:mydata
                        }]
                    });

                    myChart.on('click', function (params) {
                        var url = "ClickServlet?keywords=" + params.name;
                        window.location.href = url;
                    });

                    alert("成功！");


                },
                error : function() {
                    alert("请求失败");
                },
            });
        </script>

        <!-- /. PAGE INNER  -->
    </div>
    <!-- /. PAGE WRAPPER  -->
</div>

<!-- 注意：如果你直接复制所有代码到本地，上述 JS 路径需要改成你本地的 -->



<!-- /. WRAPPER  -->
<!-- JS Scripts-->
<!-- jQuery Js -->
<script src="assets/js/jquery-1.10.2.js"></script>
<!-- Bootstrap Js -->
<script src="assets/js/bootstrap.min.js"></script>
<!-- Metis Menu Js -->
<script src="assets/js/jquery.metisMenu.js"></script>
<!-- Custom Js -->
<script src="assets/js/custom-scripts.js"></script>

</body>
</html>
