<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>欢迎来到 中文游戏网</title>
    <!--swiper框架样式-->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/jsp/about/css/swiper-3.4.2.min.css" />
    <!--主要样式-->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/jsp/about/css/style.css" />
    <!--插件-->
    <script src="${pageContext.request.contextPath}/static/jsp/article/js/jquery-1.11.0.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/jsp/about/js/swiper-3.4.2.jquery.min.js" type="text/javascript" charset="utf-8"></script>

    <!-- Bootstrap -->
    <link href="${pageContext.request.contextPath}/static/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/jsp/article/css/owl.carousel.min.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/jsp/article/css/body.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/jsp/thanks/css/style.css" type="text/css" />

<%--    设置模态框点击后浮层在最上面--%>
    <style type="text/css">
        .modal-backdrop{z-index:0;}
    </style>

</head>
<body>
<nav class="navbar navbar-inverse navbar-fixed-top" style="height: 100px">

    <div class="container">
        <div class="navbar-header">
            <div class="container-fluid">
                <div class="navbar-header">
                    <a class="navbar-brand" href="#">
                        <img alt="Brand" src="${pageContext.request.contextPath}/static/img/游戏.png">
                    </a>
                </div>
            </div>
        </div>

        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <div class="col-md-4">
                <ul class="nav navbar-nav">
                    <li><a href="${pageContext.request.contextPath}/firstPage/main"><h4>首页</h4></a></li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><h4>论坛<span class="caret"></span></h4></a>
                        <ul class="dropdown-menu">
                            <li><a href="${pageContext.request.contextPath}/gamelist/buttonClick?buttonName=CHOICENESS">每日精选</a></li>
                            <li><a href="${pageContext.request.contextPath}/gamelist/explorer">探险家</a></li>
                            <li><a href="#">热门新闻</a></li>
                            <li role="separator" class="divider"></li>
                            <li><a href="#">愿望单</a></li>
                        </ul>
                    </li>
                    <li><a class="btn"><h4>关于</h4></a></li>
                    <!-- Button trigger modal -->
                    <li><a class="btn" data-toggle="modal" data-target="#myModal"><h4>客服</h4></a></li>
                    <!-- Modal -->
                    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                    <h4 class="modal-title" id="myModalLabel">GameSpace客服</h4>
                                </div>
                                <div class="modal-body">
                                    <label for="answer">常见问题（鼠标悬浮至问题上方查看）：</label><br>
                                    <br><a title="刷新网页重试或检查您的网络连接">网页无法打开</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a title="点击个人中心 -> 忘记密码">忘记密码</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a title="点击探险家选择标签即可获取我们为您量身推荐的游戏">找不到喜欢的游戏</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a title="点击个人中心查看用户信息">账户相关</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <p id="answer" class="hidden"></p>
                                    <hr>
                                    <img src="${pageContext.request.contextPath}/static/img/robot.jpg" class="img-circle" style="width: 50px;height: 50px;margin-bottom: 13px">
                                    <label for="question">&nbsp;&nbsp;无法解决？请输入您的问题：</label>
                                    <textarea class="form-control" id="question" style="height: 74px" maxlength="100" placeholder="您最多可输入100字..."></textarea>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                                    <button type="button" class="btn btn-primary" data-dismiss="modal">提交</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </ul>
                </ul>
            </div>

            <div id="login">
                <form class="navbar-form navbar-left">
                    <a href=""><h4>没有账号？立即注册</h4></a>
                    <div class="form-group">
                        <input type="text" class="form-control" placeholder="用户名">
                        <input type="password" class="form-control" placeholder="密码">
                        <input type="button" class="btn btn-success" id="loginsub" value="登录">
                    </div>
                </form>
            </div>

            <ul class="nav navbar-nav navbar-right">
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><h4>选择语言<span class="caret"></span></h4></a>
                    <ul class="dropdown-menu">
                        <li><a href="#">简体中文</a></li>
                        <li><a href="#">繁體中文</a></li>
                        <li><a href="#">English</a></li>
                    </ul>
                </li>
            </ul>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>

<div class="container" style="width:100%;height:650px;background-image: url(${pageContext.request.contextPath}/static/img/bj.jpg)">
    <div style="height: 150px"></div>
    <div class="btn-group col-md-offset-2 col-md-5">
        <div class="btn-group btn-group-lg">
            <button id="shop" type="button" class="btn btn-danger dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                您的论坛 <span class="caret"></span>
            </button>
            <ul class="dropdown-menu" aria-labelledby="shop">
                <li><a href="#">论坛首页</a></li>
                <li role="separator" class="divider"></li>
                <li><a href="#">最近浏览</a></li>
                <li><a href="#">个人中心</a></li>
            </ul>
        </div>
        <div class="btn-group btn-group-lg">
            <button type="button" id="game" class="btn btn-danger dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                游戏 <span class="caret"></span>
            </button>
            <ul class="dropdown-menu" aria-labelledby="game">
                <li><a href="#">在线游玩</a></li>
                <li><a href="${pageContext.request.contextPath}/gamelist/buttonClick?buttonName=UPDATE">最近更新</a></li>
                <li role="separator" class="divider"></li>
                <li class="dropdown-header">按类别浏览</li>
                <li><a href="${pageContext.request.contextPath}/gamelist/kindShow?kind=策略战棋">策略战旗</a></li>
                <li><a href="${pageContext.request.contextPath}/gamelist/kindShow?kind=角色扮演">角色扮演</a></li>
                <li><a href="${pageContext.request.contextPath}/gamelist/kindShow?kind=多人在线">多人在线</a></li>
                <li><a href="${pageContext.request.contextPath}/gamelist/kindShow?kind=体育赛车">体育赛车</a></li>
                <li><a href="${pageContext.request.contextPath}/gamelist/kindShow?kind=动作射击">动作射击</a></li>
                <li><a href="${pageContext.request.contextPath}/gamelist/kindShow?kind=独立游戏">独立游戏</a></li>
            </ul>
        </div>
        <div class="btn-group btn-group-lg">
            <button id="software" type="button" class="btn btn-danger dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                移动中心 <span class="caret"></span>
            </button>
            <ul class="dropdown-menu" aria-labelledby="software">
                <li><a href="#">手机游戏</a></li>
                <li role="separator" class="divider"></li>
                <li class="dropdown-header">按类别浏览</li>
                <li><a href="#">策略</a></li>
                <li><a href="#">赛车</a></li>
                <li><a href="#">传奇</a></li>
                <li><a href="#">休闲</a></li>
                <li><a href="#">动作</a></li>
            </ul>
        </div>
        <div class="btn-group btn-group-lg">
            <button id="company" type="button" class="btn btn-danger dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                游戏厂商 <span class="caret"></span>
            </button>
            <ul class="dropdown-menu" aria-labelledby="company">
                <li><a href="#">腾讯</a></li>
                <li><a href="#">网易</a></li>
                <li><a href="#">搜狐</a></li>
                <li><a href="#">百度</a></li>
                <li><a href="#">微软</a></li>
            </ul>
        </div>
        <div class="btn btn-lg btn-danger"><a href="#" style="color: #ffffff">新闻</a></div>
    </div>
    <div class="col-md-3">
        <form class="form-inline">
            <div class="form-group">
                <input type="text" class="form-control input-lg" placeholder="荒野大镖客">
            </div>
            <button type="submit" class="btn btn-lg btn-success"><span class="glyphicon glyphicon-search"></span></button>
        </form>
    </div>
</div>

<div class="container col-md-2" style="background-image: url(${pageContext.request.contextPath}/static/img/lbj.jpg);height: 950px">
    <div class="media">
        <br>
        <div class="media-left">
            <a href="#">
                <img class="media-object" src="${pageContext.request.contextPath}/static/img/游戏.png" alt="${pageContext.request.contextPath}/static.">
            </a>
        </div>
        <div class="media-body text-center">
            <br>
            <h3 class="media-heading">GameSpace</h3>
        </div>
        <hr>
    </div>
    <div class="text-left">
        <h6>推荐</h6>
        <h5><a href="${pageContext.request.contextPath}/gamelist/buttonClick?buttonName=NOWHOT"><span class="glyphicon glyphicon-fire" style="color: #761c19">    时下热门</span></a> </h5>
        <h5><a href="${pageContext.request.contextPath}/gamelist/buttonClick?buttonName=MOREATTENTION"><span class="glyphicon glyphicon-floppy-disk" style="color: #d58512">    最多关注</span></a> </h5>
        <h5><a href="${pageContext.request.contextPath}/gamelist/buttonClick?buttonName=COMESOON"><span class="glyphicon glyphicon-dashboard" style="color: aquamarine">    即将推出</span></a> </h5>
        <h5><a href="${pageContext.request.contextPath}/gamelist/buttonClick?buttonName=FIRSTTEST"><span class="glyphicon glyphicon-certificate" style="color: #b2dba1">    抢先测试</span></a> </h5>
    </div>
    <div class="text-left">
        <h6>浏览分类</h6>
        <h5><a href="${pageContext.request.contextPath}/gamelist/explorer"><span class="glyphicon glyphicon-flag" style="color: #a94442">    探险家</span></a> </h5>
        <h6>文章评测</h6>
        <h5><a href="#"><span class="glyphicon glyphicon-th-list" style="color: yellow">    游戏鉴赏家</span></a> </h5>
        <div class="dropdown">
            <a href="#" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                <span class="glyphicon glyphicon-tree-deciduous" style="color: thistle">    按类别查看</span>
                <span class="caret" style="color: thistle"></span>
            </a>
            <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
                <li><a href="${pageContext.request.contextPath}/gamelist/kindShow?kind=模拟经营">模拟经营</a></li>
                <li><a href="${pageContext.request.contextPath}/gamelist/kindShow?kind=故事剧情">故事剧情</a></li>
                <li><a href="${pageContext.request.contextPath}/gamelist/kindShow?kind=音乐舞蹈">音乐舞蹈</a></li>
                <li><a href="${pageContext.request.contextPath}/gamelist/kindShow?kind=体育赛车">体育赛车</a></li>
                <li><a href="${pageContext.request.contextPath}/gamelist/kindShow?kind=塔防卡牌">塔防卡牌</a></li>
                <li><a href="${pageContext.request.contextPath}/gamelist/kindShow?kind=冒险益智">冒险益智</a></li>
                <li><a href="${pageContext.request.contextPath}/gamelist/kindShow?kind=all">......</a></li>
                <li role="separator" class="divider"></li>
                <li class="dropdown-header">热门</li>
                <li><a href="#">GrandTheftAutoV</a></li>
                <li><a href="#">Counter Strike</a></li>
                <li><a href="#">Red Dead Redemption 2</a></li>
            </ul>
        </div>
    </div>
    <div class="text-left" style="margin-top: 460px">
        <h6><span class="glyphicon glyphicon-list" style="color: yellow">    最近浏览</span></h6>
        <h5><a href="#" style="color: aquamarine">    GrandTheftAutoV</a> </h5>
        <h5><a href="#" style="color: aquamarine">    Counter Strike</a> </h5>
        <h5><a href="#" style="color: aquamarine">    Red Dead Redemption 2</a> </h5>
    </div>
</div>

