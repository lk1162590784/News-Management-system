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

        <div id="content" style="margin:40px auto;width:1000px;height:400px">

            <div id="myLineDiv" style="height:100%;width:100%;display:inline-block"></div>

        </div>

        <script type="text/javascript">
            function loadData(option){
                $.ajax({
                    type:"post",                         //跳转方式为post
                    async:false,                         //同步传输
                    url:'${pageContext.request.contextPath}/BarServiceServlet',      //跳转的界面，这里必须和web.xml中的url-pattern相同。跳转到该servlet之后，获取到JSONArray类型的数据，可以被Echarts识别。
                    data:{},
                    dataType:'json',
                    success:function(result){
                        if(result){
                            option.xAxis[0].data=[];
                            for(var i=0;i<result.length;i++){
                                option.xAxis[0].data.push(result[i].TABLE_NAME);  //设置横坐标的数据
                            }

                            //初始化series[0]的data
                            option.series[0].data=[];
                            for(var i=0;i<result.length;i++){
                                option.series[0].data.push(result[i].TABLE_ROWS);   //设置纵坐标的数据
                            }
                        }
                    },
                    error:function(errorMsg){
                        alert("数据加载失败");
                    }


                });
            }
            //初始化Echarts

            var myChart=echarts.init(document.getElementById('myBarDiv'));
            var option={
                title:{
                    text:'柱状图'
                },
                tooltip:{
                    show:true
                },
                legend:{
                    data:['飞机商']
                },
                xAxis:[{

                    type:'category'
                }],
                yAxis:[{
                    type:'value'
                }],
                series:[{
                    name:'销量',
                    type:'bar'

                }]
            };
            loadData(option);  //加载数据到option
            option && myChart.setOption(option);//设置option（画图）
        </script>


        <script type="text/javascript">
            var myChart=echarts.init(document.getElementById('myLineDiv'));
            var option={
                title:{
                    text:'折线图'
                },
                tooltip:{
                    show:true,
                    trigger:'item'
                },
                legend:{
                    data:['销量']
                },
                toolbox:{   //工具栏组件
                    show:true,
                    feature:{  //需要的功能
                        saveAsImage:{
                            show:true
                        },                      //保存为图片
                        dataView:{
                            show:true          //数据视图
                        },
                        dataZoom:{
                            show:true            //区域缩放与区域缩放还原
                        },
                        magicType:{
                            type:['line','bar']       //动态类型转换
                        }
                    }
                },
                xAxis:[{

                    type:'category'
                }],
                yAxis:[{
                    type:'value'
                }],
                series:[{
                    name:'销量',
                    type:'line'

                }]
            };
            loadData(option);  //加载数据到option
            myChart.setOption(option);  //设置option
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
