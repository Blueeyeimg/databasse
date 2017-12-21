<%--
  Created by IntelliJ IDEA.
  User: kyw
  Date: 17-12-18
  Time: 下午2:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>

<head>
    <title>租车系统</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Fonts -->
    <link href='http://fonts.googleapis.com/css?family=Roboto+Condensed:300,400' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Lato:300,400,700,900' rel='stylesheet' type='text/css'>
    <!-- CSS Libs -->
    <link rel="stylesheet" type="text/css" href="../../assets/main_page/lib/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="../../assets/main_page/lib/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="../../assets/main_page/lib/css/animate.min.css">
    <link rel="stylesheet" type="text/css" href="../../assets/main_page/lib/css/bootstrap-switch.min.css">
    <link rel="stylesheet" type="text/css" href="../../assets/main_page/lib/css/checkbox3.min.css">
    <link rel="stylesheet" type="text/css" href="../../assets/main_page/lib/css/jquery.dataTables.min.css">
    <link rel="stylesheet" type="text/css" href="../../assets/main_page/lib/css/dataTables.bootstrap.css">
    <link rel="stylesheet" type="text/css" href="../../assets/main_page/lib/css/select2.min.css">
    <!-- CSS App -->
    <link rel="stylesheet" type="text/css" href="../../assets/main_page/css/main_style.css">
    <link rel="stylesheet" type="text/css" href="../../assets/main_page/css/themes/flat-green.css">
    <link rel="stylesheet" type="text/css" href="../../assets/main_page/css/themes/flat-blue.css">

    <!-- Javascript Libs -->
    <script type="text/javascript" src="../../assets/main_page/lib/js/jquery.min.js"></script>
    <script type="text/javascript" src="../../assets/main_page/lib/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="../../assets/main_page/lib/js/Chart.min.js"></script>
    <script type="text/javascript" src="../../assets/main_page/lib/js/bootstrap-switch.min.js"></script>
    <script type="text/javascript" src="../../assets/main_page/lib/js/jquery.matchHeight-min.js"></script>
    <script type="text/javascript" src="../../assets/main_page/lib/js/jquery.dataTables.min.js"></script>
    <script type="text/javascript" src="../../assets/main_page/lib/js/dataTables.bootstrap.min.js"></script>
    <script type="text/javascript" src="../../assets/main_page/lib/js/select2.full.min.js"></script>
    <script type="text/javascript" src="../../assets/main_page/lib/js/ace/ace.js"></script>
    <script type="text/javascript" src="../../assets/main_page/lib/js/ace/mode-html.js"></script>
    <script type="text/javascript" src="../../assets/main_page/lib/js/ace/theme-github.js"></script>
    <!-- Javascript -->
    <script type="text/javascript" src="../../assets/main_page/js/app.js"></script>
    <script type="text/javascript" src="../../assets/main_page/js/index.js"></script>
</head>