<div class="container col-md-8" style="background-color: #122b40;height: 950px">
    <div>
        <h3 style="color: #ffffff">&nbsp;&nbsp;<span class="glyphicon glyphicon-thumbs-up">&nbsp;精选和推荐</span></h3>
    </div>
    <div id="myCarousel" class="carousel slide">
        <div class="carousel-inner" style="height: 366px">
            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to ="0" class="active" ></li>
                <li data-target="#myCarousel" data-slide-to ="1"></li>
                <li data-target="#myCarousel" data-slide-to ="2"></li>
                <li data-target="#myCarousel" data-slide-to ="3"></li>
                <li data-target="#myCarousel" data-slide-to ="4"></li>
            </ol>
            <div class="item active">
                <a href="show.html">
                    <img src="${pageContext.request.contextPath}/static/img/welcome.jpg">
                </a>
            </div>

            <c:forEach items="${requestScope.map.pictureGameMap}" var="map">
            <div class="item">
                <a href="javascript:void(0); ">
                    <img src="${pageContext.request.contextPath}/static${map.key.picPath}">
                </a>
                <div class="carousel-control col-md-offset-8">
                    <h2 style="color: thistle">${map.value.name}</h2>
                    <div style="height: 14px;"></div>
                    <div>
                        <span class="glyphicon glyphicon-tags" style="font-size: 16px"> 类别：</span>
                        <a href="${pageContext.request.contextPath}/gamelist/kindShow?kind=${map.value.kind}" style="color: yellow"><h5>${map.value.kind}</h5></a>
                    </div>
                    <div>
                        <span class="glyphicon glyphicon-dashboard" style="font-size: 16px"> 评分：</span>
                       <h5 style="color: yellow">${map.value.score}</h5>
                    </div>
                    <div>
                        <span class="glyphicon glyphicon-home" style="font-size: 16px"> 厂商：</span>
                        <a href="#" style="color: yellow"><h5>${map.value.factory}</h5></a>
                    </div>
                    <div>
                        <span class="glyphicon glyphicon-wrench" style="font-size: 16px"> 状态：</span>
                        <a href="#" style="color: yellow"><h5>${map.value.state}</h5></a>
                    </div>
                    <div>
                        <a href="${pageContext.request.contextPath}/game/selectGameById?id=${map.value.id}" style="color: #d58512">
                            <span class="glyphicon glyphicon-eye-open">&nbsp;查看详情</span>
                        </a>
                    </div>
                </div>
            </div>
            </c:forEach>
            <a href="#myCarousel" data-slide="prev" class="carousel-control left"><!-- ‹ -->
                <span class="glyphicon glyphicon-chevron-left"></span>
            </a><!-- 左箭头 -->
            <a href="#myCarousel" data-slide="next" class="carousel-control right"><!-- › -->
                <span class="glyphicon glyphicon-chevron-right"></span>
            </a><!-- 右箭头 -->
        </div>
    </div>

    <div>
        <hr>
        <h3 style="color: #ffffff">&nbsp;&nbsp;<span class="glyphicon glyphicon-bell">&nbsp;特别推荐</span></h3>
        <div class="row">
            <c:forEach var="game" items="${requestScope.map.particularlyRecommended}">
            <div class="col-md-4" style="height: 435px">
                <div class="thumbnail" style="background-color: steelblue;height: 435px">
                    <img src="${pageContext.request.contextPath}/static${game.recommendedGamePath}">
                    <div class="caption">
                        <h3>${game.name}</h3>
                        <div>
                            <span class="glyphicon glyphicon-tags"> 类别：</span>
                            <a href="${pageContext.request.contextPath}/gamelist/kindShow?kind=${game.kind}" style="color: yellow"><h5>${game.kind}</h5></a>
                        </div>
                        <div>
                            <span class="glyphicon glyphicon-home"> 厂商：</span>
                            <a href="#" style="color: yellow"><h5>${game.factory}</h5></a>
                        </div>
                        <p><a href="${pageContext.request.contextPath}/game/selectGameById?id=${game.id}" class="btn btn-danger" role="button">查看详情</a> <a href="#" class="btn btn-warning" role="button">加入愿望单</a></p>
                    </div>
                </div>
            </div>
            </c:forEach>
        </div><hr>
    </div>
</div>

<div class="container col-md-2" style="height: 950px;background-image: url(${pageContext.request.contextPath}/static/img/rbj.jpg)">
    <div class="media">
        <br>
        <div class="media-left">
            <a href="#">
                <img class="media-object" src="${pageContext.request.contextPath}/static/img/游戏.png" alt="${pageContext.request.contextPath}/static.">
            </a>
        </div>
        <div class="media-body text-center">
            <br>
            <h3 class="media-heading">GameSpace</h3>
        </div>
        <hr>
    </div>
</div>

<div class="container-fluid" style="background-color:#122b40;height: 62px;margin-top: 950px">
    <br>
    <div class="col-md-offset-2 col-md-8">
        <ul class="nav nav-pills">
            <li class="active"><a href="#hot" data-toggle="tab">实时热搜榜</a></li>
            <li><a href="#good" data-toggle="tab">最高评分</a></li>
            <li><a href="#new" data-toggle="tab">最新上架</a></li>
            <li><a href="#cut" data-toggle="tab">最多好评</a></li>
        </ul>
    </div>
</div>

