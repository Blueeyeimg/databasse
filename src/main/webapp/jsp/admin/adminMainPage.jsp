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
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
                           aria-expanded="false"><i class="fa fa-comments-o"></i></a>
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
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
                           aria-expanded="false"><i class="fa fa-star-half-o"></i> 4</a>
                        <ul class="dropdown-menu danger  animated fadeInDown">
                            <li class="title">
                                提醒 <span class="badge pull-right">4</span>
                            </li>
                            <li>
                                <ul class="list-group notifications">
                                    <a href="#">
                                        <li class="list-group-item">
                                            <span class="badge success">1</span> <i class="fa fa-check icon"></i>
                                            我的订单 <%--这里需要设置从后天拿数据过来--%>
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
                                    <h4 class="username">${user.userName}</h4>
                                    <p>${user.userName}</p>
                                    <div class="btn-group margin-bottom-2x" role="group">
                                        <button type="button" class="btn btn-default"><i class="fa fa-user"></i>详细资料
                                        </button>
                                        <button type="button" class="btn btn-default"><i class="fa fa-sign-out"></i>注销
                                        </button>
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
                            <a data-toggle="collapse" href="#dropdown-element-1">
                                <span class="icon fa fa-edit"></span><span class="title">待审核</span>
                            </a>
                            <!-- Dropdown level 1 -->
                            <div id="dropdown-element-1" class="panel-collapse collapse">
                                <div class="panel-body">
                                    <ul class="nav navbar-nav">
                                        <li>
                                            <a onclick="unsolved_car()">待审核车辆订单</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </li>

                        <li class="panel panel-default dropdown">
                            <a data-toggle="collapse" href="#dropdown-element-2">
                                <span class="icon fa fa-automobile"></span><span class="title">车辆订单</span>
                            </a>
                            <!-- Dropdown level 1 -->
                            <div id="dropdown-element-2" class="panel-collapse collapse">
                                <div class="panel-body">
                                    <ul class="nav navbar-nav">
                                        <li><a onclick="unfinished_car()">未完成车辆订单</a>
                                        </li>
                                    </ul>
                                    <ul class="nav navbar-nav">
                                        <li><a onclick="finished_car()">已完成车辆订单</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </li>

                        <li class="panel panel-default dropdown">
                            <a data-toggle="collapse" href="#dropdown-element-3">
                                <span class="icon fa fa-user"></span><span class="title">用户</span>
                            </a>
                            <!-- Dropdown level 1 -->
                            <div id="dropdown-element-3" class="panel-collapse collapse">
                                <div class="panel-body">
                                    <ul class="nav navbar-nav">
                                        <li><a onclick="user()">用户</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </li>

                        <li class="panel panel-default dropdown">
                            <a data-toggle="collapse" href="#dropdown-element-4">
                                <span class="icon fa fa-circle"></span><span class="title">车位订单</span>
                            </a>
                            <!-- Dropdown level 1 -->
                            <div id="dropdown-element-4" class="panel-collapse collapse">
                                <div class="panel-body">
                                    <ul class="nav navbar-nav">
                                        <li><a onclick="unfinished_stop()">未完成车位订单</a>
                                        </li>
                                    </ul>
                                    <ul class="nav navbar-nav">
                                        <li><a onclick="finished_stop()">已完成车位订单</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </li>

                        <li class="panel panel-default dropdown">
                            <a data-toggle="collapse" href="#dropdown-element-5">
                                <span class="icon fa fa-hacker-news"></span><span class="title">新闻</span>
                            </a>
                            <!-- Dropdown level 1 -->
                            <div id="dropdown-element-5" class="panel-collapse collapse">
                                <div class="panel-body">
                                    <ul class="nav navbar-nav">
                                        <li><a onclick="news()">新闻</a>
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

                    <div class="col-sm-12 col-md-9" id="car_order_1">
                        <div class="sub-title">待审核</div>
                        <table class="table">
                            <thead>
                            <tr>
                                <th>订单号</th>
                                <th>类型</th>
                                <th>发布人</th>
                                <th>车辆型号</th>
                                <th>月租金</th>
                                <th>描述</th>
                                <th>时间</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr class="active">
                                <th scope="row">${unsolvedCarOrders.get(0).carOrderId}</th>
                                <td>${unsolvedCarOrders.get(0).type}</td>
                                <td>${unsolvedCarOrders.get(0).hasName}${unsolvedCarOrders.get(0).getName}</td>
                                <td>${unsolvedCarOrders.get(0).carType}</td>
                                <td>${unsolvedCarOrders.get(0).money}</td>
                                <td>${unsolvedCarOrders.get(0).description}</td>
                                <td>${unsolvedCarOrders.get(0).date}</td>
                                <td>
                                    <button type="button" class="btn btn-primary" data-toggle="modal"
                                            data-target="#myModal01"
                                            onclick="pass(${unsolvedCarOrders.get(0).carOrderId})">
                                        删除
                                    </button>
                                </td>
                                <td>
                                    <button type="button" class="btn btn-success" data-toggle="modal"
                                            data-target="#myModal02"
                                            onclick="pass(${unsolvedCarOrders.get(0).carOrderId})">
                                        通过
                                    </button>
                                </td>
                            </tr>
                            <tr>
                                <th scope="row">${unsolvedCarOrders.get(1).carOrderId}</th>
                                <td>${unsolvedCarOrders.get(1).type}</td>
                                <td>${unsolvedCarOrders.get(1).hasName}${unsolvedCarOrders.get(1).getName}</td>
                                <td>${unsolvedCarOrders.get(1).carType}</td>
                                <td>${unsolvedCarOrders.get(1).money}</td>
                                <td>${unsolvedCarOrders.get(1).description}</td>
                                <td>${unsolvedCarOrders.get(1).date}</td>
                                <td>
                                    <button type="button" class="btn btn-primary" data-toggle="modal"
                                            data-target="#myModal01"
                                            onclick="pass(${unsolvedCarOrders.get(1).carOrderId})">
                                        删除
                                    </button>
                                </td>
                                <td>
                                    <button type="button" class="btn btn-success" data-toggle="modal"
                                            data-target="#myModal02"
                                            onclick="pass(${unsolvedCarOrders.get(1).carOrderId})">
                                        通过
                                    </button>
                                </td>
                            </tr>
                            <tr class="active">
                                <th scope="row">${unsolvedCarOrders.get(2).carOrderId}</th>
                                <td>${unsolvedCarOrders.get(2).type}</td>
                                <td>${unsolvedCarOrders.get(2).hasName}${unsolvedCarOrders.get(2).getName}</td>
                                <td>${unsolvedCarOrders.get(2).carType}</td>
                                <td>${unsolvedCarOrders.get(2).money}</td>
                                <td>${unsolvedCarOrders.get(2).description}</td>
                                <td>${unsolvedCarOrders.get(2).date}</td>
                                <td>
                                    <button type="button" class="btn btn-primary" data-toggle="modal"
                                            data-target="#myModal01"
                                            onclick="pass(${unsolvedCarOrders.get(2).carOrderId})">
                                        删除
                                    </button>
                                </td>
                                <td>
                                    <button type="button" class="btn btn-success" data-toggle="modal"
                                            data-target="#myModal02"
                                            onclick="pass(${unsolvedCarOrders.get(2).carOrderId})">
                                        通过
                                    </button>
                                </td>
                            </tr>
                            <tr>
                                <th scope="row">${unsolvedCarOrders.get(3).carOrderId}</th>
                                <td>${unsolvedCarOrders.get(3).type}</td>
                                <td>${unsolvedCarOrders.get(3).hasName}${unsolvedCarOrders.get(3).getName}</td>
                                <td>${unsolvedCarOrders.get(3).carType}</td>
                                <td>${unsolvedCarOrders.get(3).money}</td>
                                <td>${unsolvedCarOrders.get(3).description}</td>
                                <td>${unsolvedCarOrders.get(3).date}</td>
                                <td>
                                    <button type="button" class="btn btn-primary" data-toggle="modal"
                                            data-target="#myModal01"
                                            onclick="pass(${unsolvedCarOrders.get(3).carOrderId})">
                                        删除
                                    </button>
                                </td>
                                <td>
                                    <button type="button" class="btn btn-success" data-toggle="modal"
                                            data-target="#myModal02"
                                            onclick="pass(${unsolvedCarOrders.get(3).carOrderId})">
                                        通过
                                    </button>
                                </td>
                            </tr>
                            <tr class="active">
                                <th scope="row">${unsolvedCarOrders.get(4).carOrderId}</th>
                                <td>${unsolvedCarOrders.get(4).type}</td>
                                <td>${unsolvedCarOrders.get(4).hasName}${unsolvedCarOrders.get(4).getName}</td>
                                <td>${unsolvedCarOrders.get(4).carType}</td>
                                <td>${unsolvedCarOrders.get(4).money}</td>
                                <td>${unsolvedCarOrders.get(4).description}</td>
                                <td>${unsolvedCarOrders.get(4).date}</td>
                                <td>
                                    <button type="button" class="btn btn-primary" data-toggle="modal"
                                            data-target="#myModal01"
                                            onclick="pass(${unsolvedCarOrders.get(4).carOrderId})">
                                        删除
                                    </button>
                                </td>
                                <td>
                                    <button type="button" class="btn btn-success" data-toggle="modal"
                                            data-target="#myModal02"
                                            onclick="pass(${unsolvedCarOrders.get(4).carOrderId})">
                                        通过
                                    </button>
                                </td>
                            </tr>
                            <tr>
                                <th scope="row">${unsolvedCarOrders.get(5).carOrderId}</th>
                                <td>${unsolvedCarOrders.get(5).type}</td>
                                <td>${unsolvedCarOrders.get(5).hasName}${unsolvedCarOrders.get(5).getName}</td>
                                <td>${unsolvedCarOrders.get(5).carType}</td>
                                <td>${unsolvedCarOrders.get(5).money}</td>
                                <td>${unsolvedCarOrders.get(5).description}</td>
                                <td>${unsolvedCarOrders.get(5).date}</td>
                                <td>
                                    <button type="button" class="btn btn-primary" data-toggle="modal"
                                            data-target="#myModal01"
                                            onclick="pass(${unsolvedCarOrders.get(5).carOrderId})">
                                        删除
                                    </button>
                                </td>
                                <td>
                                    <button type="button" class="btn btn-success" data-toggle="modal"
                                            data-target="#myModal02"
                                            onclick="pass(${unsolvedCarOrders.get(5).carOrderId})">
                                        通过
                                    </button>
                                </td>
                            </tr>
                            <tr class="active">
                                <th scope="row">${unsolvedCarOrders.get(6).carOrderId}</th>
                                <td>${unsolvedCarOrders.get(6).type}</td>
                                <td>${unsolvedCarOrders.get(6).hasName}${unsolvedCarOrders.get(6).getName}</td>
                                <td>${unsolvedCarOrders.get(6).carType}</td>
                                <td>${unsolvedCarOrders.get(6).money}</td>
                                <td>${unsolvedCarOrders.get(6).description}</td>
                                <td>${unsolvedCarOrders.get(6).date}</td>
                                <td>
                                    <button type="button" class="btn btn-primary" data-toggle="modal"
                                            data-target="#myModal01"
                                            onclick="pass(${unsolvedCarOrders.get(6).carOrderId})">
                                        删除
                                    </button>
                                </td>
                                <td>
                                    <button type="button" class="btn btn-success" data-toggle="modal"
                                            data-target="#myModal02"
                                            onclick="pass(${unsolvedCarOrders.get(6).carOrderId})">
                                        通过
                                    </button>
                                </td>
                            </tr>
                            <tr>
                                <th scope="row">${unsolvedCarOrders.get(7).carOrderId}</th>
                                <td>${unsolvedCarOrders.get(7).type}</td>
                                <td>${unsolvedCarOrders.get(7).hasName}${unsolvedCarOrders.get(7).getName}</td>
                                <td>${unsolvedCarOrders.get(7).carType}</td>
                                <td>${unsolvedCarOrders.get(7).money}</td>
                                <td>${unsolvedCarOrders.get(7).description}</td>
                                <td>${unsolvedCarOrders.get(7).date}</td>
                                <td>
                                    <button type="button" class="btn btn-primary" data-toggle="modal"
                                            data-target="#myModal01"
                                            onclick="pass(${unsolvedCarOrders.get(7).carOrderId})">
                                        删除
                                    </button>
                                </td>
                                <td>
                                    <button type="button" class="btn btn-success" data-toggle="modal"
                                            data-target="#myModal02"
                                            onclick="pass(${unsolvedCarOrders.get(7).carOrderId})">
                                        通过
                                    </button>
                                </td>
                            </tr>
                            <tr class="active">
                                <th scope="row">${unsolvedCarOrders.get(8).carOrderId}</th>
                                <td>${unsolvedCarOrders.get(8).type}</td>
                                <td>${unsolvedCarOrders.get(8).hasName}${unsolvedCarOrders.get(8).getName}</td>
                                <td>${unsolvedCarOrders.get(8).carType}</td>
                                <td>${unsolvedCarOrders.get(8).money}</td>
                                <td>${unsolvedCarOrders.get(8).description}</td>
                                <td>${unsolvedCarOrders.get(8).date}</td>
                                <td>
                                    <button type="button" class="btn btn-primary" data-toggle="modal"
                                            data-target="#myModal01"
                                            onclick="pass(${unsolvedCarOrders.get(8).carOrderId})">
                                        删除
                                    </button>
                                </td>
                                <td>
                                    <button type="button" class="btn btn-success" data-toggle="modal"
                                            data-target="#myModal02"
                                            onclick="pass(${unsolvedCarOrders.get(8).carOrderId})">
                                        通过
                                    </button>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>

                    <div class="col-sm-12 col-md-9" id="car_order_2">
                        <div class="sub-title">未完成<span class="description"></span></div>
                        <table class="table">
                            <thead>
                            <tr>
                                <th>订单号</th>
                                <th>类型</th>
                                <th>发布人</th>
                                <th>车辆型号</th>
                                <th>月租金</th>
                                <th>描述</th>
                                <th>时间</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr class="success">
                                <th scope="row">${unfinishedCarOrders.get(0).carOrderId}</th>
                                <td>${unfinishedCarOrders.get(0).type}</td>
                                <td>${unfinishedCarOrders.get(0).hasName}${unfinishedCarOrders.get(0).getName}</td>
                                <td>${unfinishedCarOrders.get(0).carType}</td>
                                <td>${unfinishedCarOrders.get(0).money}</td>
                                <td>${unfinishedCarOrders.get(0).description}</td>
                                <td>${unfinishedCarOrders.get(0).date}</td>
                                <td>
                                    <a role="button" class="btn btn-primary" data-toggle="modal"
                                       data-target="#myModal11"
                                       onclick="change_car(${unfinishedCarOrders.get(0).carOrderId})">
                                        删除
                                    </a>
                                </td>
                                <td>
                                    <a role="button" class="btn btn-success" data-toggle="modal"
                                       data-target="#myModal12"
                                       onclick="change_car(${unfinishedCarOrders.get(0).carOrderId})">
                                        修改
                                    </a>
                                </td>
                            </tr>
                            <tr>
                                <th scope="row">${unfinishedCarOrders.get(1).carOrderId}</th>
                                <td>${unfinishedCarOrders.get(1).type}</td>
                                <td>${unfinishedCarOrders.get(1).hasName}${unfinishedCarOrders.get(1).getName}</td>
                                <td>${unfinishedCarOrders.get(1).carType}</td>
                                <td>${unfinishedCarOrders.get(1).money}</td>
                                <td>${unfinishedCarOrders.get(1).description}</td>
                                <td>${unfinishedCarOrders.get(1).date}</td>
                                <td>
                                    <button type="button" class="btn btn-default" data-toggle="modal"
                                            data-target="#myModal11"
                                            onclick="change_car(${unfinishedCarOrders.get(1).carOrderId})">
                                        删除
                                    </button>
                                </td>
                                <td>
                                    <button type="button" class="btn btn-success" data-toggle="modal"
                                            data-target="#myModal12"
                                            onclick="change_car(${unfinishedCarOrders.get(1).carOrderId})">
                                        修改
                                    </button>
                                </td>
                            </tr>
                            <tr class="success">
                                <th scope="row">${unfinishedCarOrders.get(2).carOrderId}</th>
                                <td>${unfinishedCarOrders.get(2).type}</td>
                                <td>${unfinishedCarOrders.get(2).hasName}${unfinishedCarOrders.get(2).getName}</td>
                                <td>${unfinishedCarOrders.get(2).carType}</td>
                                <td>${unfinishedCarOrders.get(2).money}</td>
                                <td>${unfinishedCarOrders.get(2).description}</td>
                                <td>${unfinishedCarOrders.get(2).date}</td>
                                <td>
                                    <button type="button" class="btn btn-default" data-toggle="modal"
                                            data-target="#myModal11"
                                            onclick="change_car(${unfinishedCarOrders.get(2).carOrderId})">
                                        删除
                                    </button>
                                </td>
                                <td>
                                    <button type="button" class="btn btn-success" data-toggle="modal"
                                            data-target="#myModal12"
                                            onclick="change_car(${unfinishedCarOrders.get(2).carOrderId})">
                                        修改
                                    </button>
                                </td>
                            </tr>
                            <tr>
                                <th scope="row">${unfinishedCarOrders.get(3).carOrderId}</th>
                                <td>${unfinishedCarOrders.get(3).type}</td>
                                <td>${unfinishedCarOrders.get(3).hasName}${unfinishedCarOrders.get(3).getName}</td>
                                <td>${unfinishedCarOrders.get(3).carType}</td>
                                <td>${unfinishedCarOrders.get(3).money}</td>
                                <td>${unfinishedCarOrders.get(3).description}</td>
                                <td>${unfinishedCarOrders.get(3).date}</td>
                                <td>
                                    <button type="button" class="btn btn-default" data-toggle="modal"
                                            data-target="#myModal11"
                                            onclick="change_car(${unfinishedCarOrders.get(3).carOrderId})">
                                        删除
                                    </button>
                                </td>
                                <td>
                                    <button type="button" class="btn btn-success" data-toggle="modal"
                                            data-target="#myModal12"
                                            onclick="change_car(${unfinishedCarOrders.get(3).carOrderId})">
                                        修改
                                    </button>
                                </td>
                            </tr>
                            <tr class="success">
                                <th scope="row">${unfinishedCarOrders.get(4).carOrderId}</th>
                                <td>${unfinishedCarOrders.get(4).type}</td>
                                <td>${unfinishedCarOrders.get(4).hasName}${unfinishedCarOrders.get(4).getName}</td>
                                <td>${unfinishedCarOrders.get(4).carType}</td>
                                <td>${unfinishedCarOrders.get(4).money}</td>
                                <td>${unfinishedCarOrders.get(4).description}</td>
                                <td>${unfinishedCarOrders.get(4).date}</td>
                                <td>
                                    <button type="button" class="btn btn-default" data-toggle="modal"
                                            data-target="#myModal11"
                                            onclick="change_car(${unfinishedCarOrders.get(4).carOrderId})">
                                        删除
                                    </button>
                                </td>
                                <td>
                                    <button type="button" class="btn btn-success" data-toggle="modal"
                                            data-target="#myModal12"
                                            onclick="change_car(${unfinishedCarOrders.get(4).carOrderId})">
                                        修改
                                    </button>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <button type="button" class="btn btn-success" data-toggle="modal"
                                            data-target="#myModal13">
                                        新增
                                    </button>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>

                    <div class="col-sm-12 col-md-9" id="car_order_3">
                        <div class="sub-title">已完成</div>
                        <table class="table">
                            <thead>
                            <tr>
                                <th>订单号</th>
                                <th>类型</th>
                                <th>租车人</th>
                                <th>用车人</th>
                                <th>车辆型号</th>
                                <th>月租金</th>
                                <th>描述</th>
                                <th>时间</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr class="warning">
                                <th scope="row">${finishedCarOrders.get(0).carOrderId}</th>
                                <td>${finishedCarOrders.get(0).type}</td>
                                <td>${finishedCarOrders.get(0).hasName}</td>
                                <td>${finishedCarOrders.get(0).getName}</td>
                                <td>${finishedCarOrders.get(0).carType}</td>
                                <td>${finishedCarOrders.get(0).money}</td>
                                <td>${finishedCarOrders.get(0).description}</td>
                                <td>${finishedCarOrders.get(0).date}</td>
                                <td>
                                    <button type="button" class="btn btn-default" data-toggle="modal"
                                            data-target="#myModal11"
                                            onclick="change_car(${finishedCarOrders.get(0).carOrderId})">
                                        删除
                                    </button>
                                </td>
                                <td>
                                    <button type="button" class="btn btn-success" data-toggle="modal"
                                            data-target="#myModal12"
                                            onclick="change_car(${finishedCarOrders.get(0).carOrderId})">
                                        修改
                                    </button>
                                </td>
                            </tr>
                            <tr>
                                <th scope="row">${finishedCarOrders.get(1).carOrderId}</th>
                                <td>${finishedCarOrders.get(1).type}</td>
                                <td>${finishedCarOrders.get(1).hasName}</td>
                                <td>${finishedCarOrders.get(1).getName}</td>
                                <td>${finishedCarOrders.get(1).carType}</td>
                                <td>${finishedCarOrders.get(1).money}</td>
                                <td>${finishedCarOrders.get(1).description}</td>
                                <td>${finishedCarOrders.get(1).date}</td>
                                <td>
                                    <button type="button" class="btn btn-default" data-toggle="modal"
                                            data-target="#myModal11"
                                            onclick="change_car(${finishedCarOrders.get(1).carOrderId})">
                                        删除
                                    </button>
                                </td>
                                <td>
                                    <button type="button" class="btn btn-success" data-toggle="modal"
                                            data-target="#myModal12"
                                            onclick="change_car(${finishedCarOrders.get(1).carOrderId})">
                                        修改
                                    </button>
                                </td>
                            </tr>
                            <tr class="warning">
                                <th scope="row">${finishedCarOrders.get(2).carOrderId}</th>
                                <td>${finishedCarOrders.get(2).type}</td>
                                <td>${finishedCarOrders.get(2).hasName}</td>
                                <td>${finishedCarOrders.get(2).getName}</td>
                                <td>${finishedCarOrders.get(2).carType}</td>
                                <td>${finishedCarOrders.get(2).money}</td>
                                <td>${finishedCarOrders.get(2).description}</td>
                                <td>${finishedCarOrders.get(2).date}</td>
                                <td>
                                    <button type="button" class="btn btn-default" data-toggle="modal"
                                            data-target="#myModal11"
                                            onclick="change_car(${finishedCarOrders.get(2).carOrderId})">
                                        删除
                                    </button>
                                </td>
                                <td>
                                    <button type="button" class="btn btn-success" data-toggle="modal"
                                            data-target="#myModal12"
                                            onclick="change_car(${finishedCarOrders.get(2).carOrderId})">
                                        修改
                                    </button>
                                </td>
                            </tr>
                            <tr>
                                <th scope="row">${finishedCarOrders.get(3).carOrderId}</th>
                                <td>${finishedCarOrders.get(3).type}</td>
                                <td>${finishedCarOrders.get(3).hasName}</td>
                                <td>${finishedCarOrders.get(3).getName}</td>
                                <td>${finishedCarOrders.get(3).carType}</td>
                                <td>${finishedCarOrders.get(3).money}</td>
                                <td>${finishedCarOrders.get(3).description}</td>
                                <td>${finishedCarOrders.get(3).date}</td>
                                <td>
                                    <button type="button" class="btn btn-default" data-toggle="modal"
                                            data-target="#myModal11"
                                            onclick="change_car(${finishedCarOrders.get(3).carOrderId})">
                                        删除
                                    </button>
                                </td>
                                <td>
                                    <button type="button" class="btn btn-success" data-toggle="modal"
                                            data-target="#myModal12"
                                            onclick="change_car(${finishedCarOrders.get(3).carOrderId})">
                                        修改
                                    </button>
                                </td>
                            </tr>
                            <tr class="warning">
                                <th scope="row">${finishedCarOrders.get(4).carOrderId}</th>
                                <td>${finishedCarOrders.get(4).type}</td>
                                <td>${finishedCarOrders.get(4).hasName}</td>
                                <td>${finishedCarOrders.get(4).getName}</td>
                                <td>${finishedCarOrders.get(4).carType}</td>
                                <td>${finishedCarOrders.get(4).money}</td>
                                <td>${finishedCarOrders.get(4).description}</td>
                                <td>${finishedCarOrders.get(4).date}</td>
                                <td>
                                    <button type="button" class="btn btn-default" data-toggle="modal"
                                            data-target="#myModal11"
                                            onclick="change_car(${finishedCarOrders.get(4).carOrderId})">
                                        删除
                                    </button>
                                </td>
                                <td>
                                    <button type="button" class="btn btn-success" data-toggle="modal"
                                            data-target="#myModal12"
                                            onclick="change_car(${finishedCarOrders.get(4).carOrderId})">
                                        修改
                                    </button>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <button type="button" class="btn btn-success" data-toggle="modal"
                                            data-target="#myModal13">
                                        新增
                                    </button>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>

                    <div class="col-sm-12 col-md-9" id="user">
                        <div class="sub-title">用户</div>
                        <table class="table">
                            <thead>
                            <tr>
                                <th>用户id</th>
                                <th>用户名</th>
                                <th>是否为管理员</th>
                                <th>性别</th>
                                <th>电话</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr class="info">
                                <th scope="row">${users.get(0).userId}</th>
                                <td>${users.get(0).userName}</td>
                                <td>${users.get(0).isadmin}</td>
                                <td>${users.get(0).gender}</td>
                                <td>${users.get(0).telephone}</td>
                                <td>
                                    <button type="button" class="btn btn-default" data-toggle="modal"
                                            data-target="#myModal21" onclick="change_user(${users.get(0).userId})">
                                        删除
                                    </button>
                                </td>
                                <td>
                                    <button type="button" class="btn btn-success" data-toggle="modal"
                                            data-target="#myModal22" onclick="change_user(${users.get(0).userId})">
                                        修改
                                    </button>
                                </td>
                            </tr>

                            <tr>
                                <th scope="row">${users.get(1).userId}</th>
                                <td>${users.get(1).userName}</td>
                                <td>${users.get(1).isadmin}</td>
                                <td>${users.get(1).gender}</td>
                                <td>${users.get(1).telephone}</td>
                                <td>
                                    <button type="button" class="btn btn-default" data-toggle="modal"
                                            data-target="#myModal2" onclick="change_user(${users.get(1).userId})">
                                        删除
                                    </button>
                                </td>
                                <td>
                                    <button type="button" class="btn btn-success" data-toggle="modal"
                                            data-target="#myModal22" onclick="change_user(${users.get(1).userId})">
                                        修改
                                    </button>
                                </td>
                            </tr>
                            <tr class="info">
                                <th scope="row">${users.get(2).userId}</th>
                                <td>${users.get(2).userName}</td>
                                <td>${users.get(2).isadmin}</td>
                                <td>${users.get(2).gender}</td>
                                <td>${users.get(2).telephone}</td>
                                <td>
                                    <button type="button" class="btn btn-default" data-toggle="modal"
                                            data-target="#myModal2" onclick="change_user(${users.get(2).userId})">
                                        删除
                                    </button>
                                </td>
                                <td>
                                    <button type="button" class="btn btn-success" data-toggle="modal"
                                            data-target="#myModal22" onclick="change_user(${users.get(2).userId})">
                                        修改
                                    </button>
                                </td>
                            </tr>
                            <tr>
                                <th scope="row">${users.get(3).userId}</th>
                                <td>${users.get(3).userName}</td>
                                <td>${users.get(3).isadmin}</td>
                                <td>${users.get(3).gender}</td>
                                <td>${users.get(3).telephone}</td>
                                <td>
                                    <button type="button" class="btn btn-default" data-toggle="modal"
                                            data-target="#myModal2" onclick="change_user(${users.get(3).userId})">
                                        删除
                                    </button>
                                <td>
                                    <button type="button" class="btn btn-success" data-toggle="modal"
                                            data-target="#myModal22" onclick="change_user(${users.get(3).userId})">
                                        修改
                                    </button>
                                </td>
                                </td>
                            </tr>
                            <tr class="info">
                                <th scope="row">${users.get(4).userId}</th>
                                <td>${users.get(4).userName}</td>
                                <td>${users.get(4).isadmin}</td>
                                <td>${users.get(4).gender}</td>
                                <td>${users.get(4).telephone}</td>
                                <td>
                                    <button type="button" class="btn btn-default" data-toggle="modal"
                                            data-target="#myModal2" onclick="change_user(${users.get(4).userId})">
                                        删除
                                    </button>
                                <td>
                                    <button type="button" class="btn btn-success" data-toggle="modal"
                                            data-target="#myModal22" onclick="change_user(${users.get(4).userId})">
                                        修改
                                    </button>
                                </td>
                                </td>
                            </tr>
                            <tr class="info">
                                <th scope="row">${users.get(5).userId}</th>
                                <td>${users.get(5).userName}</td>
                                <td>${users.get(5).isadmin}</td>
                                <td>${users.get(5).gender}</td>
                                <td>${users.get(5).telephone}</td>
                                <td>
                                    <button type="button" class="btn btn-default" data-toggle="modal"
                                            data-target="#myModal2" onclick="change_user(${users.get(5).userId})">
                                        删除
                                    </button>
                                <td>
                                    <button type="button" class="btn btn-success" data-toggle="modal"
                                            data-target="#myModal22" onclick="change_user(${users.get(5).userId})">
                                        修改
                                    </button>
                                </td>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <button type="button" class="btn btn-success" data-toggle="modal"
                                            data-target="#myModal23">
                                        新增
                                    </button>
                                </td>
                            </tr>

                            </tbody>
                        </table>
                    </div>

                    <div class="col-sm-12 col-md-9" id="stop_order_1">
                        <div class="sub-title">未完成<span class="description"></span></div>
                        <table class="table">
                            <thead>
                            <tr>
                                <th>订单号</th>
                                <th>月租金</th>
                                <th>地址</th>
                                <th>详情</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr class="success">
                                <th scope="row">${unfinishedStopOrders.get(0).stopOrderId}</th>
                                <td>${unfinishedStopOrders.get(0).money}</td>
                                <td>${unfinishedStopOrders.get(0).address}</td>
                                <td>${unfinishedStopOrders.get(0).description}</td>
                                <td>
                                    <button type="button" class="btn btn-default" data-toggle="modal"
                                            data-target="#myModal31"
                                            onclick="change_stop(${unfinishedStopOrders.get(0).stopOrderId})">
                                        删除
                                    </button>
                                </td>
                                <td>
                                    <button type="button" class="btn btn-success" data-toggle="modal"
                                            data-target="#myModal32"
                                            onclick="change_stop(${unfinishedStopOrders.get(0).stopOrderId})">
                                        修改
                                    </button>
                                </td>
                            </tr>
                            <tr>
                                <th scope="row">${unfinishedStopOrders.get(1).stopOrderId}</th>
                                <td>${unfinishedStopOrders.get(1).money}</td>
                                <td>${unfinishedStopOrders.get(1).address}</td>
                                <td>${unfinishedStopOrders.get(1).description}</td>
                                <td>
                                    <button type="button" class="btn btn-default" data-toggle="modal"
                                            data-target="#myModal31"
                                            onclick="change_stop(${unfinishedStopOrders.get(1).stopOrderId})">
                                        删除
                                    </button>
                                </td>
                                <td>
                                    <button type="button" class="btn btn-success" data-toggle="modal"
                                            data-target="#myModal32"
                                            onclick="change_stop(${unfinishedStopOrders.get(1).stopOrderId})">
                                        修改
                                    </button>
                                </td>
                            </tr>
                            <tr class="success">
                                <th scope="row">${unfinishedStopOrders.get(2).stopOrderId}</th>
                                <td>${unfinishedStopOrders.get(2).money}</td>
                                <td>${unfinishedStopOrders.get(2).address}</td>
                                <td>${unfinishedStopOrders.get(2).description}</td>
                                <td>
                                    <button type="button" class="btn btn-default" data-toggle="modal"
                                            data-target="#myModal31"
                                            onclick="change_stop(${unfinishedStopOrders.get(2).stopOrderId})">
                                        删除
                                    </button>
                                </td>
                                <td>
                                    <button type="button" class="btn btn-success" data-toggle="modal"
                                            data-target="#myModal32"
                                            onclick="change_stop(${unfinishedStopOrders.get(2).stopOrderId})">
                                        修改
                                    </button>
                                </td>
                            </tr>
                            <tr>
                                <th scope="row">${unfinishedStopOrders.get(3).stopOrderId}</th>
                                <td>${unfinishedStopOrders.get(3).money}</td>
                                <td>${unfinishedStopOrders.get(3).address}</td>
                                <td>${unfinishedStopOrders.get(3).description}</td>
                                <td>
                                    <button type="button" class="btn btn-default" data-toggle="modal"
                                            data-target="#myModal31"
                                            onclick="change_stop(${unfinishedStopOrders.get(3).stopOrderId})">
                                        删除
                                    </button>
                                </td>
                                <td>
                                    <button type="button" class="btn btn-success" data-toggle="modal"
                                            data-target="#myModal32"
                                            onclick="change_stop(${unfinishedStopOrders.get(3).stopOrderId})">
                                        修改
                                    </button>
                                </td>
                            </tr>
                            <tr class="success">
                                <th scope="row">${unfinishedStopOrders.get(4).stopOrderId}</th>
                                <td>${unfinishedStopOrders.get(4).money}</td>
                                <td>${unfinishedStopOrders.get(4).address}</td>
                                <td>${unfinishedStopOrders.get(4).description}</td>
                                <td>
                                    <button type="button" class="btn btn-default" data-toggle="modal"
                                            data-target="#myModal31"
                                            onclick="change_stop(${unfinishedStopOrders.get(4).stopOrderId})">
                                        删除
                                    </button>
                                </td>
                                <td>
                                    <button type="button" class="btn btn-success" data-toggle="modal"
                                            data-target="#myModal32"
                                            onclick="change_stop(${unfinishedStopOrders.get(4).stopOrderId})">
                                        修改
                                    </button>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <button type="button" class="btn btn-success" data-toggle="modal"
                                            data-target="#myModal33">
                                        新增
                                    </button>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>

                    <div class="col-sm-12 col-md-9" id="stop_order_2">
                        <div class="sub-title">已完成<span class="description"></span></div>
                        <table class="table">
                            <thead>
                            <tr>
                                <th>订单号</th>
                                <th>租用人</th>
                                <th>月租金</th>
                                <th>地址</th>
                                <th>详情</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr class="warning">
                                <th scope="row">${finishedStopOrders.get(0).stopOrderId}</th>
                                <td>${finishedStopOrders.get(0).getName}</td>
                                <td>${finishedStopOrders.get(0).money}</td>
                                <td>${finishedStopOrders.get(0).address}</td>
                                <td>${finishedStopOrders.get(0).description}</td>
                                <td>
                                    <button type="button" class="btn btn-default" data-toggle="modal"
                                            data-target="#myModal31"
                                            onclick="change_stop(${finishedStopOrders.get(0).stopOrderId})">
                                        删除
                                    </button>
                                </td>
                                <td>
                                    <button type="button" class="btn btn-success" data-toggle="modal"
                                            data-target="#myModal32"
                                            onclick="change_stop(${finishedStopOrders.get(0).stopOrderId})">
                                        修改
                                    </button>
                                </td>
                            </tr>
                            <tr>
                                <th scope="row">${finishedStopOrders.get(1).stopOrderId}</th>
                                <td>${finishedStopOrders.get(1).getName}</td>
                                <td>${finishedStopOrders.get(1).money}</td>
                                <td>${finishedStopOrders.get(1).address}</td>
                                <td>${finishedStopOrders.get(1).description}</td>
                                <td>
                                    <button type="button" class="btn btn-default" data-toggle="modal"
                                            data-target="#myModal31"
                                            onclick="change_stop(${finishedStopOrders.get(1).stopOrderId})">
                                        删除
                                    </button>
                                </td>
                                <td>
                                    <button type="button" class="btn btn-success" data-toggle="modal"
                                            data-target="#myModal32"
                                            onclick="change_stop(${finishedStopOrders.get(1).stopOrderId})">
                                        修改
                                    </button>
                                </td>
                            </tr>
                            <tr class="warning">
                                <th scope="row">${finishedStopOrders.get(2).stopOrderId}</th>
                                <td>${finishedStopOrders.get(2).getName}</td>
                                <td>${finishedStopOrders.get(2).money}</td>
                                <td>${finishedStopOrders.get(2).address}</td>
                                <td>${finishedStopOrders.get(2).description}</td>
                                <td>
                                    <button type="button" class="btn btn-default" data-toggle="modal"
                                            data-target="#myModal31"
                                            onclick="change_stop(${finishedStopOrders.get(2).stopOrderId})">
                                        删除
                                    </button>
                                </td>
                                <td>
                                    <button type="button" class="btn btn-success" data-toggle="modal"
                                            data-target="#myModal32"
                                            onclick="change_stop(${finishedStopOrders.get(2).stopOrderId})">
                                        修改
                                    </button>
                                </td>
                            </tr>
                            <tr>
                                <th scope="row">${finishedStopOrders.get(3).stopOrderId}</th>
                                <td>${finishedStopOrders.get(3).getName}</td>
                                <td>${finishedStopOrders.get(3).money}</td>
                                <td>${finishedStopOrders.get(3).address}</td>
                                <td>${finishedStopOrders.get(3).description}</td>
                                <td>
                                    <button type="button" class="btn btn-default" data-toggle="modal"
                                            data-target="#myModal31"
                                            onclick="change_stop(${finishedStopOrders.get(3).stopOrderId})">
                                        删除
                                    </button>
                                </td>
                                <td>
                                    <button type="button" class="btn btn-success" data-toggle="modal"
                                            data-target="#myModal32"
                                            onclick="change_stop(${finishedStopOrders.get(3).stopOrderId})">
                                        修改
                                    </button>
                                </td>
                            </tr>
                            <tr class="warning">
                                <th scope="row">${finishedStopOrders.get(4).stopOrderId}</th>
                                <td>${finishedStopOrders.get(4).getName}</td>
                                <td>${finishedStopOrders.get(4).money}</td>
                                <td>${finishedStopOrders.get(4).address}</td>
                                <td>${finishedStopOrders.get(4).description}</td>
                                <td>
                                    <button type="button" class="btn btn-default" data-toggle="modal"
                                            data-target="#myModal31"
                                            onclick="change_stop(${finishedStopOrders.get(4).stopOrderId})">
                                        删除
                                    </button>
                                </td>
                                <td>
                                    <button type="button" class="btn btn-success" data-toggle="modal"
                                            data-target="#myModal32"
                                            onclick="change_stop(${finishedStopOrders.get(4).stopOrderId})">
                                        修改
                                    </button>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <button type="button" class="btn btn-success" data-toggle="modal"
                                            data-target="#myModal33">
                                        新增
                                    </button>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>

                    <div class="col-sm-12 col-md-9" id="news">
                        <div class="sub-title">新闻<span class="description"></span></div>
                        <table class="table">
                            <thead>
                            <tr>
                                <th>新闻id</th>
                                <th>标题</th>
                                <th>内容</th>
                                <th>时间</th>
                                <th>详情</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr class="info">
                                <th scope="row">${news.get(0).newsId}</th>
                                <td>${news.get(0).title}</td>
                                <td>${news.get(0).text}</td>
                                <td>${news.get(0).date}</td>
                                <td><a href="${news.get(0).link}">${news.get(0).link}</a></td>
                                <td>
                                    <button type="button" class="btn btn-default" data-toggle="modal"
                                            data-target="#myModal41" onclick="change_news(${news.get(0).newsId})">
                                        删除
                                    </button>
                                </td>
                                <td>
                                    <button type="button" class="btn btn-success" data-toggle="modal"
                                            data-target="#myModal42" onclick="change_news(${news.get(0).newsId})">
                                        修改
                                    </button>
                                </td>
                            </tr>
                            <tr>
                                <th scope="row">${news.get(1).newsId}</th>
                                <td>${news.get(1).title}</td>
                                <td>${news.get(1).text}</td>
                                <td>${news.get(1).date}</td>
                                <td><a href="${news.get(1).link}">${news.get(1).link}</a></td>
                                <td>
                                    <button type="button" class="btn btn-default" data-toggle="modal"
                                            data-target="#myModal41" onclick="change_news(${news.get(1).newsId})">
                                        删除
                                    </button>
                                </td>
                                <td>
                                    <button type="button" class="btn btn-success" data-toggle="modal"
                                            data-target="#myModal42" onclick="change_news(${news.get(1).newsId})">
                                        修改
                                    </button>
                                </td>
                            </tr>
                            <tr class="info">
                                <th scope="row">${news.get(2).newsId}</th>
                                <td>${news.get(2).title}</td>
                                <td>${news.get(2).text}</td>
                                <td>${news.get(2).date}</td>
                                <td><a href="${news.get(2).link}">${news.get(2).link}</a></td>
                                <td>
                                    <button type="button" class="btn btn-default" data-toggle="modal"
                                            data-target="#myModal41" onclick="change_news(${news.get(2).newsId})">
                                        删除
                                    </button>
                                </td>
                                <td>
                                    <button type="button" class="btn btn-success" data-toggle="modal"
                                            data-target="#myModal42" onclick="change_news(${news.get(2).newsId})">
                                        修改
                                    </button>
                                </td>
                            </tr>
                            <tr>
                                <th scope="row">${news.get(3).newsId}</th>
                                <td>${news.get(3).title}</td>
                                <td>${news.get(3).text}</td>
                                <td>${news.get(3).date}</td>
                                <td><a href="${news.get(3).link}">${news.get(3).link}</a></td>
                                <td>
                                    <button type="button" class="btn btn-default" data-toggle="modal"
                                            data-target="#myModal41" onclick="change_news(${news.get(3).newsId})">
                                        删除
                                    </button>
                                </td>
                                <td>
                                    <button type="button" class="btn btn-success" data-toggle="modal"
                                            data-target="#myModal42" onclick="change_news(${news.get(3).newsId})">
                                        修改
                                    </button>
                                </td>
                            </tr>
                            <tr class="info">
                                <th scope="row">${news.get(4).newsId}</th>
                                <td>${news.get(4).title}</td>
                                <td>${news.get(4).text}</td>
                                <td>${news.get(4).date}</td>
                                <td><a href="${news.get(4).link}">${news.get(4).link}</a></td>
                                <td>
                                    <button type="button" class="btn btn-default" data-toggle="modal"
                                            data-target="#myModal41" onclick="change_news(${news.get(4).newsId})">
                                        删除
                                    </button>
                                </td>
                                <td>
                                    <button type="button" class="btn btn-success" data-toggle="modal"
                                            data-target="#myModal42" onclick="change_news(${news.get(4).newsId})">
                                        修改
                                    </button>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <button type="button" class="btn btn-success" data-toggle="modal"
                                            data-target="#myModal43">
                                        新增
                                    </button>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>

                    <script>
                        document.getElementById("car_order_1").style.display = "";
                        document.getElementById("car_order_2").style.display = "none";
                        document.getElementById("car_order_3").style.display = "none";
                        document.getElementById("user").style.display = "none";
                        document.getElementById("stop_order_1").style.display = "none";
                        document.getElementById("stop_order_2").style.display = "none";
                        document.getElementById("news").style.display = "none";
                    </script>

                    <%-- <div class="col-sm-8 col-xs-12">
                       <div class="card card-success">
                           <div class="card-header">
                               <div class="card-title">
                                   <div class="title"><p ><i class="fa fa-comments-o"></i>新闻</p></div> &lt;%&ndash;//这里应该达到刷新的效果，需要ajax&ndash;%&gt;
                               </div>
                               <div class="clear-both"></div>
                           </div>
                           <div class="card-body no-padding">
                               <ul class="message-list">

                                   <a href="#">
                                       <li>
                                           <img src="../../assets/main_page/img/profile/profile-1.jpg" class="profile-img pull-left">
                                           <div class="message-block">
                                               <div><span class="username">${news.get(0).title}</span> <span class="message-datetime">12 min ago</span>
                                               </div>
                                               <div class="message">${news.get(0).text}<a href="${news.get(0).link}">查看详情</a> </div>
                                           </div>
                                       </li>
                                   </a>
                                   <a href="#">
                                       <li>
                                           <img src="../../assets/main_page/img/profile/profile-1.jpg" class="profile-img pull-left">
                                           <div class="message-block">
                                               <div><span class="username">${news.get(1).title}</span> <span class="message-datetime">12 min ago</span>
                                               </div>
                                               <div class="message">${news.get(1).text}<a href="${news.get(1).link}">查看详情</a> </div>
                                           </div>
                                       </li>
                                   </a>

                                   <a onclick="a()" id="message-load-more-left" class="col-sm-4 col-xs-12">
                                       <li class="text-center load-more">
                                           <i class="fa fa-arrow-left"></i> &lt;%&ndash;//这里需要换页，同样需要ajex&ndash;%&gt;
                                       </li>
                                   </a>
                                   <a onclick=alert("Fd") id="message-load-re" class="col-sm-4 col-xs-12">
                                       <li class="text-center load-more">
                                           <i class="fa fa-refresh"></i>  &lt;%&ndash;//这里需要换页，同样需要ajex&ndash;%&gt;
                                       </li>
                                   </a>
                                   <a onclick=alert("Fd") id="message-load-more-right" class="col-sm-4 col-xs-12">
                                       <li class="text-center load-more">
                                           <i class="fa fa-arrow-right"></i> &lt;%&ndash;//这里需要换页，同样需要ajex&ndash;%&gt;
                                       </li>
                                   </a>

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
                                                   &lt;%&ndash;<from id="form_car_provider" class="form-group">&ndash;%&gt;
                                                   &lt;%&ndash;<p>车名：<input type="text" id="name"></p>&ndash;%&gt;
                                                   &lt;%&ndash;<p>价格：<input type="text" id="money"></p>&ndash;%&gt;
                                                   &lt;%&ndash;<p>车型：<input type="text" id="type"></p>&ndash;%&gt;
                                                   &lt;%&ndash;</from>&ndash;%&gt;

                                                   <form class="form-horizontal" role="form">
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
                                                   <button type="button" class="btn btn-primary">
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

                     <div class="col-sm-8 col-xs-12">
                           <div class="card card-success">
                               <div class="card-header">
                                   <div class="card-title">
                                       <div class="title"><p ><i class="fa fa-comments-o"></i>订单</p></div> &lt;%&ndash;//这里应该达到刷新的效果，需要ajax&ndash;%&gt;
                                   </div>
                                   <div class="clear-both"></div>
                               </div>
                               <div class="card-body no-padding">
                                   <ul class="message-list">

                                       <a href="#">
                                           <li>
                                               <img src="../../assets/main_page/img/profile/profile-1.jpg" class="profile-img pull-left">
                                               <div class="message-block">
                                                   <div><span class="username">${unsolvedCarOrders.get(0).carOrderId}</span> <span class="message-datetime">${unsolvedCarOrders.get(0).money}</span>
                                                   </div>
                                                   <div class="message">${unsolvedCarOrders.get(0).getName}${unsolvedCarOrders.get(0).hasName} </div>
                                                   <div class="message">${unsolvedCarOrders.get(0).carType} </div>
                                                   <div class="message">${unsolvedCarOrders.get(0).description} </div>
                                               </div>
                                           </li>
                                       </a>
                                       <a href="#">
                                           <li>
                                               <img src="../../assets/main_page/img/profile/profile-1.jpg" class="profile-img pull-left">
                                               <div class="message-block">
                                                   <div><span class="username">${unsolvedCarOrders.get(1).carOrderId}</span> <span class="message-datetime">${unsolvedCarOrders.get(1).money}</span>
                                                   </div>
                                                   <div class="message">${unsolvedCarOrders.get(1).getName}${unsolvedCarOrders.get(1).hasName} </div>
                                                   <div class="message">${unsolvedCarOrders.get(1).carType} </div>
                                                   <div class="message">${unsolvedCarOrders.get(1).description} </div>
                                               </div>
                                           </li>
                                       </a>
                                       <a href="#">
                                           <li>
                                               <img src="../../assets/main_page/img/profile/profile-1.jpg" class="profile-img pull-left">
                                               <div class="message-block">
                                                   <div><span class="username">${unfinishedCarOrders.get(0).carOrderId}</span> <span class="message-datetime">${unfinishedCarOrders.get(0).money}</span>
                                                   </div>
                                                   <div class="message">${unfinishedCarOrders.get(0).getName}</div>
                                                   <div class="message">${unfinishedCarOrders.get(0).hasName}</div>
                                                   <div class="message">${unfinishedCarOrders.get(0).carType} </div>
                                                   <div class="message">${unfinishedCarOrders.get(0).description} </div>
                                               </div>
                                           </li>
                                       </a>
                                       <a href="#">
                                           <li>
                                               <img src="../../assets/main_page/img/profile/profile-1.jpg" class="profile-img pull-left">
                                               <div class="message-block">
                                                   <div><span class="username">${unfinishedCarOrders.get(1).carOrderId}</span> <span class="message-datetime">${unfinishedCarOrders.get(1).money}</span>
                                                   </div>
                                                   <div class="message">${unfinishedCarOrders.get(1).getName}</div>
                                                   <div class="message">${unfinishedCarOrders.get(1).hasName}</div>
                                                   <div class="message">${unfinishedCarOrders.get(1).carType} </div>
                                                   <div class="message">${unfinishedCarOrders.get(1).description} </div>
                                               </div>
                                           </li>
                                       </a>
                                       <a href="#">
                                           <li>
                                               <img src="../../assets/main_page/img/profile/profile-1.jpg" class="profile-img pull-left">
                                               <div class="message-block">
                                                   <div><span class="username">${finishedCarOrders.get(0).carOrderId}</span> <span class="message-datetime">${finishedCarOrders.get(0).money}</span>
                                                   </div>
                                                   <div class="message">${finishedCarOrders.get(0).getName}</div>
                                                   <div class="message">${finishedCarOrders.get(0).hasName}</div>
                                                   <div class="message">${finishedCarOrders.get(0).carType} </div>
                                                   <div class="message">${finishedCarOrders.get(0).description} </div>
                                               </div>
                                           </li>
                                       </a>
                                       <a href="#">
                                           <li>
                                               <img src="../../assets/main_page/img/profile/profile-1.jpg" class="profile-img pull-left">
                                               <div class="message-block">
                                                   <div><span class="username">${finishedCarOrders.get(1).carOrderId}</span> <span class="message-datetime">${finishedCarOrders.get(1).money}</span>
                                                   </div>
                                                   <div class="message">${finishedCarOrders.get(1).getName}</div>
                                                   <div class="message">${finishedCarOrders.get(1).hasName}</div>
                                                   <div class="message">${finishedCarOrders.get(1).carType} </div>
                                                   <div class="message">${finishedCarOrders.get(1).description} </div>
                                               </div>
                                           </li>
                                       </a>

                                       <a onclick="a()" id="message-load-more-left" class="col-sm-4 col-xs-12">
                                           <li class="text-center load-more">
                                               <i class="fa fa-arrow-left"></i> &lt;%&ndash;//这里需要换页，同样需要ajex&ndash;%&gt;
                                           </li>
                                       </a>
                                       <a onclick=alert("Fd") id="message-load-re" class="col-sm-4 col-xs-12">
                                           <li class="text-center load-more">
                                               <i class="fa fa-refresh"></i>  &lt;%&ndash;//这里需要换页，同样需要ajex&ndash;%&gt;
                                           </li>
                                       </a>
                                       <a onclick=alert("Fd") id="message-load-more-right" class="col-sm-4 col-xs-12">
                                           <li class="text-center load-more">
                                               <i class="fa fa-arrow-right"></i> &lt;%&ndash;//这里需要换页，同样需要ajex&ndash;%&gt;
                                           </li>
                                       </a>

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
                                                       &lt;%&ndash;<from id="form_car_provider" class="form-group">&ndash;%&gt;
                                                       &lt;%&ndash;<p>车名：<input type="text" id="name"></p>&ndash;%&gt;
                                                       &lt;%&ndash;<p>价格：<input type="text" id="money"></p>&ndash;%&gt;
                                                       &lt;%&ndash;<p>车型：<input type="text" id="type"></p>&ndash;%&gt;
                                                       &lt;%&ndash;</from>&ndash;%&gt;

                                                       <form class="form-horizontal" role="form">
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
                                                       <button type="button" class="btn btn-primary">
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

                     <div class="col-sm-8 col-xs-12">
                           <div class="card card-success">
                               <div class="card-header">
                                   <div class="card-title">
                                       <div class="title"><p ><i class="fa fa-comments-o"></i>用户</p></div> &lt;%&ndash;//这里应该达到刷新的效果，需要ajax&ndash;%&gt;
                                   </div>
                                   <div class="clear-both"></div>
                               </div>
                               <div class="card-body no-padding">
                                   <ul class="message-list">

                                       <a href="#">
                                           <li>
                                               <img src="../../assets/main_page/img/profile/profile-1.jpg" class="profile-img pull-left">
                                               <div class="message-block">
                                                   <div><span class="username">${users.get(0).userName}</span> <span class="message-datetime">${users.get(0).isadmin}</span>
                                                   </div>
                                                   <div class="message">${users.get(0).userId}</div>
                                                   <div class="message">${users.get(0).gender}</div>
                                                   <div class="message">${users.get(0).password} </div>
                                               </div>
                                           </li>
                                       </a>
                                       <a href="#">
                                           <li>
                                               <img src="../../assets/main_page/img/profile/profile-1.jpg" class="profile-img pull-left">
                                               <div class="message-block">
                                                   <div><span class="username">${users.get(1).userName}</span> <span class="message-datetime">${users.get(1).isadmin}</span>
                                                   </div>
                                                   <div class="message">${users.get(1).userId}</div>
                                                   <div class="message">${users.get(1).gender}</div>
                                                   <div class="message">${users.get(1).password} </div>
                                               </div>
                                           </li>
                                       </a>
                                       <a href="#">
                                           <li>
                                               <img src="../../assets/main_page/img/profile/profile-1.jpg" class="profile-img pull-left">
                                               <div class="message-block">
                                                   <div><span class="username">${users.get(2).userName}</span> <span class="message-datetime">${users.get(2).isadmin}</span>
                                                   </div>
                                                   <div class="message">${users.get(2).userId}</div>
                                                   <div class="message">${users.get(2).gender}</div>
                                                   <div class="message">${users.get(2).password} </div>
                                               </div>
                                           </li>
                                       </a>
                                       <a href="#">
                                           <li>
                                               <img src="../../assets/main_page/img/profile/profile-1.jpg" class="profile-img pull-left">
                                               <div class="message-block">
                                                   <div><span class="username">${users.get(3).userName}</span> <span class="message-datetime">${users.get(3).isadmin}</span>
                                                   </div>
                                                   <div class="message">${users.get(3).userId}</div>
                                                   <div class="message">${users.get(3).gender}</div>
                                                   <div class="message">${users.get(3).password} </div>
                                               </div>
                                           </li>
                                       </a>

                                       <a onclick="a()" id="message-load-more-left" class="col-sm-4 col-xs-12">
                                           <li class="text-center load-more">
                                               <i class="fa fa-arrow-left"></i> &lt;%&ndash;//这里需要换页，同样需要ajex&ndash;%&gt;
                                           </li>
                                       </a>
                                       <a onclick=alert("Fd") id="message-load-re" class="col-sm-4 col-xs-12">
                                           <li class="text-center load-more">
                                               <i class="fa fa-refresh"></i>  &lt;%&ndash;//这里需要换页，同样需要ajex&ndash;%&gt;
                                           </li>
                                       </a>
                                       <a onclick=alert("Fd") id="message-load-more-right" class="col-sm-4 col-xs-12">
                                           <li class="text-center load-more">
                                               <i class="fa fa-arrow-right"></i> &lt;%&ndash;//这里需要换页，同样需要ajex&ndash;%&gt;
                                           </li>
                                       </a>

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
                                                       &lt;%&ndash;<from id="form_car_provider" class="form-group">&ndash;%&gt;
                                                       &lt;%&ndash;<p>车名：<input type="text" id="name"></p>&ndash;%&gt;
                                                       &lt;%&ndash;<p>价格：<input type="text" id="money"></p>&ndash;%&gt;
                                                       &lt;%&ndash;<p>车型：<input type="text" id="type"></p>&ndash;%&gt;
                                                       &lt;%&ndash;</from>&ndash;%&gt;

                                                       <form class="form-horizontal" role="form">
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
                                                       <button type="button" class="btn btn-primary">
                                                           提交
                                                       </button>
                                                   </div>
                                               </div><!-- /.modal-content -->
                                           </div><!-- /.modal -->
                                       </div>


                                   </ul>
                               </div>
                           </div>
                       </div>--%>


                        <div class="modal fade" id="myModal01" tabindex="-1" role="dialog"
                             aria-labelledby="myModalLabel01"
                             aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                            &times;
                                        </button>
                                        <h4 class="modal-title" id="myModalLabel01">
                                            注意
                                        </h4>
                                    </div>
                                    <div class="modal-body">
                                        <form class="form-horizontal" role="form" action="deleteCar">

                                            <input name="carOrderId" id="pass1" hidden="hidden"/>
                                            <button type="submit" class="btn btn-primary">
                                                确认删除
                                            </button>
                                        </form>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-default" data-dismiss="modal">取消
                                        </button>
                                    </div>
                                </div><!-- /.modal-content -->
                            </div><!-- /.modal -->
                        </div>

                        <div class="modal fade" id="myModal02" tabindex="-1" role="dialog"
                             aria-labelledby="myModalLabel02"
                             aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                            &times;
                                        </button>
                                        <h4 class="modal-title" id="myModalLabel02">
                                            注意
                                        </h4>
                                    </div>
                                    <div class="modal-body">
                                        <form class="form-horizontal" role="form" action="updateCar">

                                            <input name="carOrderId" id="pass2" hidden="hidden"/>
                                            <input name="state" hidden="hidden" value="1"/>
                                            <button type="submit" class="btn btn-success">
                                                确认通过审核
                                            </button>
                                        </form>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-default" data-dismiss="modal">取消
                                        </button>
                                    </div>
                                </div><!-- /.modal-content -->
                            </div><!-- /.modal -->
                        </div>

                        <div class="modal fade" id="myModal11" tabindex="-1" role="dialog"
                             aria-labelledby="myModalLabel11"
                             aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                            &times;
                                        </button>
                                        <h4 class="modal-title" id="myModalLabel11">
                                            警告
                                        </h4>
                                    </div>
                                    <div class="modal-body">
                                        <form class="form-horizontal" role="form" action="deleteCar">

                                            <input name="carOrderId" id="carOrderId1" hidden="hidden"/>
                                            <button type="submit" class="btn btn-primary">
                                                确认删除
                                            </button>
                                        </form>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-default" data-dismiss="modal">取消
                                        </button>
                                    </div>
                                </div><!-- /.modal-content -->
                            </div><!-- /.modal -->
                        </div>

                        <div class="modal fade" id="myModal12" tabindex="-1" role="dialog"
                             aria-labelledby="myModalLabel12"
                             aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                            &times;
                                        </button>
                                        <h4 class="modal-title" id="myModalLabel12">
                                            请修改
                                        </h4>
                                    </div>
                                    <div class="modal-body">
                                        <form class="form-horizontal" role="form" action="updateCar">

                                            <input name="carOrderId" id="carOrderId2" hidden="hidden"/>
                                            <div class="form-group">
                                                <label for="car_type" class="col-sm-2 control-label">订单类型</label>
                                                <div class="col-sm-10">
                                                    <input type="text" class="form-control" id="car_type" name="type"
                                                           placeholder="请输入修改后的订单类型">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="car_state" class="col-sm-2 control-label">状态</label>
                                                <div class="col-sm-10">
                                                    <input type="text" class="form-control" id="car_state" name="state"
                                                           placeholder="请输入修改后的订单状态">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="car_hasname" class="col-sm-2 control-label">租出人</label>
                                                <div class="col-sm-10">
                                                    <input type="text" class="form-control" id="car_hasname"
                                                           name="hasName"
                                                           placeholder="请输入修改后的租出人">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="car_getname" class="col-sm-2 control-label">租入人</label>
                                                <div class="col-sm-10">
                                                    <input type="text" class="form-control" id="car_getname"
                                                           name="getName"
                                                           placeholder="请输入修改后的租入人">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="car_money" class="col-sm-2 control-label">月租金</label>
                                                <div class="col-sm-10">
                                                    <input type="text" class="form-control" id="car_money"
                                                           name="money" placeholder="请输入修改后的月租金">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="car_cartype" class="col-sm-2 control-label">车辆类型</label>
                                                <div class="col-sm-10">
                                                    <input type="text" class="form-control" id="car_cartype"
                                                           name="carType"
                                                           placeholder="请输入修改后的车辆类型">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="car_description" class="col-sm-2 control-label">车的描述</label>
                                                <div class="col-sm-10">
                                                    <input type="textarea" class="form-control" id="car_description"
                                                           name="description" placeholder="请输入修改后的描述">
                                                </div>
                                            </div>
                                            <button type="submit" class="btn btn-success">
                                                确认提交
                                            </button>
                                        </form>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-default" data-dismiss="modal">取消
                                        </button>
                                    </div>
                                </div><!-- /.modal-content -->
                            </div><!-- /.modal -->
                        </div>

                        <div class="modal fade" id="myModal13" tabindex="-1" role="dialog"
                             aria-labelledby="myModalLabel13"
                             aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                            &times;
                                        </button>
                                        <h4 class="modal-title" id="myModalLabel13">
                                            新增
                                        </h4>
                                    </div>
                                    <div class="modal-body">
                                        <form class="form-horizontal" role="form" action="addCar">

                                            <div class="form-group">
                                                <label for="car_type1" class="col-sm-2 control-label">订单类型</label>
                                                <div class="col-sm-10">
                                                    <input type="text" class="form-control" id="car_type1" name="type"
                                                           placeholder="请输入订单类型">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="car_state1" class="col-sm-2 control-label">状态</label>
                                                <div class="col-sm-10">
                                                    <input type="text" class="form-control" id="car_state1" name="state"
                                                           placeholder="请输入订单状态">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="car_hasname1" class="col-sm-2 control-label">租出人</label>
                                                <div class="col-sm-10">
                                                    <input type="text" class="form-control" id="car_hasname1"
                                                           name="hasName"
                                                           placeholder="请输入租出人（可选）">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="car_getname1" class="col-sm-2 control-label">租出人</label>
                                                <div class="col-sm-10">
                                                    <input type="text" class="form-control" id="car_getname1"
                                                           name="getName"
                                                           placeholder="请输入租入人（可选）">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="car_money1" class="col-sm-2 control-label">月租金</label>
                                                <div class="col-sm-10">
                                                    <input type="text" class="form-control" id="car_money1"
                                                           name="money" placeholder="请输入月租金">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="car_cartype1" class="col-sm-2 control-label">车辆类型</label>
                                                <div class="col-sm-10">
                                                    <input type="text" class="form-control" id="car_cartype1"
                                                           name="carType"
                                                           placeholder="请输入车辆类型">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="car_description1"
                                                       class="col-sm-2 control-label">车的描述</label>
                                                <div class="col-sm-10">
                                                    <input type="textarea" class="form-control" id="car_description1"
                                                           name="description" placeholder="请输入车辆描述">
                                                </div>
                                            </div>
                                            <button type="submit" class="btn btn-success">
                                                确认提交
                                            </button>
                                        </form>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-default" data-dismiss="modal">取消
                                        </button>
                                    </div>
                                </div><!-- /.modal-content -->
                            </div><!-- /.modal -->
                        </div>

                        <div class="modal fade" id="myModal21" tabindex="-1" role="dialog"
                             aria-labelledby="myModalLabel21"
                             aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                        &times;
                                    </button>
                                    <h4 class="modal-title" id="myModalLabel21">
                                        警告
                                    </h4>
                                </div>
                                <div class="modal-body">
                                    <form class="form-horizontal" role="form" action="deleteUser">

                                        <input name="userId" id="userId1" hidden="hidden"/>
                                        <button type="submit" class="btn btn-primary">
                                            确认删除
                                        </button>
                                    </form>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-default" data-dismiss="modal">取消
                                    </button>
                                </div>
                            </div><!-- /.modal-content -->
                        </div><!-- /.modal -->
                    </div>

                        <div class="modal fade" id="myModal22" tabindex="-1" role="dialog"
                             aria-labelledby="myModalLabel22"
                             aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                            &times;
                                        </button>
                                        <h4 class="modal-title" id="myModalLabel22">
                                            请修改
                                        </h4>
                                    </div>
                                    <div class="modal-body">
                                        <form class="form-horizontal" role="form" action="updateUser">

                                            <input name="userId" id="userId2" hidden="hidden"/>
                                            <div class="form-group">
                                                <label for="user_name" class="col-sm-2 control-label">用户姓名</label>
                                                <div class="col-sm-10">
                                                    <input type="text" class="form-control" id="user_name"
                                                           name="userName"
                                                           placeholder="请输入修改后的用户姓名">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="car_password" class="col-sm-2 control-label">密码</label>
                                                <div class="col-sm-10">
                                                    <input type="text" class="form-control" id="car_password"
                                                           name="password"
                                                           placeholder="请输入修改后的用户密码">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="user_isadmin" class="col-sm-2 control-label">是否为管理员</label>
                                                <div class="col-sm-10">
                                                    <input type="text" class="form-control" id="user_isadmin"
                                                           name="isadmin"
                                                           placeholder="请输入修改后用户类型">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="car_tlephone" class="col-sm-2 control-label">手机号</label>
                                                <div class="col-sm-10">
                                                    <input type="text" class="form-control" id="car_tlephone"
                                                           name="telephone"
                                                           placeholder="请输入修改后的手机号">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="user_gender" class="col-sm-2 control-label">性别</label>
                                                <div class="col-sm-10">
                                                    <input type="text" class="form-control" id="user_gender"
                                                           name="gender" placeholder="请输入修改后的用户性别">
                                                </div>
                                            </div>
                                            <button type="submit" class="btn btn-success">
                                                确认提交
                                            </button>
                                        </form>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-default" data-dismiss="modal">取消
                                        </button>
                                    </div>
                                </div><!-- /.modal-content -->
                            </div><!-- /.modal -->
                        </div>

                        <div class="modal fade" id="myModal23" tabindex="-1" role="dialog"
                             aria-labelledby="myModalLabel23"
                             aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                            &times;
                                        </button>
                                        <h4 class="modal-title" id="myModalLabel23">
                                            新增
                                        </h4>
                                    </div>
                                    <div class="modal-body">
                                        <form class="form-horizontal" role="form" action="addUser">

                                            <div class="form-group">
                                                <label for="user_name1" class="col-sm-2 control-label">用户姓名</label>
                                                <div class="col-sm-10">
                                                    <input type="text" class="form-control" id="user_name1"
                                                           name="userName"
                                                           placeholder="请输入用户姓名">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="car_password1" class="col-sm-2 control-label">密码</label>
                                                <div class="col-sm-10">
                                                    <input type="text" class="form-control" id="car_password1"
                                                           name="password"
                                                           placeholder="请输入用户密码">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="user_isadmin1" class="col-sm-2 control-label">是否为管理员</label>
                                                <div class="col-sm-10">
                                                    <input type="text" class="form-control" id="user_isadmin1"
                                                           name="isadmin"
                                                           placeholder="请输入用户类型">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="car_tlephone1" class="col-sm-2 control-label">手机号</label>
                                                <div class="col-sm-10">
                                                    <input type="text" class="form-control" id="car_tlephone1"
                                                           name="telephone"
                                                           placeholder="请输入手机号">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="user_gender1" class="col-sm-2 control-label">性别</label>
                                                <div class="col-sm-10">
                                                    <input type="text" class="form-control" id="user_gender1"
                                                           name="gender" placeholder="请输入用户性别">
                                                </div>
                                            </div>
                                            <button type="submit" class="btn btn-success">
                                                确认提交
                                            </button>
                                        </form>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-default" data-dismiss="modal">取消
                                        </button>
                                    </div>
                                </div><!-- /.modal-content -->
                            </div><!-- /.modal -->
                        </div>

                        <div class="modal fade" id="myModal31" tabindex="-1" role="dialog"
                             aria-labelledby="myModalLabel31"
                             aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                            &times;
                                        </button>
                                        <h4 class="modal-title" id="myModalLabel31">
                                            警告
                                        </h4>
                                    </div>
                                    <div class="modal-body">
                                        <form class="form-horizontal" role="form" action="deleteStop">

                                            <input name="stopOrderId" id="stopOrderId1" hidden="hidden"/>
                                            <button type="submit" class="btn btn-primary">
                                                确认删除
                                            </button>
                                        </form>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-default" data-dismiss="modal">取消
                                        </button>
                                    </div>
                                </div><!-- /.modal-content -->
                            </div><!-- /.modal -->
                        </div>

                        <div class="modal fade" id="myModal32" tabindex="-1" role="dialog"
                             aria-labelledby="myModalLabel32"
                             aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                            &times;
                                        </button>
                                        <h4 class="modal-title" id="myModalLabel32">
                                            请修改
                                        </h4>
                                    </div>
                                    <div class="modal-body">
                                        <form class="form-horizontal" role="form" action="updateStop">

                                            <input name="stopOrderId" id="stopOrderId2" hidden="hidden"/>
                                            <div class="form-group">
                                                <label for="stop_getName" class="col-sm-2 control-label">租用人</label>
                                                <div class="col-sm-10">
                                                    <input type="text" class="form-control" id="stop_getName"
                                                           name="getName"
                                                           placeholder="请输入修改后的车位租用人">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="stop_money" class="col-sm-2 control-label">月租金</label>
                                                <div class="col-sm-10">
                                                    <input type="text" class="form-control" id="stop_money" name="money"
                                                           placeholder="请输入修改后的月租金">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="stop_address" class="col-sm-2 control-label">地址</label>
                                                <div class="col-sm-10">
                                                    <input type="text" class="form-control" id="stop_address"
                                                           name="address"
                                                           placeholder="请输入修改后车位地址">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="stop_description" class="col-sm-2 control-label">描述</label>
                                                <div class="col-sm-10">
                                                    <input type="text" class="form-control" id="stop_description"
                                                           name="description"
                                                           placeholder="请输入修改后的订单描述">
                                                </div>
                                            </div>
                                            <button type="submit" class="btn btn-success">
                                                确认提交
                                            </button>
                                        </form>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-default" data-dismiss="modal">取消
                                        </button>
                                    </div>
                                </div><!-- /.modal-content -->
                            </div><!-- /.modal -->
                        </div>

                        <div class="modal fade" id="myModal33" tabindex="-1" role="dialog"
                             aria-labelledby="myModalLabel33"
                             aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                            &times;
                                        </button>
                                        <h4 class="modal-title" id="myModalLabel33">
                                            新增
                                        </h4>
                                    </div>
                                    <div class="modal-body">
                                        <form class="form-horizontal" role="form" action="addStop">

                                            <div class="form-group">
                                                <label for="stop_money1" class="col-sm-2 control-label">月租金</label>
                                                <div class="col-sm-10">
                                                    <input type="text" class="form-control" id="stop_money1"
                                                           name="money"
                                                           placeholder="请输入月租金">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="stop_address1" class="col-sm-2 control-label">地址</label>
                                                <div class="col-sm-10">
                                                    <input type="text" class="form-control" id="stop_address1"
                                                           name="address"
                                                           placeholder="请输入车位地址">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="stop_description1" class="col-sm-2 control-label">描述</label>
                                                <div class="col-sm-10">
                                                    <input type="text" class="form-control" id="stop_description1"
                                                           name="description"
                                                           placeholder="请输入订单描述">
                                                </div>
                                            </div>
                                            <button type="submit" class="btn btn-success">
                                                确认提交
                                            </button>
                                        </form>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-default" data-dismiss="modal">取消
                                        </button>
                                    </div>
                                </div><!-- /.modal-content -->
                            </div><!-- /.modal -->
                        </div>

                        <div class="modal fade" id="myModal41" tabindex="-1" role="dialog"
                             aria-labelledby="myModalLabel41"
                             aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                            &times;
                                        </button>
                                        <h4 class="modal-title" id="myModalLabel41">
                                            警告
                                        </h4>
                                    </div>
                                    <div class="modal-body">
                                        <form class="form-horizontal" role="form" action="deleteNews">

                                            <input name="newsId" id="newsId1" hidden="hidden"/>
                                            <button type="submit" class="btn btn-primary">
                                                确认删除
                                            </button>
                                        </form>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-default" data-dismiss="modal">取消
                                        </button>
                                    </div>
                                </div><!-- /.modal-content -->
                            </div><!-- /.modal -->
                        </div>

                        <div class="modal fade" id="myModal42" tabindex="-1" role="dialog"
                             aria-labelledby="myModalLabel42"
                             aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                            &times;
                                        </button>
                                        <h4 class="modal-title" id="myModalLabel42">
                                            请修改
                                        </h4>
                                    </div>
                                    <div class="modal-body">
                                        <form class="form-horizontal" role="form" action="updateNews">

                                            <input name="newsId" id="newsId2" hidden="hidden"/>
                                            <div class="form-group">
                                                <label for="news_title" class="col-sm-2 control-label">标题</label>
                                                <div class="col-sm-10">
                                                    <input type="text" class="form-control" id="news_title" name="title"
                                                           placeholder="请输入修改后的新闻标题">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="news_text" class="col-sm-2 control-label">文本</label>
                                                <div class="col-sm-10">
                                                    <input type="text" class="form-control" id="news_text" name="text"
                                                           placeholder="请输入修改后的新闻主要内容">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="news_addess" class="col-sm-2 control-label">详情地址</label>
                                                <div class="col-sm-10">
                                                    <input type="text" class="form-control" id="news_addess" name="link"
                                                           placeholder="请输入修改后新闻详情地址">
                                                </div>
                                            </div>
                                            <button type="submit" class="btn btn-success">
                                                确认提交
                                            </button>
                                        </form>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-default" data-dismiss="modal">取消
                                        </button>
                                    </div>
                                </div><!-- /.modal-content -->
                            </div><!-- /.modal -->
                        </div>

                        <div class="modal fade" id="myModal43" tabindex="-1" role="dialog"
                             aria-labelledby="myModalLabel43"
                             aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                            &times;
                                        </button>
                                        <h4 class="modal-title" id="myModalLabel43">
                                            新增
                                        </h4>
                                    </div>
                                    <div class="modal-body">
                                        <form class="form-horizontal" role="form" action="addNews">

                                            <div class="form-group">
                                                <label for="news_title1" class="col-sm-2 control-label">标题</label>
                                                <div class="col-sm-10">
                                                    <input type="text" class="form-control" id="news_title1"
                                                           name="title"
                                                           placeholder="请输入新闻标题">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="news_text1" class="col-sm-2 control-label">文本</label>
                                                <div class="col-sm-10">
                                                    <input type="text" class="form-control" id="news_text1" name="text"
                                                           placeholder="请输入新闻主要内容">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="news_addess1" class="col-sm-2 control-label">详情地址</label>
                                                <div class="col-sm-10">
                                                    <input type="text" class="form-control" id="news_addess1"
                                                           name="link"
                                                           placeholder="请输入新闻详情地址">
                                                </div>
                                            </div>
                                            <button type="submit" class="btn btn-success">
                                                确认提交
                                            </button>
                                        </form>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-default" data-dismiss="modal">取消
                                        </button>
                                    </div>
                                </div><!-- /.modal-content -->
                            </div><!-- /.modal -->
                        </div>

                        <%-- <div class="modal fade" id="myModal23" tabindex="-1" role="dialog"
                              aria-labelledby="myModalLabel2"
                              aria-hidden="true">
                             <div class="modal-dialog">
                                 <div class="modal-content">
                                     <div class="modal-header">
                                         <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                             &times;
                                         </button>
                                         <h4 class="modal-title" id="myModalLabel23">
                                             警告
                                         </h4>
                                     </div>
                                     <div class="modal-body">
                                         <form class="form-horizontal" role="form" action="/deleteUser">
                                             <input name="userId" hidden="hidden" value="${users.get(2).userId}"/>
                                             <button type="submit" class="btn btn-primary" id="submit">
                                                 确认删除
                                             </button>
                                         </form>
                                     </div>
                                     <div class="modal-footer">
                                         <button type="button" class="btn btn-default" data-dismiss="modal">取消
                                         </button>
                                     </div>
                                 </div><!-- /.modal-content -->
                             </div><!-- /.modal -->
                         </div>--%>


                </div>
            </div>
        </div>
    </div>