<body id="html_theme" class="flat-blue">  <%--主题改变--%>
<div class="app-container">
    <div class="row content-container">

        <%--导航栏设置--%>
        <nav class="navbar navbar-default navbar-fixed-top navbar-top">
            <div class="container-fluid">

                <div class="navbar-header">
                    <button type="button" class="navbar-expand-toggle">
                        <i class="fa fa-bars icon"></i>
                    </button>
                    <ol class="breadcrumb navbar-breadcrumb">
                        <li class="active">租车系统</li>
                    </ol>
                    <button type="button" class="navbar-right-expand-toggle pull-right visible-xs">
                        <i class="fa fa-th icon"></i>
                    </button>
                </div>

                <%--头部导航栏右侧--%>
                <ul class="nav navbar-nav navbar-right">
                    <button type="button" class="navbar-right-expand-toggle pull-right visible-xs">
                        <i class="fa fa-times icon"></i>
                    </button>

                    <%-- 第一个消息下拉框--%>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-comments-o"></i></a>
                        <ul class="dropdown-menu animated fadeInDown">
                            <li class="title">
                                提醒 <span class="badge pull-right">5</span><%--这里需要设置从后天拿数据过来--%>
                            </li>
                            <li class="message">
                                暂时没有新消息
                            </li>
                        </ul>
                    </li>

                   <%-- 第二个消息下拉框--%>
                    <li class="dropdown primary">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-star-half-o"></i> 4</a>
                        <ul class="dropdown-menu danger  animated fadeInDown">
                            <li class="title">
                                提醒 <span class="badge pull-right">4</span>
                            </li>
                            <li>
                                <ul class="list-group notifications">
                                    <a href="#">
                                        <li class="list-group-item">
                                            <span class="badge success">1</span> <i class="fa fa-check icon"></i> 我的订单 <%--这里需要设置从后天拿数据过来--%>
                                        </li>
                                    </a>
                                    <a href="#">
                                        <li class="list-group-item">
                                            <span class="badge danger">2</span> <i class="fa fa-comments icon"></i> 发布订单
                                        </li>
                                    </a>
                                    <a href="#">
                                        <li class="list-group-item message">
                                            查看全部
                                        </li>
                                    </a>
                                </ul>
                            </li>
                        </ul>
                    </li>


                    <%--下拉栏菜单--%>
                    <li class="dropdown profile">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
                           aria-expanded="false">${user.userName}<span class="caret"></span></a><%--此处插入姓名--%>
                        <ul class="dropdown-menu animated fadeInDown">
                            <li class="profile-img">
                                <img src="../../assets/main_page/img/profile/picjumbo.com_HNCK4153_resize.jpg" class="profile-img">
                            </li>
                            <li>
                                <div class="profile-info">
                                    <h4 class="username">${unsolveorder.get(0).hasName}</h4>
                                    <p>${unsolveorder.get(0).hasName}</p>
                                    <div class="btn-group margin-bottom-2x" role="group">
                                        <button type="button" class="btn btn-default"><i class="fa fa-user"></i>详细资料</button>
                                        <button type="button" class="btn btn-default"><i class="fa fa-sign-out"></i>注销</button>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </li>

                </ul>
            </div>
        </nav>

            <%--侧边栏设置--%>
        <div class="side-menu sidebar-inverse">
            <nav class="navbar navbar-default" role="navigation">
                <div class="side-menu-container">
                    <div class="navbar-header">
                        <a class="navbar-brand" href="#">
                            <div class="icon fa fa-paper-plane"></div>
                            <div class="title">租车系统</div>
                        </a>
                        <button type="button" class="navbar-expand-toggle pull-right visible-xs">
                            <i class="fa fa-times icon"></i>
                        </button>
                    </div>

                    <ul class="nav navbar-nav">
                        <%--<li class="active">--%>
                            <%--<a href="#">--%>
                                <%--<span class="icon fa fa-tachometer"></span><span class="title">465</span>--%>
                            <%--</a>--%>
                        <%--</li>--%>
                        <li class="panel panel-default dropdown">
                            <a data-toggle="collapse" href="#dropdown-element">
                                <span class="icon fa fa-desktop"></span><span class="title">UI Kits</span>
                            </a>
                            <!-- Dropdown level 1 -->
                            <div id="dropdown-element" class="panel-collapse collapse">
                                <div class="panel-body">
                                    <ul class="nav navbar-nav">
                                        <li><a onclick="change_css()">change</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </li>

                    </ul>
                </div>
                <!-- /.navbar-collapse -->
            </nav>
        </div>


        <!-- 网页正式内容 -->
        <div class="container-fluid">
            <div class="side-body padding-top">
                <div class="car">

                  <%--
                    <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12">
                        <a href="#">
                            <div class="card red summary-inline">
                                <div class="card-body">
                                    <i class="icon fa fa-inbox fa-4x"></i>
                                    <div class="content">
                                        <div class="title">50</div>
                                        <div class="sub-title">New Mails</div>
                                    </div>
                                    <div class="clear-both"></div>
                                </div>
                            </div>
                        </a>
                    </div>


                    <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12">
                        <a href="#">
                            <div class="card yellow summary-inline">
                                <div class="card-body">
                                    <i class="icon fa fa-comments fa-4x"></i>
                                    <div class="content">
                                        <div class="title">23</div>
                                        <div class="sub-title">New Message</div>
                                    </div>
                                    <div class="clear-both"></div>
                                </div>
                            </div>
                        </a>
                    </div>


                    <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12">
                        <a href="#">
                            <div class="card green summary-inline">
                                <div class="card-body">
                                    <i class="icon fa fa-tags fa-4x"></i>
                                    <div class="content">
                                        <div class="title">280</div>
                                        <div class="sub-title">Product View</div>
                                    </div>
                                    <div class="clear-both"></div>
                                </div>
                            </div>
                        </a>
                    </div>


                    <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12">
                        <a href="#">
                            <div class="card blue summary-inline">
                                <div class="card-body">
                                    <i class="icon fa fa-share-alt fa-4x"></i>
                                    <div class="content">
                                        <div class="title">16</div>
                                        <div class="sub-title">Share</div>
                                    </div>
                                    <div class="clear-both"></div>
                                </div>
                            </div>
                        </a>
                    </div>


                </div>   --%>


          <%--      <div class="row  no-margin-bottom">
                    <div class="col-sm-6 col-xs-12">
                        <div class="row">
                            <div class="col-md-12 col-sm-12">
                                <div class="thumbnail no-margin-bottom">
                                    <img src="../../assets/main_page/img/thumbnails/hehe.jpg" class="img-responsive">
                                    <div class="caption">
                                        <p>${user.userName}</p>
                                        <h3 id="thumbnail-label1">租车${user.password}<a class="anchorjs-link" href="#thumbnail-label"><span class="anchorjs-icon"></span></a></h3>
                                        <p><a href="#" class="btn btn-primary" role="button">去看看</a></p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                            --%>
                    <div class="col-sm-4 col-xs-12">
                        <div class="row">
                            <div class="col-md-12 col-sm-12">
                                <div class="thumbnail no-margin-bottom">
                                    <img src="../../assets/main_page/img/thumbnails/62854687_p0.jpg" class="img-responsive">
                                    <div class="caption">
                                        <p>${user.userName}</p>
                                        <h3 id="thumbnail-label2">租出${user.password}<a class="anchorjs-link" href="#thumbnail-label"><span class="anchorjs-icon"></span></a></h3>
                                        <p><a href="#" class="btn btn-primary" role="button">去看看</a></p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-4 col-xs-12">
                        <div class="card card-success">
                            <div class="card-header">
                                <div class="card-title">
                                    <div class="title"><p ><i class="fa fa-comments-o"></i>出租信息</p></div> <%--//这里应该达到刷新的效果，需要ajax--%>
                                </div>
                                <div class="clear-both"></div>
                            </div>
                            <div class="card-body no-padding">
                                <ul class="message-list">
                                    <%
                                        for (int i = 0; i < 10; i++) {
                                    %>
                                    <a href="#">
                                        <li>
                                            <img src="../../assets/main_page/img/profile/profile-1.jpg" class="profile-img pull-left">
                                            <div class="message-block">
                                                <div><span class="username">Tui2Tone</span> <span class="message-datetime">12 min ago</span>
                                                </div>
                                                <div class="message">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur bibendum ornare dolor, quis ullamcorper ligula sodales.</div>
                                            </div>
                                        </li>
                                    </a>
                                    <%
                                            }
                                    %>

                                    <a onclick="a()" id="message-load-more-left" class="col-sm-4 col-xs-12">
                                        <li class="text-center load-more">
                                            <i class="fa fa-arrow-left"></i> <%--//这里需要换页，同样需要ajex--%>
                                        </li>
                                    </a>
                                    <a onclick=alert("Fd") id="message-load-re" class="col-sm-4 col-xs-12">
                                        <li class="text-center load-more">
                                            <i class="fa fa-refresh"></i>  <%--//这里需要换页，同样需要ajex--%>
                                        </li>
                                    </a>
                                    <a onclick=alert("Fd") id="message-load-more-right" class="col-sm-4 col-xs-12">
                                        <li class="text-center load-more">
                                            <i class="fa fa-arrow-right"></i> <%--//这里需要换页，同样需要ajex--%>
                                        </li>
                                    </a>




                                </ul>
                            </div>
                        </div>
                    </div>


                </div>
            </div>
        </div>
    </div>






    <script>
        function a() {
            alert(123)
        }
        var theme="green";
        function change_css(){
            if(theme=="green"){
                document.getElementById("html_theme").setAttribute("class","flat-blue");
                theme="blue";
            }else{
                document.getElementById("html_theme").setAttribute("class","flat-green");
                theme="green";
            }
        }       <%--更改主题--%>
    </script>
</body>

</html>