<div class="container-fluid" style="background-color: #0C1925;height: 975px">
    <div class="tab-content col-md-offset-2 col-md-8"><br>
        <div class="tab-pane active" id="hot">
            <div class=" col-md-9">
                <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="background-color: #23527c">
                    <div class="media">
                        <div class="media-left media-middle">
                            <a href="#">
                                <img class="media-object" src="${pageContext.request.contextPath}/static${requestScope.map.hotGames[0].listGamePath}" alt="${pageContext.request.contextPath}/static.">
                            </a>
                        </div>
                        <div class="media-body">
                            <h3 class="media-heading" style="color: #a6e1ec">${requestScope.map.hotGames[0].name}</h3>
                            <img src="${pageContext.request.contextPath}/static/img/windows.png">&nbsp;<img src="${pageContext.request.contextPath}/static/img/mac.png">
                            <div>
                                <h5><span class="glyphicon glyphicon-tags"> 类别：</span></h5>
                                <h6>
                                    <a href="${pageContext.request.contextPath}/gamelist/kindShow?kind=${requestScope.map.hotGames[0].kind}" style="color: yellow">${requestScope.map.hotGames[0].kind}</a>
                                </h6>
                                <a href="#"><h4 style="color: red">点击查看详情</h4></a></span>
                            </div>
                        </div>
                    </div>
                </button>
                <ul class="dropdown-menu col-md-4" style="left: 100%;top: 0px;height: 950px;background-color: #269abc">
                    <li><a href="${pageContext.request.contextPath}/game/selectGameById?id=${requestScope.map.hotGames[0].id}" style="color: black"><h5><strong>${requestScope.map.hotGames[0].name}</strong></h5></a></li>
                    <div class="list-group">
                        <a href="${pageContext.request.contextPath}/game/selectGameById?id=${requestScope.map.hotGames[0].id}" class="list-group-item active">
                            <h4 class="list-group-item-heading">简介</h4>
                            <p class="list-group-item-text text-justify">${requestScope.map.hotGames[0].introduce}</p>
                        </a>
                    </div>
                    <li class="text-center"><h5><strong>用户评论</strong></h5></li>
                    <ul class="list-group">
                        <li class="list-group-item list-group-item-success">第一人称视角</li>
                        <li class="list-group-item list-group-item-info">沙盒巅峰</li>
                    </ul>
                    <li class="text-center"><h5><strong>游戏截图</strong></h5></li>
                    <div>
                        <img src="${pageContext.request.contextPath}/static${requestScope.map.hotGames[0].cutGamePath1}" width="100%">
                    </div>
                    <hr>
                    <div>
                        <img src="${pageContext.request.contextPath}/static${requestScope.map.hotGames[0].cutGamePath2}" width="100%">
                    </div>
                </ul>
            </div>
            <div class="col-md-9">
                <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="background-color: #23527c">
                    <div class="media">
                        <div class="media-left media-middle">
                            <a href="#">
                                <img class="media-object" src="${pageContext.request.contextPath}/static${requestScope.map.hotGames[1].listGamePath}" alt="${pageContext.request.contextPath}/static.">
                            </a>
                        </div>
                        <div class="media-body">
                            <h3 class="media-heading" style="color: #a6e1ec">${requestScope.map.hotGames[1].name}</h3>
                            <img src="${pageContext.request.contextPath}/static/img/windows.png">&nbsp;<img src="${pageContext.request.contextPath}/static/img/mac.png">
                            <div>
                                <h5><span class="glyphicon glyphicon-tags"> 类别：</span></h5>
                                <h6>
                                    <a href="${pageContext.request.contextPath}/gamelist/kindShow?kind=${requestScope.map.hotGames[1].kind}" style="color: yellow">${requestScope.map.hotGames[1].kind}</a>
                                    <a href="#"><h4 style="color: red">点击查看详情</h4></a></span>
                                </h6>
                            </div>
                        </div>
                    </div>
                </button>
                <ul class="dropdown-menu col-md-4" style="left: 100%;top: -157px;height: 950px;background-color: #269abc">
                    <li><a href="${pageContext.request.contextPath}/game/selectGameById?id=${requestScope.map.hotGames[1].id}" style="color: black"><h5><strong>${requestScope.map.hotGames[1].name}</strong></h5></a></li>
                    <div class="list-group">
                        <a href="${pageContext.request.contextPath}/game/selectGameById?id=${requestScope.map.hotGames[1].id}" class="list-group-item active">
                            <h4 class="list-group-item-heading">简介</h4>
                            <p class="list-group-item-text text-justify">${requestScope.map.hotGames[1].introduce}</p>
                        </a>
                    </div>
                    <li class="text-center"><h5><strong>用户评论</strong></h5></li>
                    <ul class="list-group">
                        <li class="list-group-item list-group-item-success">永远都记得春节在冬泉谷看雪的感觉</li>
                        <li class="list-group-item list-group-item-info">MMORPG巅峰</li>
                        <li class="list-group-item list-group-item-warning">这是我的另一半生命。</li>
                        <li class="list-group-item list-group-item-danger">怀旧服真是让我梦回青春</li>
                    </ul>
                    <li class="text-center"><h5><strong>游戏截图</strong></h5></li>
                    <div>
                        <img src="${pageContext.request.contextPath}/static${requestScope.map.hotGames[1].cutGamePath1}" width="100%">
                    </div>
                    <hr>
                    <div>
                        <img src="${pageContext.request.contextPath}/static${requestScope.map.hotGames[1].cutGamePath2}" width="100%">
                    </div>
                </ul>
            </div>
            <div class=" col-md-9">
                <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="background-color: #23527c">
                    <div class="media">
                        <div class="media-left media-middle">
                            <a href="#">
                                <img class="media-object" src="${pageContext.request.contextPath}/static${requestScope.map.hotGames[2].listGamePath}" alt="${pageContext.request.contextPath}/static.">
                            </a>
                        </div>
                        <div class="media-body">
                            <h3 class="media-heading" style="color: #a6e1ec">${requestScope.map.hotGames[2].name}</h3>
                            <img src="${pageContext.request.contextPath}/static/img/windows.png">&nbsp;<img src="${pageContext.request.contextPath}/static/img/mac.png">
                            <div>
                                <h5><span class="glyphicon glyphicon-tags"> 类别：</span></h5>
                                <h6>
                                    <a href="${pageContext.request.contextPath}/gamelist/kindShow?kind=${requestScope.map.hotGames[2].kind}" style="color: yellow">${requestScope.map.hotGames[2].kind}</a>
                                    <a href="#"><h4 style="color: red">点击查看详情</h4></a></span>
                                </h6>
                            </div>
                        </div>
                    </div>
                </button>
                <ul class="dropdown-menu col-md-4" style="left: 100%;top: -314px;height: 950px;background-color: #269abc">
                    <li><a href="${pageContext.request.contextPath}/game/selectGameById?id=${requestScope.map.hotGames[2].id}" style="color: black"><h5><strong>${requestScope.map.hotGames[2].name}</strong></h5></a></li>
                    <div class="list-group">
                        <a href="${pageContext.request.contextPath}/game/selectGameById?id=${requestScope.map.hotGames[2].id}" class="list-group-item active">
                            <h4 class="list-group-item-heading">简介</h4>
                            <p class="list-group-item-text text-justify">${requestScope.map.hotGames[2].introduce}</p>
                        </a>
                    </div>
                    <li class="text-center"><h5><strong>用户评论</strong></h5></li>
                    <ul class="list-group">
                        <li class="list-group-item list-group-item-success">永远都记得春节在冬泉谷看雪的感觉</li>
                        <li class="list-group-item list-group-item-info">MMORPG巅峰</li>
                        <li class="list-group-item list-group-item-warning">这是我的另一半生命。</li>
                        <li class="list-group-item list-group-item-danger">怀旧服真是让我梦回青春</li>
                    </ul>
                    <li class="text-center"><h5><strong>游戏截图</strong></h5></li>
                    <div>
                        <img src="${pageContext.request.contextPath}/static${requestScope.map.hotGames[2].cutGamePath1}" width="100%">
                    </div>
                    <hr>
                    <div>
                        <img src="${pageContext.request.contextPath}/static${requestScope.map.hotGames[2].cutGamePath2}" width="100%">
                    </div>
                </ul>
            </div>
            <div class=" col-md-9">
                <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="background-color: #23527c">
                    <div class="media">
                        <div class="media-left media-middle">
                            <a href="#">
                                <img class="media-object" src="${pageContext.request.contextPath}/static${requestScope.map.hotGames[3].listGamePath}" alt="${pageContext.request.contextPath}/static.">
                            </a>
                        </div>
                        <div class="media-body">
                            <h3 class="media-heading" style="color: #a6e1ec">${requestScope.map.hotGames[3].name}</h3>
                            <img src="${pageContext.request.contextPath}/static/img/windows.png">&nbsp;<img src="${pageContext.request.contextPath}/static/img/mac.png">
                            <div>
                                <h5><span class="glyphicon glyphicon-tags"> 类别：</span></h5>
                                <h6>
                                    <a href="${pageContext.request.contextPath}/gamelist/kindShow?kind=${requestScope.map.hotGames[3].kind}" style="color: yellow">${requestScope.map.hotGames[3].kind}</a>
                                    <a href="#"><h4 style="color: red">点击查看详情</h4></a></span>
                                </h6>
                            </div>
                        </div>
                    </div>
                </button>
                <ul class="dropdown-menu col-md-4" style="left: 100%;top: -471px;height: 950px;background-color: #269abc">
                    <li><a href="${pageContext.request.contextPath}/game/selectGameById?id=${requestScope.map.hotGames[3].id}" style="color: black"><h5><strong>${requestScope.map.hotGames[3].name}</strong></h5></a></li>
                    <div class="list-group">
                        <a href="${pageContext.request.contextPath}/game/selectGameById?id=${requestScope.map.hotGames[3].id}" class="list-group-item active">
                            <h4 class="list-group-item-heading">简介</h4>
                            <p class="list-group-item-text text-justify">${requestScope.map.hotGames[3].introduce}</p>
                        </a>
                    </div>
                    <li class="text-center"><h5><strong>用户评论</strong></h5></li>
                    <ul class="list-group">
                        <li class="list-group-item list-group-item-success">永远都记得春节在冬泉谷看雪的感觉</li>
                        <li class="list-group-item list-group-item-info">MMORPG巅峰</li>
                        <li class="list-group-item list-group-item-warning">这是我的另一半生命。</li>
                        <li class="list-group-item list-group-item-danger">怀旧服真是让我梦回青春</li>
                    </ul>
                    <li class="text-center"><h5><strong>游戏截图</strong></h5></li>
                    <div>
                        <img src="${pageContext.request.contextPath}/static${requestScope.map.hotGames[3].cutGamePath1}" width="100%">
                    </div>
                    <hr>
                    <div>
                        <img src="${pageContext.request.contextPath}/static${requestScope.map.hotGames[3].cutGamePath2}" width="100%">
                    </div>
                </ul>
            </div>
            <div class=" col-md-9">
                <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="background-color: #23527c">
                    <div class="media">
                        <div class="media-left media-middle">
                            <a href="#">
                                <img class="media-object" src="${pageContext.request.contextPath}/static${requestScope.map.hotGames[4].listGamePath}" alt="${pageContext.request.contextPath}/static.">
                            </a>
                        </div>
                        <div class="media-body">
                            <h3 class="media-heading" style="color: #a6e1ec">${requestScope.map.hotGames[4].name}</h3>
                            <img src="${pageContext.request.contextPath}/static/img/windows.png">&nbsp;<img src="${pageContext.request.contextPath}/static/img/mac.png">
                            <div>
                                <h5><span class="glyphicon glyphicon-tags"> 类别：</span></h5>
                                <h6>
                                    <a href="${pageContext.request.contextPath}/gamelist/kindShow?kind=${requestScope.map.hotGames[4].kind}" style="color: yellow">${requestScope.map.hotGames[4].kind}</a>
                                    <a href="#"><h4 style="color: red">点击查看详情</h4></a></span>
                                </h6>
                            </div>
                        </div>
                    </div>
                </button>
                <ul class="dropdown-menu col-md-4" style="left: 100%;top: -628px;height: 950px;background-color: #269abc">
                    <li><a href="${pageContext.request.contextPath}/game/selectGameById?id=${requestScope.map.hotGames[4].id}" style="color: black"><h5><strong>${requestScope.map.hotGames[4].name}</strong></h5></a></li>
                    <div class="list-group">
                        <a href="${pageContext.request.contextPath}/game/selectGameById?id=${requestScope.map.hotGames[4].id}" class="list-group-item active">
                            <h4 class="list-group-item-heading">简介</h4>
                            <p class="list-group-item-text text-justify">${requestScope.map.hotGames[4].introduce}</p>
                        </a>
                    </div>
                    <li class="text-center"><h5><strong>用户评论</strong></h5></li>
                    <ul class="list-group">
                        <li class="list-group-item list-group-item-success">永远都记得春节在冬泉谷看雪的感觉</li>
                        <li class="list-group-item list-group-item-info">MMORPG巅峰</li>
                        <li class="list-group-item list-group-item-warning">这是我的另一半生命。</li>
                        <li class="list-group-item list-group-item-danger">怀旧服真是让我梦回青春</li>
                    </ul>
                    <li class="text-center"><h5><strong>游戏截图</strong></h5></li>
                    <div>
                        <img src="${pageContext.request.contextPath}/static${requestScope.map.hotGames[4].cutGamePath1}" width="100%">
                    </div>
                    <hr>
                    <div>
                        <img src="${pageContext.request.contextPath}/static${requestScope.map.hotGames[4].cutGamePath2}" width="100%">
                    </div>
                </ul>
            </div>
            <div class=" col-md-9">
                <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="background-color: #23527c">
                    <div class="media">
                        <div class="media-left media-middle">
                            <a href="#">
                                <img class="media-object" src="${pageContext.request.contextPath}/static${requestScope.map.hotGames[5].listGamePath}" alt="${pageContext.request.contextPath}/static.">
                            </a>
                        </div>
                        <div class="media-body">
                            <h3 class="media-heading" style="color: #a6e1ec">${requestScope.map.hotGames[5].name}</h3>
                            <img src="${pageContext.request.contextPath}/static/img/windows.png">&nbsp;<img src="${pageContext.request.contextPath}/static/img/mac.png">
                            <div>
                                <h5><span class="glyphicon glyphicon-tags"> 类别：</span></h5>
                                <h6>
                                    <a href="${pageContext.request.contextPath}/gamelist/kindShow?kind=${requestScope.map.hotGames[5].kind}" style="color: yellow">${requestScope.map.hotGames[5].kind}</a>
                                    <a href="#"><h4 style="color: red">点击查看详情</h4></a></span>
                                </h6>
                            </div>
                        </div>
                    </div>
                </button>
                <ul class="dropdown-menu col-md-4" style="left: 100%;top: -785px;height: 950px;background-color: #269abc">
                    <li><a href="${pageContext.request.contextPath}/game/selectGameById?id=${requestScope.map.hotGames[5].id}" style="color: black"><h5><strong>${requestScope.map.hotGames[5].name}</strong></h5></a></li>
                    <div class="list-group">
                        <a href="${pageContext.request.contextPath}/game/selectGameById?id=${requestScope.map.hotGames[5].id}" class="list-group-item active">
                            <h4 class="list-group-item-heading">简介</h4>
                            <p class="list-group-item-text text-justify">${requestScope.map.hotGames[5].introduce}</p>
                        </a>
                    </div>
                    <li class="text-center"><h5><strong>用户评论</strong></h5></li>
                    <ul class="list-group">
                        <li class="list-group-item list-group-item-success">永远都记得春节在冬泉谷看雪的感觉</li>
                        <li class="list-group-item list-group-item-info">MMORPG巅峰</li>
                        <li class="list-group-item list-group-item-warning">这是我的另一半生命。</li>
                        <li class="list-group-item list-group-item-danger">怀旧服真是让我梦回青春</li>
                    </ul>
                    <li class="text-center"><h5><strong>游戏截图</strong></h5></li>
                    <div>
                        <img src="${pageContext.request.contextPath}/static${requestScope.map.hotGames[5].cutGamePath1}" width="100%">
                    </div>
                    <hr>
                    <div>
                        <img src="${pageContext.request.contextPath}/static${requestScope.map.hotGames[5].cutGamePath2}" width="100%">
                    </div>
                </ul>
            </div>
        </div>

        <div class="tab-pane" id="good">
            <div class=" col-md-9">
                <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="background-color: #23527c">
                    <div class="media">
                        <div class="media-left media-middle">
                            <a href="#">
                                <img class="media-object" src="${pageContext.request.contextPath}/static${requestScope.map.scoreGames[0].listGamePath}" alt="${pageContext.request.contextPath}/static.">
                            </a>
                        </div>
                        <div class="media-body">
                            <h3 class="media-heading" style="color: #a6e1ec">${requestScope.map.scoreGames[0].name}</h3>
                            <img src="${pageContext.request.contextPath}/static/img/windows.png">&nbsp;<img src="${pageContext.request.contextPath}/static/img/mac.png">
                            <div>
                                <h5><span class="glyphicon glyphicon-tags"> 类别：</span></h5>
                                <h6>
                                    <a href="${pageContext.request.contextPath}/gamelist/kindShow?kind=${requestScope.map.scoreGames[0].kind}" style="color: yellow">${requestScope.map.scoreGames[0].kind}</a>
                                </h6>
                                <a href="#"><h4 style="color: red">点击查看详情</h4></a></span>
                            </div>
                        </div>
                    </div>
                </button>
                <ul class="dropdown-menu col-md-4" style="left: 100%;top: 0px;height: 950px;background-color: #269abc">
                    <li><a href="${pageContext.request.contextPath}/game/selectGameById?id=${requestScope.map.scoreGames[0].id}" style="color: black"><h5><strong>${requestScope.map.scoreGames[0].name}</strong></h5></a></li>
                    <div class="list-group">
                        <a href="${pageContext.request.contextPath}/game/selectGameById?id=${requestScope.map.scoreGames[0].id}" class="list-group-item active">
                            <h4 class="list-group-item-heading">简介</h4>
                            <p class="list-group-item-text text-justify">${requestScope.map.scoreGames[0].introduce}</p>
                        </a>
                    </div>
                    <li class="text-center"><h5><strong>用户评论</strong></h5></li>
                    <ul class="list-group">
                        <li class="list-group-item list-group-item-success">第一人称视角</li>
                        <li class="list-group-item list-group-item-info">沙盒巅峰</li>
                    </ul>
                    <li class="text-center"><h5><strong>游戏截图</strong></h5></li>
                    <div>
                        <img src="${pageContext.request.contextPath}/static${requestScope.map.scoreGames[0].cutGamePath1}" width="100%">
                    </div>
                    <hr>
                    <div>
                        <img src="${pageContext.request.contextPath}/static${requestScope.map.scoreGames[0].cutGamePath2}" width="100%">
                    </div>
                </ul>
            </div>
            <div class="col-md-9">
                <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="background-color: #23527c">
                    <div class="media">
                        <div class="media-left media-middle">
                            <a href="#">
                                <img class="media-object" src="${pageContext.request.contextPath}/static${requestScope.map.scoreGames[1].listGamePath}" alt="${pageContext.request.contextPath}/static.">
                            </a>
                        </div>
                        <div class="media-body">
                            <h3 class="media-heading" style="color: #a6e1ec">${requestScope.map.scoreGames[1].name}</h3>
                            <img src="${pageContext.request.contextPath}/static/img/windows.png">&nbsp;<img src="${pageContext.request.contextPath}/static/img/mac.png">
                            <div>
                                <h5><span class="glyphicon glyphicon-tags"> 类别：</span></h5>
                                <h6>
                                    <a href="${pageContext.request.contextPath}/gamelist/kindShow?kind=${requestScope.map.scoreGames[1].kind}" style="color: yellow">${requestScope.map.scoreGames[1].kind}</a>
                                    <a href="#"><h4 style="color: red">点击查看详情</h4></a></span>
                                </h6>
                            </div>
                        </div>
                    </div>
                </button>
                <ul class="dropdown-menu col-md-4" style="left: 100%;top: -157px;height: 950px;background-color: #269abc">
                    <li><a href="${pageContext.request.contextPath}/game/selectGameById?id=${requestScope.map.scoreGames[1].id}" style="color: black"><h5><strong>${requestScope.map.scoreGames[1].name}</strong></h5></a></li>
                    <div class="list-group">
                        <a href="${pageContext.request.contextPath}/game/selectGameById?id=${requestScope.map.scoreGames[1].id}" class="list-group-item active">
                            <h4 class="list-group-item-heading">简介</h4>
                            <p class="list-group-item-text text-justify">${requestScope.map.scoreGames[1].introduce}</p>
                        </a>
                    </div>
                    <li class="text-center"><h5><strong>用户评论</strong></h5></li>
                    <ul class="list-group">
                        <li class="list-group-item list-group-item-success">永远都记得春节在冬泉谷看雪的感觉</li>
                        <li class="list-group-item list-group-item-info">MMORPG巅峰</li>
                        <li class="list-group-item list-group-item-warning">这是我的另一半生命。</li>
                        <li class="list-group-item list-group-item-danger">怀旧服真是让我梦回青春</li>
                    </ul>
                    <li class="text-center"><h5><strong>游戏截图</strong></h5></li>
                    <div>
                        <img src="${pageContext.request.contextPath}/static${requestScope.map.scoreGames[1].cutGamePath1}" width="100%">
                    </div>
                    <hr>
                    <div>
                        <img src="${pageContext.request.contextPath}/static${requestScope.map.scoreGames[1].cutGamePath2}" width="100%">
                    </div>
                </ul>
            </div>
            <div class=" col-md-9">
                <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="background-color: #23527c">
                    <div class="media">
                        <div class="media-left media-middle">
                            <a href="#">
                                <img class="media-object" src="${pageContext.request.contextPath}/static${requestScope.map.scoreGames[2].listGamePath}" alt="${pageContext.request.contextPath}/static.">
                            </a>
                        </div>
                        <div class="media-body">
                            <h3 class="media-heading" style="color: #a6e1ec">${requestScope.map.scoreGames[2].name}</h3>
                            <img src="${pageContext.request.contextPath}/static/img/windows.png">&nbsp;<img src="${pageContext.request.contextPath}/static/img/mac.png">
                            <div>
                                <h5><span class="glyphicon glyphicon-tags"> 类别：</span></h5>
                                <h6>
                                    <a href="${pageContext.request.contextPath}/gamelist/kindShow?kind=${requestScope.map.scoreGames[2].kind}" style="color: yellow">${requestScope.map.scoreGames[2].kind}</a>
                                    <a href="#"><h4 style="color: red">点击查看详情</h4></a></span>
                                </h6>
                            </div>
                        </div>
                    </div>
                </button>
                <ul class="dropdown-menu col-md-4" style="left: 100%;top: -314px;height: 950px;background-color: #269abc">
                    <li><a href="${pageContext.request.contextPath}/game/selectGameById?id=${requestScope.map.scoreGames[2].id}" style="color: black"><h5><strong>${requestScope.map.scoreGames[2].name}</strong></h5></a></li>
                    <div class="list-group">
                        <a href="${pageContext.request.contextPath}/game/selectGameById?id=${requestScope.map.scoreGames[2].id}" class="list-group-item active">
                            <h4 class="list-group-item-heading">简介</h4>
                            <p class="list-group-item-text text-justify">${requestScope.map.scoreGames[2].introduce}</p>
                        </a>
                    </div>
                    <li class="text-center"><h5><strong>用户评论</strong></h5></li>
                    <ul class="list-group">
                        <li class="list-group-item list-group-item-success">永远都记得春节在冬泉谷看雪的感觉</li>
                        <li class="list-group-item list-group-item-info">MMORPG巅峰</li>
                        <li class="list-group-item list-group-item-warning">这是我的另一半生命。</li>
                        <li class="list-group-item list-group-item-danger">怀旧服真是让我梦回青春</li>
                    </ul>
                    <li class="text-center"><h5><strong>游戏截图</strong></h5></li>
                    <div>
                        <img src="${pageContext.request.contextPath}/static${requestScope.map.scoreGames[2].cutGamePath1}" width="100%">
                    </div>
                    <hr>
                    <div>
                        <img src="${pageContext.request.contextPath}/static${requestScope.map.scoreGames[2].cutGamePath2}" width="100%">
                    </div>
                </ul>
            </div>
            <div class=" col-md-9">
                <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="background-color: #23527c">
                    <div class="media">
                        <div class="media-left media-middle">
                            <a href="#">
                                <img class="media-object" src="${pageContext.request.contextPath}/static${requestScope.map.scoreGames[3].listGamePath}" alt="${pageContext.request.contextPath}/static.">
                            </a>
                        </div>
                        <div class="media-body">
                            <h3 class="media-heading" style="color: #a6e1ec">${requestScope.map.scoreGames[3].name}</h3>
                            <img src="${pageContext.request.contextPath}/static/img/windows.png">&nbsp;<img src="${pageContext.request.contextPath}/static/img/mac.png">
                            <div>
                                <h5><span class="glyphicon glyphicon-tags"> 类别：</span></h5>
                                <h6>
                                    <a href="${pageContext.request.contextPath}/gamelist/kindShow?kind=${requestScope.map.scoreGames[3].kind}" style="color: yellow">${requestScope.map.scoreGames[3].kind}</a>
                                    <a href="#"><h4 style="color: red">点击查看详情</h4></a></span>
                                </h6>
                            </div>
                        </div>
                    </div>
                </button>
                <ul class="dropdown-menu col-md-4" style="left: 100%;top: -471px;height: 950px;background-color: #269abc">
                    <li><a href="${pageContext.request.contextPath}/game/selectGameById?id=${requestScope.map.scoreGames[3].id}" style="color: black"><h5><strong>${requestScope.map.scoreGames[3].name}</strong></h5></a></li>
                    <div class="list-group">
                        <a href="${pageContext.request.contextPath}/game/selectGameById?id=${requestScope.map.scoreGames[3].id}" class="list-group-item active">
                            <h4 class="list-group-item-heading">简介</h4>
                            <p class="list-group-item-text text-justify">${requestScope.map.scoreGames[3].introduce}</p>
                        </a>
                    </div>
                    <li class="text-center"><h5><strong>用户评论</strong></h5></li>
                    <ul class="list-group">
                        <li class="list-group-item list-group-item-success">永远都记得春节在冬泉谷看雪的感觉</li>
                        <li class="list-group-item list-group-item-info">MMORPG巅峰</li>
                        <li class="list-group-item list-group-item-warning">这是我的另一半生命。</li>
                        <li class="list-group-item list-group-item-danger">怀旧服真是让我梦回青春</li>
                    </ul>
                    <li class="text-center"><h5><strong>游戏截图</strong></h5></li>
                    <div>
                        <img src="${pageContext.request.contextPath}/static${requestScope.map.scoreGames[3].cutGamePath1}" width="100%">
                    </div>
                    <hr>
                    <div>
                        <img src="${pageContext.request.contextPath}/static${requestScope.map.scoreGames[3].cutGamePath2}" width="100%">
                    </div>
                </ul>
            </div>
            <div class=" col-md-9">
                <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="background-color: #23527c">
                    <div class="media">
                        <div class="media-left media-middle">
                            <a href="#">
                                <img class="media-object" src="${pageContext.request.contextPath}/static${requestScope.map.scoreGames[4].listGamePath}" alt="${pageContext.request.contextPath}/static.">
                            </a>
                        </div>
                        <div class="media-body">
                            <h3 class="media-heading" style="color: #a6e1ec">${requestScope.map.scoreGames[4].name}</h3>
                            <img src="${pageContext.request.contextPath}/static/img/windows.png">&nbsp;<img src="${pageContext.request.contextPath}/static/img/mac.png">
                            <div>
                                <h5><span class="glyphicon glyphicon-tags"> 类别：</span></h5>
                                <h6>
                                    <a href="${pageContext.request.contextPath}/gamelist/kindShow?kind=${requestScope.map.scoreGames[4].kind}" style="color: yellow">${requestScope.map.scoreGames[4].kind}</a>
                                    <a href="#"><h4 style="color: red">点击查看详情</h4></a></span>
                                </h6>
                            </div>
                        </div>
                    </div>
                </button>
                <ul class="dropdown-menu col-md-4" style="left: 100%;top: -628px;height: 950px;background-color: #269abc">
                    <li><a href="${pageContext.request.contextPath}/game/selectGameById?id=${requestScope.map.scoreGames[4].id}" style="color: black"><h5><strong>${requestScope.map.scoreGames[4].name}</strong></h5></a></li>
                    <div class="list-group">
                        <a href="${pageContext.request.contextPath}/game/selectGameById?id=${requestScope.map.scoreGames[4].id}" class="list-group-item active">
                            <h4 class="list-group-item-heading">简介</h4>
                            <p class="list-group-item-text text-justify">${requestScope.map.scoreGames[4].introduce}</p>
                        </a>
                    </div>
                    <li class="text-center"><h5><strong>用户评论</strong></h5></li>
                    <ul class="list-group">
                        <li class="list-group-item list-group-item-success">永远都记得春节在冬泉谷看雪的感觉</li>
                        <li class="list-group-item list-group-item-info">MMORPG巅峰</li>
                        <li class="list-group-item list-group-item-warning">这是我的另一半生命。</li>
                        <li class="list-group-item list-group-item-danger">怀旧服真是让我梦回青春</li>
                    </ul>
                    <li class="text-center"><h5><strong>游戏截图</strong></h5></li>
                    <div>
                        <img src="${pageContext.request.contextPath}/static${requestScope.map.scoreGames[4].cutGamePath1}" width="100%">
                    </div>
                    <hr>
                    <div>
                        <img src="${pageContext.request.contextPath}/static${requestScope.map.scoreGames[4].cutGamePath2}" width="100%">
                    </div>
                </ul>
            </div>
            <div class=" col-md-9">
                <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="background-color: #23527c">
                    <div class="media">
                        <div class="media-left media-middle">
                            <a href="#">
                                <img class="media-object" src="${pageContext.request.contextPath}/static${requestScope.map.scoreGames[5].listGamePath}" alt="${pageContext.request.contextPath}/static.">
                            </a>
                        </div>
                        <div class="media-body">
                            <h3 class="media-heading" style="color: #a6e1ec">${requestScope.map.scoreGames[5].name}</h3>
                            <img src="${pageContext.request.contextPath}/static/img/windows.png">&nbsp;<img src="${pageContext.request.contextPath}/static/img/mac.png">
                            <div>
                                <h5><span class="glyphicon glyphicon-tags"> 类别：</span></h5>
                                <h6>
                                    <a href="${pageContext.request.contextPath}/gamelist/kindShow?kind=${requestScope.map.scoreGames[5].kind}" style="color: yellow">${requestScope.map.scoreGames[5].kind}</a>
                                    <a href="#"><h4 style="color: red">点击查看详情</h4></a></span>
                                </h6>
                            </div>
                        </div>
                    </div>
                </button>
                <ul class="dropdown-menu col-md-4" style="left: 100%;top: -785px;height: 950px;background-color: #269abc">
                    <li><a href="${pageContext.request.contextPath}/game/selectGameById?id=${requestScope.map.scoreGames[5].id}" style="color: black"><h5><strong>${requestScope.map.scoreGames[5].name}</strong></h5></a></li>
                    <div class="list-group">
                        <a href="${pageContext.request.contextPath}/game/selectGameById?id=${requestScope.map.scoreGames[5].id}" class="list-group-item active">
                            <h4 class="list-group-item-heading">简介</h4>
                            <p class="list-group-item-text text-justify">${requestScope.map.scoreGames[5].introduce}</p>
                        </a>
                    </div>
                    <li class="text-center"><h5><strong>用户评论</strong></h5></li>
                    <ul class="list-group">
                        <li class="list-group-item list-group-item-success">永远都记得春节在冬泉谷看雪的感觉</li>
                        <li class="list-group-item list-group-item-info">MMORPG巅峰</li>
                        <li class="list-group-item list-group-item-warning">这是我的另一半生命。</li>
                        <li class="list-group-item list-group-item-danger">怀旧服真是让我梦回青春</li>
                    </ul>
                    <li class="text-center"><h5><strong>游戏截图</strong></h5></li>
                    <div>
                        <img src="${pageContext.request.contextPath}/static${requestScope.map.scoreGames[5].cutGamePath1}" width="100%">
                    </div>
                    <hr>
                    <div>
                        <img src="${pageContext.request.contextPath}/static${requestScope.map.scoreGames[5].cutGamePath2}" width="100%">
                    </div>
                </ul>
            </div>
        </div>

        <div class="tab-pane" id="new">
            <div class=" col-md-9">
                <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="background-color: #23527c">
                    <div class="media">
                        <div class="media-left media-middle">
                            <a href="#">
                                <img class="media-object" src="${pageContext.request.contextPath}/static${requestScope.map.dateGames[0].listGamePath}" alt="${pageContext.request.contextPath}/static.">
                            </a>
                        </div>
                        <div class="media-body">
                            <h3 class="media-heading" style="color: #a6e1ec">${requestScope.map.dateGames[0].name}</h3>
                            <img src="${pageContext.request.contextPath}/static/img/windows.png">&nbsp;<img src="${pageContext.request.contextPath}/static/img/mac.png">
                            <div>
                                <h5><span class="glyphicon glyphicon-tags"> 类别：</span></h5>
                                <h6>
                                    <a href="${pageContext.request.contextPath}/gamelist/kindShow?kind=${requestScope.map.dateGames[0].kind}" style="color: yellow">${requestScope.map.dateGames[0].kind}</a>
                                </h6>
                                <a href="#"><h4 style="color: red">点击查看详情</h4></a></span>
                            </div>
                        </div>
                    </div>
                </button>
                <ul class="dropdown-menu col-md-4" style="left: 100%;top: 0px;height: 950px;background-color: #269abc">
                    <li><a href="${pageContext.request.contextPath}/game/selectGameById?id=${requestScope.map.dateGames[0].id}" style="color: black"><h5><strong>${requestScope.map.dateGames[0].name}</strong></h5></a></li>
                    <div class="list-group">
                        <a href="${pageContext.request.contextPath}/game/selectGameById?id=${requestScope.map.dateGames[0].id}" class="list-group-item active">
                            <h4 class="list-group-item-heading">简介</h4>
                            <p class="list-group-item-text text-justify">${requestScope.map.dateGames[0].introduce}</p>
                        </a>
                    </div>
                    <li class="text-center"><h5><strong>用户评论</strong></h5></li>
                    <ul class="list-group">
                        <li class="list-group-item list-group-item-success">第一人称视角</li>
                        <li class="list-group-item list-group-item-info">沙盒巅峰</li>
                    </ul>
                    <li class="text-center"><h5><strong>游戏截图</strong></h5></li>
                    <div>
                        <img src="${pageContext.request.contextPath}/static${requestScope.map.dateGames[0].cutGamePath1}" width="100%">
                    </div>
                    <hr>
                    <div>
                        <img src="${pageContext.request.contextPath}/static${requestScope.map.dateGames[0].cutGamePath2}" width="100%">
                    </div>
                </ul>
            </div>
            <div class="col-md-9">
                <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="background-color: #23527c">
                    <div class="media">
                        <div class="media-left media-middle">
                            <a href="#">
                                <img class="media-object" src="${pageContext.request.contextPath}/static${requestScope.map.dateGames[1].listGamePath}" alt="${pageContext.request.contextPath}/static.">
                            </a>
                        </div>
                        <div class="media-body">
                            <h3 class="media-heading" style="color: #a6e1ec">${requestScope.map.dateGames[1].name}</h3>
                            <img src="${pageContext.request.contextPath}/static/img/windows.png">&nbsp;<img src="${pageContext.request.contextPath}/static/img/mac.png">
                            <div>
                                <h5><span class="glyphicon glyphicon-tags"> 类别：</span></h5>
                                <h6>
                                    <a href="${pageContext.request.contextPath}/gamelist/kindShow?kind=${requestScope.map.dateGames[1].kind}" style="color: yellow">${requestScope.map.dateGames[1].kind}</a>
                                    <a href="#"><h4 style="color: red">点击查看详情</h4></a></span>
                                </h6>
                            </div>
                        </div>
                    </div>
                </button>
                <ul class="dropdown-menu col-md-4" style="left: 100%;top: -157px;height: 950px;background-color: #269abc">
                    <li><a href="${pageContext.request.contextPath}/game/selectGameById?id=${requestScope.map.dateGames[1].id}" style="color: black"><h5><strong>${requestScope.map.dateGames[1].name}</strong></h5></a></li>
                    <div class="list-group">
                        <a href="${pageContext.request.contextPath}/game/selectGameById?id=${requestScope.map.dateGames[1].id}" class="list-group-item active">
                            <h4 class="list-group-item-heading">简介</h4>
                            <p class="list-group-item-text text-justify">${requestScope.map.dateGames[1].introduce}</p>
                        </a>
                    </div>
                    <li class="text-center"><h5><strong>用户评论</strong></h5></li>
                    <ul class="list-group">
                        <li class="list-group-item list-group-item-success">永远都记得春节在冬泉谷看雪的感觉</li>
                        <li class="list-group-item list-group-item-info">MMORPG巅峰</li>
                        <li class="list-group-item list-group-item-warning">这是我的另一半生命。</li>
                        <li class="list-group-item list-group-item-danger">怀旧服真是让我梦回青春</li>
                    </ul>
                    <li class="text-center"><h5><strong>游戏截图</strong></h5></li>
                    <div>
                        <img src="${pageContext.request.contextPath}/static${requestScope.map.dateGames[1].cutGamePath1}" width="100%">
                    </div>
                    <hr>
                    <div>
                        <img src="${pageContext.request.contextPath}/static${requestScope.map.dateGames[1].cutGamePath2}" width="100%">
                    </div>
                </ul>
            </div>
            <div class=" col-md-9">
                <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="background-color: #23527c">
                    <div class="media">
                        <div class="media-left media-middle">
                            <a href="#">
                                <img class="media-object" src="${pageContext.request.contextPath}/static${requestScope.map.dateGames[2].listGamePath}" alt="${pageContext.request.contextPath}/static.">
                            </a>
                        </div>
                        <div class="media-body">
                            <h3 class="media-heading" style="color: #a6e1ec">${requestScope.map.dateGames[2].name}</h3>
                            <img src="${pageContext.request.contextPath}/static/img/windows.png">&nbsp;<img src="${pageContext.request.contextPath}/static/img/mac.png">
                            <div>
                                <h5><span class="glyphicon glyphicon-tags"> 类别：</span></h5>
                                <h6>
                                    <a href="${pageContext.request.contextPath}/gamelist/kindShow?kind=${requestScope.map.dateGames[2].kind}" style="color: yellow">${requestScope.map.dateGames[2].kind}</a>
                                    <a href="#"><h4 style="color: red">点击查看详情</h4></a></span>
                                </h6>
                            </div>
                        </div>
                    </div>
                </button>
                <ul class="dropdown-menu col-md-4" style="left: 100%;top: -314px;height: 950px;background-color: #269abc">
                    <li><a href="${pageContext.request.contextPath}/game/selectGameById?id=${requestScope.map.dateGames[2].id}" style="color: black"><h5><strong>${requestScope.map.dateGames[2].name}</strong></h5></a></li>
                    <div class="list-group">
                        <a href="${pageContext.request.contextPath}/game/selectGameById?id=${requestScope.map.dateGames[2].id}" class="list-group-item active">
                            <h4 class="list-group-item-heading">简介</h4>
                            <p class="list-group-item-text text-justify">${requestScope.map.dateGames[2].introduce}</p>
                        </a>
                    </div>
                    <li class="text-center"><h5><strong>用户评论</strong></h5></li>
                    <ul class="list-group">
                        <li class="list-group-item list-group-item-success">永远都记得春节在冬泉谷看雪的感觉</li>
                        <li class="list-group-item list-group-item-info">MMORPG巅峰</li>
                        <li class="list-group-item list-group-item-warning">这是我的另一半生命。</li>
                        <li class="list-group-item list-group-item-danger">怀旧服真是让我梦回青春</li>
                    </ul>
                    <li class="text-center"><h5><strong>游戏截图</strong></h5></li>
                    <div>
                        <img src="${pageContext.request.contextPath}/static${requestScope.map.dateGames[2].cutGamePath1}" width="100%">
                    </div>
                    <hr>
                    <div>
                        <img src="${pageContext.request.contextPath}/static${requestScope.map.dateGames[2].cutGamePath2}" width="100%">
                    </div>
                </ul>
            </div>
            <div class=" col-md-9">
                <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="background-color: #23527c">
                    <div class="media">
                        <div class="media-left media-middle">
                            <a href="#">
                                <img class="media-object" src="${pageContext.request.contextPath}/static${requestScope.map.dateGames[3].listGamePath}" alt="${pageContext.request.contextPath}/static.">
                            </a>
                        </div>
                        <div class="media-body">
                            <h3 class="media-heading" style="color: #a6e1ec">${requestScope.map.dateGames[3].name}</h3>
                            <img src="${pageContext.request.contextPath}/static/img/windows.png">&nbsp;<img src="${pageContext.request.contextPath}/static/img/mac.png">
                            <div>
                                <h5><span class="glyphicon glyphicon-tags"> 类别：</span></h5>
                                <h6>
                                    <a href="${pageContext.request.contextPath}/gamelist/kindShow?kind=${requestScope.map.dateGames[3].kind}" style="color: yellow">${requestScope.map.dateGames[3].kind}</a>
                                    <a href="#"><h4 style="color: red">点击查看详情</h4></a></span>
                                </h6>
                            </div>
                        </div>
                    </div>
                </button>
                <ul class="dropdown-menu col-md-4" style="left: 100%;top: -471px;height: 950px;background-color: #269abc">
                    <li><a href="${pageContext.request.contextPath}/game/selectGameById?id=${requestScope.map.dateGames[3].id}" style="color: black"><h5><strong>${requestScope.map.dateGames[3].name}</strong></h5></a></li>
                    <div class="list-group">
                        <a href="${pageContext.request.contextPath}/game/selectGameById?id=${requestScope.map.dateGames[3].id}" class="list-group-item active">
                            <h4 class="list-group-item-heading">简介</h4>
                            <p class="list-group-item-text text-justify">${requestScope.map.dateGames[3].introduce}</p>
                        </a>
                    </div>
                    <li class="text-center"><h5><strong>用户评论</strong></h5></li>
                    <ul class="list-group">
                        <li class="list-group-item list-group-item-success">永远都记得春节在冬泉谷看雪的感觉</li>
                        <li class="list-group-item list-group-item-info">MMORPG巅峰</li>
                        <li class="list-group-item list-group-item-warning">这是我的另一半生命。</li>
                        <li class="list-group-item list-group-item-danger">怀旧服真是让我梦回青春</li>
                    </ul>
                    <li class="text-center"><h5><strong>游戏截图</strong></h5></li>
                    <div>
                        <img src="${pageContext.request.contextPath}/static${requestScope.map.dateGames[3].cutGamePath1}" width="100%">
                    </div>
                    <hr>
                    <div>
                        <img src="${pageContext.request.contextPath}/static${requestScope.map.dateGames[3].cutGamePath2}" width="100%">
                    </div>
                </ul>
            </div>
            <div class=" col-md-9">
                <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="background-color: #23527c">
                    <div class="media">
                        <div class="media-left media-middle">
                            <a href="#">
                                <img class="media-object" src="${pageContext.request.contextPath}/static${requestScope.map.dateGames[4].listGamePath}" alt="${pageContext.request.contextPath}/static.">
                            </a>
                        </div>
                        <div class="media-body">
                            <h3 class="media-heading" style="color: #a6e1ec">${requestScope.map.dateGames[4].name}</h3>
                            <img src="${pageContext.request.contextPath}/static/img/windows.png">&nbsp;<img src="${pageContext.request.contextPath}/static/img/mac.png">
                            <div>
                                <h5><span class="glyphicon glyphicon-tags"> 类别：</span></h5>
                                <h6>
                                    <a href="${pageContext.request.contextPath}/gamelist/kindShow?kind=${requestScope.map.dateGames[4].kind}" style="color: yellow">${requestScope.map.dateGames[4].kind}</a>
                                    <a href="#"><h4 style="color: red">点击查看详情</h4></a></span>
                                </h6>
                            </div>
                        </div>
                    </div>
                </button>
                <ul class="dropdown-menu col-md-4" style="left: 100%;top: -628px;height: 950px;background-color: #269abc">
                    <li><a href="${pageContext.request.contextPath}/game/selectGameById?id=${requestScope.map.dateGames[4].id}" style="color: black"><h5><strong>${requestScope.map.dateGames[4].name}</strong></h5></a></li>
                    <div class="list-group">
                        <a href="${pageContext.request.contextPath}/game/selectGameById?id=${requestScope.map.dateGames[4].id}" class="list-group-item active">
                            <h4 class="list-group-item-heading">简介</h4>
                            <p class="list-group-item-text text-justify">${requestScope.map.dateGames[4].introduce}</p>
                        </a>
                    </div>
                    <li class="text-center"><h5><strong>用户评论</strong></h5></li>
                    <ul class="list-group">
                        <li class="list-group-item list-group-item-success">永远都记得春节在冬泉谷看雪的感觉</li>
                        <li class="list-group-item list-group-item-info">MMORPG巅峰</li>
                        <li class="list-group-item list-group-item-warning">这是我的另一半生命。</li>
                        <li class="list-group-item list-group-item-danger">怀旧服真是让我梦回青春</li>
                    </ul>
                    <li class="text-center"><h5><strong>游戏截图</strong></h5></li>
                    <div>
                        <img src="${pageContext.request.contextPath}/static${requestScope.map.dateGames[4].cutGamePath1}" width="100%">
                    </div>
                    <hr>
                    <div>
                        <img src="${pageContext.request.contextPath}/static${requestScope.map.dateGames[4].cutGamePath2}" width="100%">
                    </div>
                </ul>
            </div>
            <div class=" col-md-9">
                <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="background-color: #23527c">
                    <div class="media">
                        <div class="media-left media-middle">
                            <a href="#">
                                <img class="media-object" src="${pageContext.request.contextPath}/static${requestScope.map.dateGames[5].listGamePath}" alt="${pageContext.request.contextPath}/static.">
                            </a>
                        </div>
                        <div class="media-body">
                            <h3 class="media-heading" style="color: #a6e1ec">${requestScope.map.dateGames[5].name}</h3>
                            <img src="${pageContext.request.contextPath}/static/img/windows.png">&nbsp;<img src="${pageContext.request.contextPath}/static/img/mac.png">
                            <div>
                                <h5><span class="glyphicon glyphicon-tags"> 类别：</span></h5>
                                <h6>
                                    <a href="${pageContext.request.contextPath}/gamelist/kindShow?kind=${requestScope.map.dateGames[5].kind}" style="color: yellow">${requestScope.map.dateGames[5].kind}</a>
                                    <a href="#"><h4 style="color: red">点击查看详情</h4></a></span>
                                </h6>
                            </div>
                        </div>
                    </div>
                </button>
                <ul class="dropdown-menu col-md-4" style="left: 100%;top: -785px;height: 950px;background-color: #269abc">
                    <li><a href="${pageContext.request.contextPath}/game/selectGameById?id=${requestScope.map.dateGames[5].id}" style="color: black"><h5><strong>${requestScope.map.dateGames[5].name}</strong></h5></a></li>
                    <div class="list-group">
                        <a href="${pageContext.request.contextPath}/game/selectGameById?id=${requestScope.map.dateGames[5].id}" class="list-group-item active">
                            <h4 class="list-group-item-heading">简介</h4>
                            <p class="list-group-item-text text-justify">${requestScope.map.dateGames[5].introduce}</p>
                        </a>
                    </div>
                    <li class="text-center"><h5><strong>用户评论</strong></h5></li>
                    <ul class="list-group">
                        <li class="list-group-item list-group-item-success">永远都记得春节在冬泉谷看雪的感觉</li>
                        <li class="list-group-item list-group-item-info">MMORPG巅峰</li>
                        <li class="list-group-item list-group-item-warning">这是我的另一半生命。</li>
                        <li class="list-group-item list-group-item-danger">怀旧服真是让我梦回青春</li>
                    </ul>
                    <li class="text-center"><h5><strong>游戏截图</strong></h5></li>
                    <div>
                        <img src="${pageContext.request.contextPath}/static${requestScope.map.dateGames[5].cutGamePath1}" width="100%">
                    </div>
                    <hr>
                    <div>
                        <img src="${pageContext.request.contextPath}/static${requestScope.map.dateGames[5].cutGamePath2}" width="100%">
                    </div>
                </ul>
            </div>
        </div>

        <div class="tab-pane" id="cut">
            <div class=" col-md-9">
                <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="background-color: #23527c">
                    <div class="media">
                        <div class="media-left media-middle">
                            <a href="#">
                                <img class="media-object" src="${pageContext.request.contextPath}/static${requestScope.map.goodConmmentsGames[0].listGamePath}" alt="${pageContext.request.contextPath}/static.">
                            </a>
                        </div>
                        <div class="media-body">
                            <h3 class="media-heading" style="color: #a6e1ec">${requestScope.map.goodConmmentsGames[0].name}</h3>
                            <img src="${pageContext.request.contextPath}/static/img/windows.png">&nbsp;<img src="${pageContext.request.contextPath}/static/img/mac.png">
                            <div>
                                <h5><span class="glyphicon glyphicon-tags"> 类别：</span></h5>
                                <h6>
                                    <a href="${pageContext.request.contextPath}/gamelist/kindShow?kind=${requestScope.map.goodConmmentsGames[0].kind}" style="color: yellow">${requestScope.map.goodConmmentsGames[0].kind}</a>
                                </h6>
                                <a href="#"><h4 style="color: red">点击查看详情</h4></a></span>
                            </div>
                        </div>
                    </div>
                </button>
                <ul class="dropdown-menu col-md-4" style="left: 100%;top: 0px;height: 950px;background-color: #269abc">
                    <li><a href="${pageContext.request.contextPath}/game/selectGameById?id=${requestScope.map.goodConmmentsGames[0].id}" style="color: black"><h5><strong>${requestScope.map.goodConmmentsGames[0].name}</strong></h5></a></li>
                    <div class="list-group">
                        <a href="${pageContext.request.contextPath}/game/selectGameById?id=${requestScope.map.goodConmmentsGames[0].id}" class="list-group-item active">
                            <h4 class="list-group-item-heading">简介</h4>
                            <p class="list-group-item-text text-justify">${requestScope.map.goodConmmentsGames[0].introduce}</p>
                        </a>
                    </div>
                    <li class="text-center"><h5><strong>用户评论</strong></h5></li>
                    <ul class="list-group">
                        <li class="list-group-item list-group-item-success">第一人称视角</li>
                        <li class="list-group-item list-group-item-info">沙盒巅峰</li>
                    </ul>
                    <li class="text-center"><h5><strong>游戏截图</strong></h5></li>
                    <div>
                        <img src="${pageContext.request.contextPath}/static${requestScope.map.goodConmmentsGames[0].cutGamePath1}" width="100%">
                    </div>
                    <hr>
                    <div>
                        <img src="${pageContext.request.contextPath}/static${requestScope.map.goodConmmentsGames[0].cutGamePath2}" width="100%">
                    </div>
                </ul>
            </div>
            <div class="col-md-9">
                <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="background-color: #23527c">
                    <div class="media">
                        <div class="media-left media-middle">
                            <a href="#">
                                <img class="media-object" src="${pageContext.request.contextPath}/static${requestScope.map.goodConmmentsGames[1].listGamePath}" alt="${pageContext.request.contextPath}/static.">
                            </a>
                        </div>
                        <div class="media-body">
                            <h3 class="media-heading" style="color: #a6e1ec">${requestScope.map.goodConmmentsGames[1].name}</h3>
                            <img src="${pageContext.request.contextPath}/static/img/windows.png">&nbsp;<img src="${pageContext.request.contextPath}/static/img/mac.png">
                            <div>
                                <h5><span class="glyphicon glyphicon-tags"> 类别：</span></h5>
                                <h6>
                                    <a href="${pageContext.request.contextPath}/gamelist/kindShow?kind=${requestScope.map.goodConmmentsGames[1].kind}" style="color: yellow">${requestScope.map.goodConmmentsGames[1].kind}</a>
                                    <a href="#"><h4 style="color: red">点击查看详情</h4></a></span>
                                </h6>
                            </div>
                        </div>
                    </div>
                </button>
                <ul class="dropdown-menu col-md-4" style="left: 100%;top: -157px;height: 950px;background-color: #269abc">
                    <li><a href="${pageContext.request.contextPath}/game/selectGameById?id=${requestScope.map.goodConmmentsGames[1].id}" style="color: black"><h5><strong>${requestScope.map.goodConmmentsGames[1].name}</strong></h5></a></li>
                    <div class="list-group">
                        <a href="${pageContext.request.contextPath}/game/selectGameById?id=${requestScope.map.goodConmmentsGames[1].id}" class="list-group-item active">
                            <h4 class="list-group-item-heading">简介</h4>
                            <p class="list-group-item-text text-justify">${requestScope.map.goodConmmentsGames[1].introduce}</p>
                        </a>
                    </div>
                    <li class="text-center"><h5><strong>用户评论</strong></h5></li>
                    <ul class="list-group">
                        <li class="list-group-item list-group-item-success">永远都记得春节在冬泉谷看雪的感觉</li>
                        <li class="list-group-item list-group-item-info">MMORPG巅峰</li>
                        <li class="list-group-item list-group-item-warning">这是我的另一半生命。</li>
                        <li class="list-group-item list-group-item-danger">怀旧服真是让我梦回青春</li>
                    </ul>
                    <li class="text-center"><h5><strong>游戏截图</strong></h5></li>
                    <div>
                        <img src="${pageContext.request.contextPath}/static${requestScope.map.goodConmmentsGames[1].cutGamePath1}" width="100%">
                    </div>
                    <hr>
                    <div>
                        <img src="${pageContext.request.contextPath}/static${requestScope.map.goodConmmentsGames[1].cutGamePath2}" width="100%">
                    </div>
                </ul>
            </div>
            <div class=" col-md-9">
                <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="background-color: #23527c">
                    <div class="media">
                        <div class="media-left media-middle">
                            <a href="#">
                                <img class="media-object" src="${pageContext.request.contextPath}/static${requestScope.map.goodConmmentsGames[2].listGamePath}" alt="${pageContext.request.contextPath}/static.">
                            </a>
                        </div>
                        <div class="media-body">
                            <h3 class="media-heading" style="color: #a6e1ec">${requestScope.map.goodConmmentsGames[2].name}</h3>
                            <img src="${pageContext.request.contextPath}/static/img/windows.png">&nbsp;<img src="${pageContext.request.contextPath}/static/img/mac.png">
                            <div>
                                <h5><span class="glyphicon glyphicon-tags"> 类别：</span></h5>
                                <h6>
                                    <a href="${pageContext.request.contextPath}/gamelist/kindShow?kind=${requestScope.map.goodConmmentsGames[2].kind}" style="color: yellow">${requestScope.map.goodConmmentsGames[2].kind}</a>
                                    <a href="#"><h4 style="color: red">点击查看详情</h4></a></span>
                                </h6>
                            </div>
                        </div>
                    </div>
                </button>
                <ul class="dropdown-menu col-md-4" style="left: 100%;top: -314px;height: 950px;background-color: #269abc">
                    <li><a href="${pageContext.request.contextPath}/game/selectGameById?id=${requestScope.map.goodConmmentsGames[2].id}" style="color: black"><h5><strong>${requestScope.map.goodConmmentsGames[2].name}</strong></h5></a></li>
                    <div class="list-group">
                        <a href="${pageContext.request.contextPath}/game/selectGameById?id=${requestScope.map.goodConmmentsGames[2].id}" class="list-group-item active">
                            <h4 class="list-group-item-heading">简介</h4>
                            <p class="list-group-item-text text-justify">${requestScope.map.goodConmmentsGames[2].introduce}</p>
                        </a>
                    </div>
                    <li class="text-center"><h5><strong>用户评论</strong></h5></li>
                    <ul class="list-group">
                        <li class="list-group-item list-group-item-success">永远都记得春节在冬泉谷看雪的感觉</li>
                        <li class="list-group-item list-group-item-info">MMORPG巅峰</li>
                        <li class="list-group-item list-group-item-warning">这是我的另一半生命。</li>
                        <li class="list-group-item list-group-item-danger">怀旧服真是让我梦回青春</li>
                    </ul>
                    <li class="text-center"><h5><strong>游戏截图</strong></h5></li>
                    <div>
                        <img src="${pageContext.request.contextPath}/static${requestScope.map.goodConmmentsGames[2].cutGamePath1}" width="100%">
                    </div>
                    <hr>
                    <div>
                        <img src="${pageContext.request.contextPath}/static${requestScope.map.goodConmmentsGames[2].cutGamePath2}" width="100%">
                    </div>
                </ul>
            </div>
            <div class=" col-md-9">
                <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="background-color: #23527c">
                    <div class="media">
                        <div class="media-left media-middle">
                            <a href="#">
                                <img class="media-object" src="${pageContext.request.contextPath}/static${requestScope.map.goodConmmentsGames[3].listGamePath}" alt="${pageContext.request.contextPath}/static.">
                            </a>
                        </div>
                        <div class="media-body">
                            <h3 class="media-heading" style="color: #a6e1ec">${requestScope.map.goodConmmentsGames[3].name}</h3>
                            <img src="${pageContext.request.contextPath}/static/img/windows.png">&nbsp;<img src="${pageContext.request.contextPath}/static/img/mac.png">
                            <div>
                                <h5><span class="glyphicon glyphicon-tags"> 类别：</span></h5>
                                <h6>
                                    <a href="${pageContext.request.contextPath}/gamelist/kindShow?kind=${requestScope.map.goodConmmentsGames[3].kind}" style="color: yellow">${requestScope.map.goodConmmentsGames[3].kind}</a>
                                    <a href="#"><h4 style="color: red">点击查看详情</h4></a></span>
                                </h6>
                            </div>
                        </div>
                    </div>
                </button>
                <ul class="dropdown-menu col-md-4" style="left: 100%;top: -471px;height: 950px;background-color: #269abc">
                    <li><a href="${pageContext.request.contextPath}/game/selectGameById?id=${requestScope.map.goodConmmentsGames[3].id}" style="color: black"><h5><strong>${requestScope.map.goodConmmentsGames[3].name}</strong></h5></a></li>
                    <div class="list-group">
                        <a href="${pageContext.request.contextPath}/game/selectGameById?id=${requestScope.map.goodConmmentsGames[3].id}" class="list-group-item active">
                            <h4 class="list-group-item-heading">简介</h4>
                            <p class="list-group-item-text text-justify">${requestScope.map.goodConmmentsGames[3].introduce}</p>
                        </a>
                    </div>
                    <li class="text-center"><h5><strong>用户评论</strong></h5></li>
                    <ul class="list-group">
                        <li class="list-group-item list-group-item-success">永远都记得春节在冬泉谷看雪的感觉</li>
                        <li class="list-group-item list-group-item-info">MMORPG巅峰</li>
                        <li class="list-group-item list-group-item-warning">这是我的另一半生命。</li>
                        <li class="list-group-item list-group-item-danger">怀旧服真是让我梦回青春</li>
                    </ul>
                    <li class="text-center"><h5><strong>游戏截图</strong></h5></li>
                    <div>
                        <img src="${pageContext.request.contextPath}/static${requestScope.map.goodConmmentsGames[3].cutGamePath1}" width="100%">
                    </div>
                    <hr>
                    <div>
                        <img src="${pageContext.request.contextPath}/static${requestScope.map.goodConmmentsGames[3].cutGamePath2}" width="100%">
                    </div>
                </ul>
            </div>
            <div class=" col-md-9">
                <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="background-color: #23527c">
                    <div class="media">
                        <div class="media-left media-middle">
                            <a href="#">
                                <img class="media-object" src="${pageContext.request.contextPath}/static${requestScope.map.goodConmmentsGames[4].listGamePath}" alt="${pageContext.request.contextPath}/static.">
                            </a>
                        </div>
                        <div class="media-body">
                            <h3 class="media-heading" style="color: #a6e1ec">${requestScope.map.goodConmmentsGames[4].name}</h3>
                            <img src="${pageContext.request.contextPath}/static/img/windows.png">&nbsp;<img src="${pageContext.request.contextPath}/static/img/mac.png">
                            <div>
                                <h5><span class="glyphicon glyphicon-tags"> 类别：</span></h5>
                                <h6>
                                    <a href="${pageContext.request.contextPath}/gamelist/kindShow?kind=${requestScope.map.goodConmmentsGames[4].kind}" style="color: yellow">${requestScope.map.goodConmmentsGames[4].kind}</a>
                                    <a href="#"><h4 style="color: red">点击查看详情</h4></a></span>
                                </h6>
                            </div>
                        </div>
                    </div>
                </button>
                <ul class="dropdown-menu col-md-4" style="left: 100%;top: -628px;height: 950px;background-color: #269abc">
                    <li><a href="${pageContext.request.contextPath}/game/selectGameById?id=${requestScope.map.goodConmmentsGames[4].id}" style="color: black"><h5><strong>${requestScope.map.goodConmmentsGames[4].name}</strong></h5></a></li>
                    <div class="list-group">
                        <a href="${pageContext.request.contextPath}/game/selectGameById?id=${requestScope.map.goodConmmentsGames[4].id}" class="list-group-item active">
                            <h4 class="list-group-item-heading">简介</h4>
                            <p class="list-group-item-text text-justify">${requestScope.map.goodConmmentsGames[4].introduce}</p>
                        </a>
                    </div>
                    <li class="text-center"><h5><strong>用户评论</strong></h5></li>
                    <ul class="list-group">
                        <li class="list-group-item list-group-item-success">永远都记得春节在冬泉谷看雪的感觉</li>
                        <li class="list-group-item list-group-item-info">MMORPG巅峰</li>
                        <li class="list-group-item list-group-item-warning">这是我的另一半生命。</li>
                        <li class="list-group-item list-group-item-danger">怀旧服真是让我梦回青春</li>
                    </ul>
                    <li class="text-center"><h5><strong>游戏截图</strong></h5></li>
                    <div>
                        <img src="${pageContext.request.contextPath}/static${requestScope.map.goodConmmentsGames[4].cutGamePath1}" width="100%">
                    </div>
                    <hr>
                    <div>
                        <img src="${pageContext.request.contextPath}/static${requestScope.map.goodConmmentsGames[4].cutGamePath2}" width="100%">
                    </div>
                </ul>
            </div>
            <div class=" col-md-9">
                <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="background-color: #23527c">
                    <div class="media">
                        <div class="media-left media-middle">
                            <a href="#">
                                <img class="media-object" src="${pageContext.request.contextPath}/static${requestScope.map.goodConmmentsGames[5].listGamePath}" alt="${pageContext.request.contextPath}/static.">
                            </a>
                        </div>
                        <div class="media-body">
                            <h3 class="media-heading" style="color: #a6e1ec">${requestScope.map.goodConmmentsGames[5].name}</h3>
                            <img src="${pageContext.request.contextPath}/static/img/windows.png">&nbsp;<img src="${pageContext.request.contextPath}/static/img/mac.png">
                            <div>
                                <h5><span class="glyphicon glyphicon-tags"> 类别：</span></h5>
                                <h6>
                                    <a href="${pageContext.request.contextPath}/gamelist/kindShow?kind=${requestScope.map.goodConmmentsGames[5].kind}" style="color: yellow">${requestScope.map.goodConmmentsGames[5].kind}</a>
                                    <a href="#"><h4 style="color: red">点击查看详情</h4></a></span>
                                </h6>
                            </div>
                        </div>
                    </div>
                </button>
                <ul class="dropdown-menu col-md-4" style="left: 100%;top: -785px;height: 950px;background-color: #269abc">
                    <li><a href="${pageContext.request.contextPath}/game/selectGameById?id=${requestScope.map.goodConmmentsGames[5].id}" style="color: black"><h5><strong>${requestScope.map.goodConmmentsGames[5].name}</strong></h5></a></li>
                    <div class="list-group">
                        <a href="${pageContext.request.contextPath}/game/selectGameById?id=${requestScope.map.goodConmmentsGames[5].id}" class="list-group-item active">
                            <h4 class="list-group-item-heading">简介</h4>
                            <p class="list-group-item-text text-justify">${requestScope.map.goodConmmentsGames[5].introduce}</p>
                        </a>
                    </div>
                    <li class="text-center"><h5><strong>用户评论</strong></h5></li>
                    <ul class="list-group">
                        <li class="list-group-item list-group-item-success">永远都记得春节在冬泉谷看雪的感觉</li>
                        <li class="list-group-item list-group-item-info">MMORPG巅峰</li>
                        <li class="list-group-item list-group-item-warning">这是我的另一半生命。</li>
                        <li class="list-group-item list-group-item-danger">怀旧服真是让我梦回青春</li>
                    </ul>
                    <li class="text-center"><h5><strong>游戏截图</strong></h5></li>
                    <div>
                        <img src="${pageContext.request.contextPath}/static${requestScope.map.goodConmmentsGames[5].cutGamePath1}" width="100%">
                    </div>
                    <hr>
                    <div>
                        <img src="${pageContext.request.contextPath}/static${requestScope.map.goodConmmentsGames[5].cutGamePath2}" width="100%">
                    </div>
                </ul>
            </div>
        </div>

    </div>