</div>


<script>
    function unsolved_car() {
        document.getElementById("car_order_1").style.display = "";
        document.getElementById("car_order_2").style.display = "none";
        document.getElementById("car_order_3").style.display = "none";
        document.getElementById("user").style.display = "none";
        document.getElementById("stop_order_1").style.display = "none";
        document.getElementById("stop_order_2").style.display = "none";
        document.getElementById("news").style.display = "none";
    }

    function unfinished_car() {
        document.getElementById("car_order_1").style.display = "none";
        document.getElementById("car_order_2").style.display = "";
        document.getElementById("car_order_3").style.display = "none";
        document.getElementById("user").style.display = "none";
        document.getElementById("stop_order_1").style.display = "none";
        document.getElementById("stop_order_2").style.display = "none";
        document.getElementById("news").style.display = "none";
    }

    function finished_car() {
        document.getElementById("car_order_1").style.display = "none";
        document.getElementById("car_order_2").style.display = "none";
        document.getElementById("car_order_3").style.display = "";
        document.getElementById("user").style.display = "none";
        document.getElementById("stop_order_1").style.display = "none";
        document.getElementById("stop_order_2").style.display = "none";
        document.getElementById("news").style.display = "none";
    }

    function user() {
        document.getElementById("car_order_1").style.display = "none";
        document.getElementById("car_order_2").style.display = "none";
        document.getElementById("car_order_3").style.display = "none";
        document.getElementById("user").style.display = "";
        document.getElementById("stop_order_1").style.display = "none";
        document.getElementById("stop_order_2").style.display = "none";
        document.getElementById("news").style.display = "none";
    }

    function unfinished_stop() {
        document.getElementById("car_order_1").style.display = "none";
        document.getElementById("car_order_2").style.display = "none";
        document.getElementById("car_order_3").style.display = "none";
        document.getElementById("user").style.display = "none";
        document.getElementById("stop_order_1").style.display = "";
        document.getElementById("stop_order_2").style.display = "none";
        document.getElementById("news").style.display = "none";
    }

    function finished_stop() {
        document.getElementById("car_order_1").style.display = "none";
        document.getElementById("car_order_2").style.display = "none";
        document.getElementById("car_order_3").style.display = "none";
        document.getElementById("user").style.display = "none";
        document.getElementById("stop_order_1").style.display = "none";
        document.getElementById("stop_order_2").style.display = "";
        document.getElementById("news").style.display = "none";
    }

    function news() {
        document.getElementById("car_order_1").style.display = "none";
        document.getElementById("car_order_2").style.display = "none";
        document.getElementById("car_order_3").style.display = "none";
        document.getElementById("user").style.display = "none";
        document.getElementById("stop_order_1").style.display = "none";
        document.getElementById("stop_order_2").style.display = "none";
        document.getElementById("news").style.display = "";
    }


    function a() {
        alert(123)
    }

    var theme = "green";

    function change_css() {
        if (theme == "green") {
            document.getElementById("html_theme").setAttribute("class", "flat-blue");
            theme = "blue";
        } else {
            document.getElementById("html_theme").setAttribute("class", "flat-green");
            theme = "green";
        }
    }

    <%--更改主题--%>
</script>

<script>

    function pass(id) {
        document.getElementById("pass1").setAttribute("value", id);
        document.getElementById("pass2").setAttribute("value", id);
    }

    function change_car(id) {
        document.getElementById("carOrderId1").setAttribute("value", id);
        document.getElementById("carOrderId2").setAttribute("value", id);
    }

    function change_user(id) {
        document.getElementById("userId1").setAttribute("value", id);
        document.getElementById("userId2").setAttribute("value", id);
    }

    function change_stop(id) {
        document.getElementById("stopOrderId1").setAttribute("value", id);
        document.getElementById("stopOrderId2").setAttribute("value", id);
    }

    function change_news(id) {
        document.getElementById("newsId1").setAttribute("value", id);
        document.getElementById("newsId2").setAttribute("value", id);
    }

</script>

</body>

</html>



