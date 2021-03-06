<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>会员中心</title>

    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.staticfile.org/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <link href="${pageContext.request.contextPath}/css/member/center.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/member/msg.css" rel="stylesheet">
</head>
<body>
<nav class="navbar navbar-default" role="navigation">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="${pageContext.request.contextPath}/member/logincenter">多店铺分销管理系统——会员端</a>
        </div>
        <ul class="nav navbar-nav navbar-right">
            <li><a href="${pageContext.request.contextPath}/message/membermsg"><span class="glyphicon glyphicon-envelope"></span>消息<div class="nav-counter" id="nav-counter">${sessionScope.Msgnumber}</div></a></li>
            <li><a href="${pageContext.request.contextPath}/member/logincenter"><span class="glyphicon glyphicon-user"></span> ${sessionScope.Name}</a></li>
            <li><a href="${pageContext.request.contextPath}/member/loginout"><span class="glyphicon glyphicon-log-out"></span> 注销</a></li>
        </ul>
    </div>
</nav>

<c:forEach items="${list}" var="member">

<div class="col-lg-1" id="leftnav">
    <ul class="nav nav-pills nav-stacked">
        <li role="presentation"><a href="${pageContext.request.contextPath}/member/logincenter">
            <div>
                <img src="${pageContext.request.contextPath}/image/admin/corelevel.png" alt="个人中心">个人中心
            </div>
        </a>
        </li>
        <li role="presentation">
            <a href="${pageContext.request.contextPath}/member/findci?memberId=${sessionScope.MemberId}">
                <div>
                    <img src="${pageContext.request.contextPath}/image/admin/salesadd.png" alt="修改信息">修改信息
                </div>
            </a>
        </li>
        <li role="presentation">
            <a href="${pageContext.request.contextPath}/member/findcp?memberId=${sessionScope.MemberId}">
                <div>
                    <img src="${pageContext.request.contextPath}/image/admin/salesadd.png" alt="修改密码">修改密码
                </div>
            </a>
        </li>
        <li role="presentation">
            <a href="${pageContext.request.contextPath}/message/membermsg">
                <div>
                    <img src="${pageContext.request.contextPath}/image/admin/pushquery.png" alt="消息管理">消息管理
                </div>
            </a>
        </li>
    </ul>
</div>

<table class="table table-bordered">
    <tr>
        <td>会员姓名：</td>
        <td>${member.name}</td>
        <td>年龄：</td>
        <td>${member.age}</td>
        <td>性别：</td>
        <td>${member.sex}</td>
    </tr>
    <tr>
        <td>地址：</td>
        <td colspan="3">${member.address}</td>
        <td>电话：</td>
        <td>${member.phone}</td>
    </tr>
    <tr>
        <td>店铺名字：</td>
        <td>${member.administratorId}</td>
        <td>店铺积分：</td>
        <td>${member.core}</td>
        <td>会员等级：</td>
        <td>${member.level}</td>
    </tr>
</table>
</c:forEach>

</body>
<script>
    var n = ${sessionScope.Msgnumber};
    if (n==0){
        $('#nav-counter').hide();
    }else {
        $('#nav-counter').show();
    }
</script>
</html>