</div>

<div class="htmleaf-container" style="background-color: #122b40">
    <div class="demo" >
        <div class="container">
            <div>
                <h3 style="color: #ffffff">&nbsp;&nbsp;<span class="glyphicon glyphicon-book">&nbsp;精选文章</span></h3>
            </div>
            <div class="row">
                <div class="col-md-12" style="padding: 1em 0;">
                    <div id="news-slider" class="owl-carousel">
                        <div class="post-slide">
                            <div class="post-img">
                                <a href="#"><img src="${pageContext.request.contextPath}/static/jsp/article/img/img-1.jpg" alt=""></a>
                            </div>
                            <div class="post-content">
                                <h3 class="post-title"><a href="#">Latest News Post</a></h3>
                                <p>author</p>
                                <p class="post-description">
                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec nec elementum mauris. Praesent vehicula gravida dolor, ac efficitur sem sagittis.
                                </p>
                                <ul class="post-bar">
                                    <li><i class="fa fa-calendar"></i> 2016-7-28</li>
                                    <li>
                                        <i class="fa fa-folder"></i>
                                        <a href="#">Mockup</a>
                                    </li>
                                </ul>
                                <a href="#" class="read-more">read more</a>
                            </div>
                        </div>

                        <div class="post-slide">
                            <div class="post-img">
                                <a href="#"><img src="${pageContext.request.contextPath}/static/jsp/article/img/img-2.jpg" alt=""></a>
                            </div>
                            <div class="post-content">
                                <h3 class="post-title"><a href="#">Latest News Post</a></h3>
                                <p>author</p>
                                <p class="post-description">
                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec nec elementum mauris. Praesent vehicula gravida dolor, ac efficitur sem sagittis.
                                </p>
                                <ul class="post-bar">
                                    <li><i class="fa fa-calendar"></i> 2016-7-29</li>
                                    <li>
                                        <i class="fa fa-folder"></i>
                                        <a href="#">Mockup</a>
                                    </li>
                                </ul>
                                <a href="#" class="read-more">read more</a>
                            </div>
                        </div>

                        <div class="post-slide">
                            <div class="post-img">
                                <a href="#"><img src="${pageContext.request.contextPath}/static/jsp/article/img/img-3.jpg" alt=""></a>
                            </div>
                            <div class="post-content">
                                <h3 class="post-title"><a href="#">Latest News Post</a></h3>
                                <p>author</p>
                                <p class="post-description">
                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec nec elementum mauris. Praesent vehicula gravida dolor, ac efficitur sem sagittis.
                                </p>
                                <ul class="post-bar">
                                    <li><i class="fa fa-calendar"></i> 2016-7-29</li>
                                    <li>
                                        <i class="fa fa-folder"></i>
                                        <a href="#">Mockup</a>
                                    </li>
                                </ul>
                                <a href="#" class="read-more">read more</a>
                            </div>
                        </div>

                        <div class="post-slide">
                            <div class="post-img">
                                <a href="#"><img src="${pageContext.request.contextPath}/static/jsp/article/img/img-4.jpg" alt=""></a>
                            </div>
                            <div class="post-content">
                                <h3 class="post-title"><a href="#">Latest News Post</a></h3>
                                <p>author</p>
                                <p class="post-description">
                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec nec elementum mauris. Praesent vehicula gravida dolor, ac efficitur sem sagittis.
                                </p>
                                <ul class="post-bar">
                                    <li><i class="fa fa-calendar"></i> 2016-7-29</li>
                                    <li>
                                        <i class="fa fa-folder"></i>
                                        <a href="#">Mockup</a>
                                    </li>
                                </ul>
                                <a href="#" class="read-more">read more</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="bodyCon08" style="background-color: black">
    <div class="students">
        <div id="four_flash">
            <h3 style="color: #ffffff">&nbsp;&nbsp;<span class="glyphicon glyphicon-user">&nbsp;特别鸣谢</span></h3>
            <div class="flashBg">
                <ul class="mobile">
                    <li>
                        <img src="${pageContext.request.contextPath}/static/jsp/thanks/images/tyc.jpg" />
                        <center><dd>桃胤橙</dd></center>
                        <p>参与测试</p>
                    </li>
                    <li>
                        <img src="${pageContext.request.contextPath}/static/jsp/thanks/images/mk.jpg" />
                        <center><dd>马奎</dd></center>
                        <p>参与测试</p>
                    </li>
                    <li>
                        <img src="${pageContext.request.contextPath}/static/jsp/thanks/images/fxy.jpg" />
                        <center><dd>风象羊</dd></center>
                        <p>参与测试</p>
                    </li>
                    <li>
                        <img src="${pageContext.request.contextPath}/static/jsp/thanks/images/lxy.jpg" />
                        <center><dd>李星宇</dd></center>
                        <p>参与测试</p>
                    </li>
                    <li>
                        <img src="${pageContext.request.contextPath}/static/jsp/thanks/images/hxs.jpg" />
                        <center><dd>胡消栓</dd></center>
                        <p>参与测试</p>
                    </li>
                    <li>
                        <img src="${pageContext.request.contextPath}/static/jsp/thanks/images/fxy.jpg" />
                        <center><dd>于同学</dd></center>
                        <p>参与测试</p>
                    </li>
                </ul>
            </div>
            <div class="but_left"><img src="${pageContext.request.contextPath}/static/jsp/thanks/images/qianxleft.png" /></div>
            <div class="but_right"><img src="${pageContext.request.contextPath}/static/jsp/thanks/images/qianxr.png" /></div>
        </div>
    </div>
