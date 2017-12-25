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

<body id="html_theme" class="flat-blue" onload="get_page_f()">  <%--主题改变--%>
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
                    <%--<li class="dropdown">--%>
                    <%--<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-comments-o"></i></a>--%>
                    <%--<ul class="dropdown-menu animated fadeInDown">--%>
                    <%--<li class="title">--%>
                    <%--提醒 <span class="badge pull-right">5</span>&lt;%&ndash;这里需要设置从后天拿数据过来&ndash;%&gt;--%>
                    <%--</li>--%>
                    <%--<li class="message">--%>
                    <%--暂时没有新消息--%>
                    <%--</li>--%>
                    <%--</ul>--%>
                    <%--</li>--%>

                    <%-- 第二个消息下拉框--%>
                    <li class="dropdown primary">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-star-half-o"></i></a>
                        <ul class="dropdown-menu danger  animated fadeInDown">

                            <li>
                                <ul class="list-group notifications">
                                    <a onclick="get_second()">
                                        <li class="list-group-item">
                                            <span class="badge success">1</span> <i class="fa fa-check icon"></i> 我的订单 <%--这里需要设置从后天拿数据过来--%>
                                        </li>
                                    </a>
                                    <a onclick="get_third()">
                                        <li class="list-group-item">
                                            <span class="badge danger">2</span> <i class="fa fa-comments icon"></i> 发布订单
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
                                        <%--<button type="button" class="btn btn-default"><i class="fa fa-user"></i>详细资料</button>--%>
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
                        <li class="panel panel-default dropdown">
                            <a data-toggle="collapse" onclick="get_page_f()">
                                <span class="icon fa fa-venus-double" ></span><span class="title" >主页</span>
                            </a>
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
                    <div class="col-sm-4 col-xs-12" id="first_page_l">
                        <div class="row">
                            <div class="col-md-12 col-sm-12">
                                <div class="thumbnail no-margin-bottom">
                                    <img src="../../assets/main_page/img/thumbnails/62854687_p0.jpg" class="img-responsive">
                                    <div class="caption">
                                        <p>${user.userName}</p>
                                        <h3 id="thumbnail-label2">租出<a class="anchorjs-link" href="#thumbnail-label"><span class="anchorjs-icon"></span></a></h3>
                                        <p><a href="#" class="btn btn-primary" role="button" data-toggle="modal" data-target="#myModal">去看看</a></p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>   <!--主页内容-->

                    <div class="col-sm-4 col-xs-12" id="first_page_m">
                        <div class="card card-success">
                            <div class="card-header">
                                <div class="card-title">
                                    <div class="title"><p ><i class="fa fa-comments-o"></i>新闻</p></div> <%--//这里应该达到刷新的效果，需要ajax--%>
                                </div>
                                <div class="clear-both"></div>
                            </div>
                            <div class="card-body no-padding">
                                <ul class="message-list">
                                    <a href="#">
                                        <li>
                                            <img src="../../assets/main_page/img/profile/profile-1.jpg" class="profile-img pull-left">
                                            <div class="message-block">
                                                <div><span class="message-datetime" >${news.get(1).date}</span>
                                                </div>
                                                <div class="message" >${news.get(1).text}</div>
                                            </div>
                                        </li>
                                    </a>
                                    <a href="#">
                                        <li>
                                            <img src="../../assets/main_page/img/profile/profile-1.jpg" class="profile-img pull-left">
                                            <div class="message-block">
                                                <div><span class="message-datetime">${news.get(2).date}</span>
                                                </div>
                                                <div class="message">${news.get(2).text}</div>
                                            </div>
                                        </li>
                                    </a>
                                    <a href="#">
                                        <li>
                                            <img src="../../assets/main_page/img/profile/profile-1.jpg" class="profile-img pull-left">
                                            <div class="message-block">
                                                <div><span class="message-datetime">${news.get(3).date}</span>
                                                </div>
                                                <div class="message">${news.get(3).text}</div>
                                            </div>
                                        </li>
                                    </a>
                                    <a href="#">
                                        <li>
                                            <img src="../../assets/main_page/img/profile/profile-1.jpg" class="profile-img pull-left">
                                            <div class="message-block">
                                                <div><span class="message-datetime">${news.get(4).date}</span>
                                                </div>
                                                <div class="message">${news.get(4).text}</div>
                                            </div>
                                        </li>
                                    </a>
                                    <a href="#">
                                        <li>
                                            <img src="../../assets/main_page/img/profile/profile-1.jpg" class="profile-img pull-left">
                                            <div class="message-block">
                                                <div><span class="message-datetime">${news.get(0).date}/span>
                                                </div>
                                                <div class="message">${news.get(0).date}</div>
                                            </div>
                                        </li>
                                    </a>

                                    <a onclick="a()"  class="col-sm-4 col-xs-12">
                                        <li class="text-center load-more">
                                            <i class="fa fa-arrow-left"></i>
                                        </li>
                                    </a>
                                    <a onclick=alert("Fd") class="col-sm-4 ;col-xs-12">
                                        <li class="text-center load-more">
                                            <i class="fa fa-refresh"></i>
                                        </li>
                                    </a>
                                    <a onclick=alert("Fd")  class="col-sm-4 ;col-xs-12">
                                        <li class="text-center load-more">
                                            <i class="fa fa-arrow-right"></i>
                                        </li>
                                    </a>
                                </ul>      <!--主页的news框--> <!--这里id的格式为f_p_n_t_x以及f_p_n_m_x,x是1到5的数字 first page news time和first page news メッセージ-->


                                <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                                    &times;
                                                </button>
                                                <h4 class="modal-title" id="myModalLabel">
                                                    请填写您的车的相关信息
                                                </h4>
                                            </div>
                                            <div class="modal-body">
                                                <%--<from id="form_car_provider" class="form-group">--%>
                                                <%--<p>车名：<input type="text" id="name"></p>--%>
                                                <%--<p>价格：<input type="text" id="money"></p>--%>
                                                <%--<p>车型：<input type="text" id="type"></p>--%>
                                                <%--</from>--%>

                                                <form class="form-horizontal" role="form" action="/hehe">
                                                    <div class="form-group">
                                                        <label for="car_name1" class="col-sm-2 control-label">车名</label>
                                                        <div class="col-sm-10">
                                                            <input type="text" class="form-control" id="car_name1"
                                                                   placeholder="请输入车名">
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="car_price1" class="col-sm-2 control-label">价格</label>
                                                        <div class="col-sm-10">
                                                            <input type="text" class="form-control" id="car_price1"
                                                                   placeholder="请输入价格">
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="car_type1" class="col-sm-2 control-label">车型</label>
                                                        <div class="col-sm-10">
                                                            <input type="text" class="form-control" id="car_type1"
                                                                   placeholder="请输入类型">
                                                        </div>
                                                    </div>
                                                </form>

                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-default" data-dismiss="modal">还是不出租了
                                                </button>
                                                <button type="button" class="btn btn-primary" data-dismiss="modal">
                                                    提交
                                                </button>
                                            </div>
                                        </div><!-- /.modal-content -->
                                    </div><!-- /.modal -->
                                </div>




                                </ul>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-4 col-xs-12" id="first_page_r">
                        <div class="row">
                            <div class="col-md-12 col-sm-12">
                                <div class="thumbnail no-margin-bottom">
                                    <img src="../../assets/main_page/img/thumbnails/62854687_p0.jpg" class="img-responsive">
                                    <div class="caption">
                                        <p>${user.userName}</p>
                                        <h3 id="thumbnail-label3">租入<a class="anchorjs-link" href="#thumbnail-label"><span class="anchorjs-icon"></span></a></h3>
                                        <p><a href="#" class="btn btn-primary" role="button" data-toggle="modal" data-target="#myModal2">去看看</a></p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel2" aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                        &times;
                                    </button>
                                    <h4 class="modal-title" id="myModalLabel2">
                                        请填写您希望租到的车的相关信息
                                    </h4>
                                </div>
                                <div class="modal-body">
                                    <%--<from id="form_car_get" class="form-group">--%>
                                    <%--<p>车名：<input type="text" id="name2"></p>--%>
                                    <%--<p>价格：<input type="text" id="money2"></p>--%>
                                    <%--<p>车型：<input type="text" id="type2"></p>--%>
                                    <%--</from>--%>
                                    <form class="form-horizontal" role="form" action="hehe">
                                        <div class="form-group">
                                            <label for="car_name2" class="col-sm-2 control-label">车类</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" id="car_name2"
                                                       name="type"     placeholder="请输入车类">
                                            </div>

                                        </div>
                                        <div class="form-group">
                                            <label for="car_price2" class="col-sm-2 control-label">月租金</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" id="car_price2"
                                                       name="carType"   placeholder="请输入月租金">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="car_type2" class="col-sm-2 control-label">车的描述</label>
                                            <div class="col-sm-10">
                                                <input type="textarea" class="form-control" id="car_type2"
                                                       name="money"  placeholder="请输入车的描述">
                                            </div>
                                        </div>


                                    </form>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-default" data-dismiss="modal">还是不租了
                                    </button>
                                    <button type="submit" class="btn btn-primary"  data-dismiss="modal" onclick="get_car_i_want()">
                                        提交
                                    </button>
                                </div>
                            </div><!-- /.modal-content -->
                        </div><!-- /.modal -->
                    </div>

                    <div class="col-sm-4 col-xs-12" id="second_page_l">
                        <div class="card card-success">
                            <div class="card-header">
                                <div class="card-title">
                                    <div class="title"><p ><i class="fa fa-comments-o"></i>我的订单</p></div> <%--//这里应该达到刷新的效果，需要ajax--%>
                                </div>
                                <div class="clear-both"></div>
                            </div>
                            <ul class="message-list">
                                <a href="#">
                                    <li>
                                        <img src="../../assets/main_page/img/profile/profile-1.jpg" class="profile-img pull-left">
                                        <div class="message-block">
                                            <div><span class="username">${unsolveorder.get(0).getName}</span> <span class="message-datetime" >${unsolveorder.get(0).date}</span>
                                            </div>
                                            <div class="message">${unsolveorder.get(0).description}</div>
                                        </div>
                                    </li>
                                </a>
                                <a href="#">
                                    <li>
                                        <img src="../../assets/main_page/img/profile/profile-1.jpg" class="profile-img pull-left">
                                        <div class="message-block">
                                            <div><span class="username">${unsolveorder.get(1).getName}</span> <span class="message-datetime" >${unsolveorder.get(1).date}</span>
                                            </div>
                                            <div class="message">${unsolveorder.get(1).description}</div>
                                        </div>
                                    </li>
                                </a>
                                <a href="#">
                                    <li>
                                        <img src="../../assets/main_page/img/profile/profile-1.jpg" class="profile-img pull-left">
                                        <div class="message-block">
                                            <div><span class="username">${unsolveorder.get(2).getName}</span> <span class="message-datetime" >${unsolveorder.get(2).date}</span>
                                            </div>
                                            <div class="message">${unsolveorder.get(2).description}</div>
                                        </div>
                                    </li>
                                </a>
                                <a href="#">
                                    <li>
                                        <img src="../../assets/main_page/img/profile/profile-1.jpg" class="profile-img pull-left">
                                        <div class="message-block">
                                            <div><span class="username">${unsolveorder.get(3).getName}</span> <span class="message-datetime" >${unsolveorder.get(3).date}</span>
                                            </div>
                                            <div class="message" >${unsolveorder.get(3).description}</div>
                                        </div>
                                    </li>
                                </a>
                                <a href="#">
                                    <li>
                                        <img src="../../assets/main_page/img/profile/profile-1.jpg" class="profile-img pull-left">
                                        <div class="message-block">
                                            <div><span class="username">${unsolveorder.get(4).getName}</span> <span class="message-datetime" >${unsolveorder.get(4).date}</span>
                                            </div>
                                            <div class="message" >${unsolveorder.get(4).description}</div>
                                        </div>
                                    </li>
                                </a>
                                <a onclick="a()"  class="col-sm-4 col-xs-12">
                                    <li class="text-center load-more">
                                        <i class="fa fa-arrow-left"></i>
                                    </li>
                                </a>
                                <a onclick=alert("Fd")  class="col-sm-4">
                                    <li class="text-center load-more">
                                        <i class="fa fa-refresh"></i>
                                    </li>
                                </a>
                                <a onclick=alert("Fd")  class="col-sm-4">
                                    <li class="text-center load-more">
                                        <i class="fa fa-arrow-right"></i>
                                    </li>
                                </a>   <!--这里元素id的命名方式：s_p_m_x，s_p_t_x,s_p_m_x ,second page time,second page message,second page user,x为1到7的数字-->
                            </ul>
                        </div>
                    </div>

                    <div class="col-sm-4 col-xs-12" id="second_page_m">
                        <div class="card card-success">
                            <div class="card-header">
                                <div class="card-title">
                                    <div class="title"><p ><i class="fa fa-comments-o"></i>我的已完成订单</p></div> <%--//这里应该达到刷新的效果，需要ajax--%>
                                </div>
                                <div class="clear-both"></div>
                            </div>
                            <ul class="message-list">
                                <a href="#">
                                    <li>
                                        <img src="../../assets/main_page/img/profile/profile-1.jpg" class="profile-img pull-left">
                                        <div class="message-block">
                                            <div><span class="username">${unsolveorder.get(5).getName}</span> <span class="message-datetime" >${unsolveorder.get(5).date}</span>
                                            </div>
                                            <div class="message">${unsolveorder.get(5).money}</div>
                                        </div>
                                    </li>
                                </a>
                                <a href="#">
                                    <li>
                                        <img src="../../assets/main_page/img/profile/profile-1.jpg" class="profile-img pull-left">
                                        <div class="message-block">
                                            <div><span class="username">${unsolveorder.get(6).getName}</span> <span class="message-datetime" >${unsolveorder.get(6).date}</span>
                                            </div>
                                            <div class="message">${unsolveorder.get(6).money}</div>
                                        </div>
                                    </li>
                                </a>
                                <a href="#">
                                    <li>
                                        <img src="../../assets/main_page/img/profile/profile-1.jpg" class="profile-img pull-left">
                                        <div class="message-block">
                                            <div><span class="username">${unsolveorder.get(7).getName}</span> <span class="message-datetime" >${unsolveorder.get(7).date}</span>
                                            </div>
                                            <div class="message">${unsolveorder.get(7).money}</div>
                                        </div>
                                    </li>
                                </a>
                                <a href="#">
                                    <li>
                                        <img src="../../assets/main_page/img/profile/profile-1.jpg" class="profile-img pull-left">
                                        <div class="message-block">
                                            <div><span class="username">${unsolveorder.get(8).getName}</span> <span class="message-datetime" >${unsolveorder.get(8).date}</span>
                                            </div>
                                            <div class="message" >${unsolveorder.get(8).money}</div>
                                        </div>
                                    </li>
                                </a>
                                <a href="#">
                                    <li>
                                        <img src="../../assets/main_page/img/profile/profile-1.jpg" class="profile-img pull-left">
                                        <div class="message-block">
                                            <div><span class="username">${unsolveorder.get(9).getName}</span> <span class="message-datetime" >${unsolveorder.get(9).date}</span>
                                            </div>
                                            <div class="message" >${unsolveorder.get(9).money}</div>
                                        </div>
                                    </li>
                                </a>
                                <a onclick="a()"  class="col-sm-4 col-xs-12">
                                    <li class="text-center load-more">
                                        <i class="fa fa-arrow-left"></i>
                                    </li>
                                </a>
                                <a onclick=alert("Fd")  class="col-sm-4">
                                    <li class="text-center load-more">
                                        <i class="fa fa-refresh"></i>
                                    </li>
                                </a>
                                <a onclick=alert("Fd")  class="col-sm-4">
                                    <li class="text-center load-more">
                                        <i class="fa fa-arrow-right"></i>
                                    </li>
                                </a>   <!--这里元素id的命名方式：s_p_m_x，s_p_t_x,s_p_m_x ,second page time,second page message,second page user,x为1到7的数字-->
                            </ul>
                        </div>
                    </div>

                    <div class="col-sm-4 col-xs-12" id="second_page_r">
                        <div class="card card-success">
                            <div class="card-header">
                                <div class="card-title">
                                    <div class="title"><p ><i class="fa fa-comments-o"></i>车位</p></div> <%--//这里应该达到刷新的效果，需要ajax--%>
                                </div>
                                <div class="clear-both"></div>
                            </div>
                            <ul class="message-list">
                                <a href="#">
                                    <li>
                                        <img src="../../assets/main_page/img/profile/profile-1.jpg" class="profile-img pull-left">
                                        <div class="message-block">
                                            <div><span class="username">${stopOder.get(0).address}</span> <span class="message-datetime" >${stopOder.get(0).money}</span>
                                            </div>
                                            <div class="message">${stopOder.get(0).description}</div>
                                        </div>
                                    </li>
                                </a>
                                <a href="#">
                                    <li>
                                        <img src="../../assets/main_page/img/profile/profile-1.jpg" class="profile-img pull-left">
                                        <div class="message-block">
                                            <div><span class="username">${stopOder.get(1).address}</span> <span class="message-datetime" >${stopOder.get(1).money}</span>
                                            </div>
                                            <div class="message">${stopOder.get(1).description}</div>
                                        </div>
                                    </li>
                                </a>
                                <a href="#">
                                    <li>
                                        <img src="../../assets/main_page/img/profile/profile-1.jpg" class="profile-img pull-left">
                                        <div class="message-block">
                                            <div><span class="username">${stopOder.get(2).getName}</span> <span class="message-datetime" >${stopOder.get(2).money}</span>
                                            </div>
                                            <div class="message">${stopOder.get(2).description}</div>
                                        </div>
                                    </li>
                                </a>
                                <a href="#">
                                    <li>
                                        <img src="../../assets/main_page/img/profile/profile-1.jpg" class="profile-img pull-left">
                                        <div class="message-block">
                                            <div><span class="username">${stopOder.get(3).getName}</span> <span class="message-datetime" >${stopOder.get(3).money}</span>
                                            </div>
                                            <div class="message" >${stopOder.get(3).description}</div>
                                        </div>
                                    </li>
                                </a>
                                <a href="#">
                                    <li>
                                        <img src="../../assets/main_page/img/profile/profile-1.jpg" class="profile-img pull-left">
                                        <div class="message-block">
                                            <div><span class="username">${stopOder.get(4).getName}</span> <span class="message-datetime" >${stopOder.get(4).money}</span>
                                            </div>
                                            <div class="message" >${stopOder.get(4).description}</div>
                                        </div>
                                    </li>
                                </a>
                                <a onclick="a()"  class="col-sm-4 col-xs-12">
                                    <li class="text-center load-more">
                                        <i class="fa fa-arrow-left"></i>
                                    </li>
                                </a>
                                <a onclick=alert("Fd")  class="col-sm-4">
                                    <li class="text-center load-more">
                                        <i class="fa fa-refresh"></i>
                                    </li>
                                </a>
                                <a onclick=alert("Fd")  class="col-sm-4">
                                    <li class="text-center load-more">
                                        <i class="fa fa-arrow-right"></i>
                                    </li>
                                </a>
                            </ul>
                        </div>
                    </div>
                    <div class="col-sm-6 col-xs-12" id="third_page_l">
                        <div class="card card-success">
                            <div class="card-header">
                                <div class="card-title">
                                    <div class="title"><p ><i class="fa fa-comments-o"></i>我发布的定单</p></div> <%--//这里应该达到刷新的效果，需要ajax--%>
                                </div>
                                <div class="clear-both"></div>
                            </div>
                            <ul class="message-list">
                                <a href="#">
                                    <li>
                                        <img src="../../assets/main_page/img/profile/profile-1.jpg" class="profile-img pull-left">
                                        <div class="message-block">
                                            <div><span class="username">${unsolveorder.get(10).money}</span> <span class="message-datetime" >${unsolveorder.get(10).date}</span>
                                            </div>
                                            <div class="message">${unsolveorder.get(10).description}</div>
                                        </div>
                                    </li>
                                </a>
                                <a href="#">
                                    <li>
                                        <img src="../../assets/main_page/img/profile/profile-1.jpg" class="profile-img pull-left">
                                        <div class="message-block">
                                            <div><span class="username">${unsolveorder.get(11).money}</span> <span class="message-datetime" >${unsolveorder.get(11).date}</span>
                                            </div>
                                            <div class="message">${unsolveorder.get(11).description}</div>
                                        </div>
                                    </li>
                                </a>
                                <a href="#">
                                    <li>
                                        <img src="../../assets/main_page/img/profile/profile-1.jpg" class="profile-img pull-left">
                                        <div class="message-block">
                                            <div><span class="username">${unsolveorder.get(12).money}</span> <span class="message-datetime" >${unsolveorder.get(12).date}</span>
                                            </div>
                                            <div class="message">${unsolveorder.get(12).description}</div>
                                        </div>
                                    </li>
                                </a>
                                <a href="#">
                                    <li>
                                        <img src="../../assets/main_page/img/profile/profile-1.jpg" class="profile-img pull-left">
                                        <div class="message-block">
                                            <div><span class="username">${unsolveorder.get(13)}</span> <span class="message-datetime" >${unsolveorder.get(13).date}</span>
                                            </div>
                                            <div class="message" >${unsolveorder.get(13).description}</div>
                                        </div>
                                    </li>
                                </a>
                                <a href="#">
                                    <li>
                                        <img src="../../assets/main_page/img/profile/profile-1.jpg" class="profile-img pull-left">
                                        <div class="message-block">
                                            <div><span class="username">${unsolveorder.get(14)}</span> <span class="message-datetime" >${unsolveorder.get(14).date}</span>
                                            </div>
                                            <div class="message" >${unsolveorder.get(14).description}</div>
                                        </div>
                                    </li>
                                </a>
                                <a onclick="a()"  class="col-sm-4 col-xs-12">
                                    <li class="text-center load-more">
                                        <i class="fa fa-arrow-left"></i>
                                    </li>
                                </a>
                                <a onclick=alert("Fd")  class="col-sm-4">
                                    <li class="text-center load-more">
                                        <i class="fa fa-refresh"></i>
                                    </li>
                                </a>
                                <a onclick=alert("Fd")  class="col-sm-4">
                                    <li class="text-center load-more">
                                        <i class="fa fa-arrow-right"></i>
                                    </li>
                                </a>
                            </ul>
                        </div>
                    </div>
                    <div class="col-sm-6 col-xs-12" id="third_page_r">
                        <div class="card card-success">
                            <div class="card-header">
                                <div class="card-title">
                                    <div class="title"><p ><i class="fa fa-comments-o"></i>被完成的订单</p></div> <%--//这里应该达到刷新的效果，需要ajax--%>
                                </div>
                                <div class="clear-both"></div>
                            </div>
                            <ul class="message-list">
                                <a href="#">
                                    <li>
                                        <img src="../../assets/main_page/img/profile/profile-1.jpg" class="profile-img pull-left">
                                        <div class="message-block">
                                            <div><span class="username">${unsolveorder.get(15).getName}</span> <span class="message-datetime" >${unsolveorder.get(15).date}</span>
                                            </div>
                                            <div class="message">${unsolveorder.get(15).money}</div>
                                        </div>
                                    </li>
                                </a>
                                <a href="#">
                                    <li>
                                        <img src="../../assets/main_page/img/profile/profile-1.jpg" class="profile-img pull-left">
                                        <div class="message-block">
                                            <div><span class="username">${unsolveorder.get(16).getName}</span> <span class="message-datetime" >${unsolveorder.get(16).date}</span>
                                            </div>
                                            <div class="message">${unsolveorder.get(16).money}</div>
                                        </div>
                                    </li>
                                </a>
                                <a href="#">
                                    <li>
                                        <img src="../../assets/main_page/img/profile/profile-1.jpg" class="profile-img pull-left">
                                        <div class="message-block">
                                            <div><span class="username">${unsolveorder.get(17).getName}</span> <span class="message-datetime" >${unsolveorder.get(17).date}</span>
                                            </div>
                                            <div class="message">${unsolveorder.get(17).money}</div>
                                        </div>
                                    </li>
                                </a>
                                <a href="#">
                                    <li>
                                        <img src="../../assets/main_page/img/profile/profile-1.jpg" class="profile-img pull-left">
                                        <div class="message-block">
                                            <div><span class="username">${unsolveorder.get(18).getName}</span> <span class="message-datetime" >${unsolveorder.get(18).date}</span>
                                            </div>
                                            <div class="message" >${unsolveorder.get(18).money}</div>
                                        </div>
                                    </li>
                                </a>
                                <a href="#">
                                    <li>
                                        <img src="../../assets/main_page/img/profile/profile-1.jpg" class="profile-img pull-left">
                                        <div class="message-block">
                                            <div><span class="username">${unsolveorder.get(19).getName}</span> <span class="message-datetime" >${unsolveorder.get(19).date}</span>
                                            </div>
                                            <div class="message" >${unsolveorder.get(19).money}</div>
                                        </div>
                                    </li>
                                </a>
                                <a onclick="a()"  class="col-sm-4 col-xs-12">
                                    <li class="text-center load-more">
                                        <i class="fa fa-arrow-left"></i>
                                    </li>
                                </a>
                                <a onclick=alert("Fd")  class="col-sm-4">
                                    <li class="text-center load-more">
                                        <i class="fa fa-refresh"></i>
                                    </li>
                                </a>
                                <a onclick=alert("Fd")  class="col-sm-4">
                                    <li class="text-center load-more">
                                        <i class="fa fa-arrow-right"></i>
                                    </li>
                                </a>
                            </ul>
                        </div>
                    </div>

                    <div class="col-sm-12 col-xs-12" id="fifth_page">
                        <div class="card card-success">
                            <div class="card-header">
                                <div class="card-title">
                                    <div class="title"><p ><i class="fa fa-comments-o"></i>符合要求的车</p></div> <%--//这里应该达到刷新的效果，需要ajax--%>
                                </div>
                                <div class="clear-both"></div>
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
        }
        function get_page_f(){
            document.getElementById("first_page_l").style.display="";
            document.getElementById("first_page_r").style.display="";
            document.getElementById("first_page_m").style.display="";
            document.getElementById("second_page_l").style.display="none";
            document.getElementById("second_page_r").style.display="none";
            document.getElementById("second_page_m").style.display="none";
            document.getElementById("third_page_l").style.display="none";
            document.getElementById("third_page_r").style.display="none";
            document.getElementById("fifth_page").style.display="none";
        }
        function get_second(){
            document.getElementById("first_page_l").style.display="none";
            document.getElementById("first_page_r").style.display="none";
            document.getElementById("first_page_m").style.display="none";
            document.getElementById("second_page_l").style.display="";
            document.getElementById("second_page_r").style.display="";
            document.getElementById("second_page_m").style.display="";
            document.getElementById("third_page_l").style.display="none";
            document.getElementById("third_page_r").style.display="none";
            document.getElementById("fifth_page").style.display="none";
        }
        function get_third(){
            document.getElementById("first_page_l").style.display="none";
            document.getElementById("first_page_r").style.display="none";
            document.getElementById("first_page_m").style.display="none";
            document.getElementById("second_page_l").style.display="none";
            document.getElementById("second_page_r").style.display="none";
            document.getElementById("second_page_m").style.display="none";
            document.getElementById("third_page_l").style.display="";
            document.getElementById("third_page_r").style.display="";
            document.getElementById("fifth_page").style.display="none";
        }
        function get_car_i_want(){
            document.getElementById("first_page_l").style.display="none";
            document.getElementById("first_page_r").style.display="none";
            document.getElementById("first_page_m").style.display="none";
            document.getElementById("second_page_l").style.display="none";
            document.getElementById("second_page_r").style.display="none";
            document.getElementById("second_page_m").style.display="none";
            document.getElementById("third_page_l").style.display="none";
            document.getElementById("third_page_r").style.display="none";
            document.getElementById("fifth_page").style.display="";
        }
        <%--更改主题--%>
    </script>

</body>

</html>