</div>

<div class="product-section product-features">
    <div class="product-wrapper">
        <div class="product-body swiper-container">
            <h3 style="color: #ffffff">&nbsp;&nbsp;<span class="glyphicon glyphicon-road">&nbsp;发展历史</span></h3>
            <ul class="features-slide swiper-wrapper">
                <li class="features-item swiper-slide">
                    <h3>2019-01-30</h3>
                    <i></i> <a class="features-info">
                    <p class="features-info-i"></p>
                    <p class="features-info-s"> 项目初步完成规划和立项 </p>
                </a> </li>
                <li class="features-item swiper-slide">
                    <h3>2019-02-15</h3>
                    <i></i> <a class="features-info">
                    <p class="features-info-i"></p>
                    <p class="features-info-s"> 最初版本功能敲定并开始技术选型 </p>
                </a> </li>
                <li class="features-item swiper-slide">
                    <h3>2019-02-20</h3>
                    <i></i> <a class="features-info">
                    <p class="features-info-i"></p>
                    <p class="features-info-s"> 项目正式进入开发阶段，同期开始UI设计 </p>
                </a> </li>
                <li class="features-item swiper-slide">
                    <h3>2019-04-20</h3>
                    <i></i> <a class="features-info">
                    <p class="features-info-i"></p>
                    <p class="features-info-s"> 项目0.1版本开发完成并进入测试阶段 </p>
                </a> </li>
                <li class="features-item swiper-slide">
                    <h3>2019-05-30</h3>
                    <i></i> <a class="features-info">
                    <p class="features-info-i"></p>
                    <p class="features-info-s"> 项目正式开放注册使用 </p>
                </a> </li>
                <li class="features-item swiper-slide">
                    <h3>2019-06-25</h3>
                    <i></i> <a class="features-info">
                    <p class="features-info-i"></p>
                    <p class="features-info-s"> 新增聊天室功能 </p>
                </a> </li>
                <li class="features-item swiper-slide">
                    <h3>2019-07-10</h3>
                    <i></i> <a class="features-info">
                    <p class="features-info-i"></p>
                    <p class="features-info-s"> 后台新增用户数据可视化统计 </p>
                </a> </li>
                <li class="features-item swiper-slide">
                    <h3>2019-08-15</h3>
                    <i></i> <a class="features-info">
                    <p class="features-info-i"></p>
                    <p class="features-info-s"> 客服功能正式上线，增加评论审核 </p>
                </a> </li>
                <li class="features-item swiper-slide">
                    <h3>2019-09-02</h3>
                    <i></i> <a class="features-info">
                    <p class="features-info-i"></p>
                    <p class="features-info-s"> 新增文章板块，支持用户上传自己的文章 </p>
                </a> </li>
                <li class="features-item swiper-slide dark">
                    <h3>即将上线</h3>
                    <i></i> <a class="features-info">
                    <p class="features-info-i"></p>
                    <p class="features-info-s"> 移动模块，新闻模块 </p>
                </a> </li>
            </ul>
        </div>
        <div class="swiper-button-prev"></div>
        <div class="swiper-button-next swiper-button-disabled"></div>
    </div>
</div>

<div class="container-fluid" style="height: 240px;background-color: black">
    <h3 class="text-center"><span style="color: #2aabd2">————————————————————————查看更多内容?  ————————————————————————</span></h3>
    <br>
    <h4 class="text-center" style="color: snow">登录查看更多推荐</h4>
    <div style="text-align:center">
        <br>
        <a href="#"><button class="btn btn-success">登录</button></a>
    </div>
    <br>
    <h4 class="text-center" style="color: snow">或者<a href="#" style="color: orangered">注册</a>并免费加入中文游戏网</h4>
</div>

<!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
<!--<script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>-->
<!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/jsp/article/js/owl.carousel.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/jsp/thanks/js/thank.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/jsp/about/js/about.js"></script>
</body>
</html>