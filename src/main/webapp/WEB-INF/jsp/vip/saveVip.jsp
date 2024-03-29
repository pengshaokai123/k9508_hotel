<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<!--http://localhost:8080/-->
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<head>
    <!--引用基础路径-->
    <base href="<%=basePath%>"/>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>会员信息添加页面</title>
    <!--引入layui的样式文件-->
    <link rel="stylesheet" href="lib/layui/css/layui.css">
    <!--引入layui的js文件-->
    <script src="lib/layui/layui.js"></script>
    <style type="text/css">
        .layui-form-item{
            margin-top: 32px;
        }
    </style>
</head>
<body>
    <fieldset class="layui-elem-field layui-field-title">
        <legend>VIP会员信息添加</legend>
    </fieldset>
    <form class="layui-form layui-form-pane" action="">
        <div class="layui-form-item">
            <label class="layui-form-label">身份证号：</label>
            <div class="layui-input-inline" style="width: 300px;">
                <input type="text" name="idcard" id="idcard" lay-verify="required|identity" placeholder="请输入身份证号" autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <div class="layui-inline">
                <label class="layui-form-label">客人姓名：</label>
                <div class="layui-input-inline" style="width: 300px;">
                    <input type="text" name="customerName" lay-verify="required" placeholder="请输入客人姓名" autocomplete="off" class="layui-input">
                </div>
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">会员卡号：</label>
            <div class="layui-input-inline" style="width: 300px;">
                <input type="text"  name="vipNum" id="vipNum" placeholder="自动生成会员卡号" autocomplete="off" class="layui-input" disabled>
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">联系方式：</label>
            <div class="layui-input-inline" style="width: 300px;">
                <input type="text" id="phone" name="phone" placeholder="请输入联系方式" lay-verify="required|phone" autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">会员类型：</label>
            <div class="layui-input-inline" style="width: 300px;">
                <select name="vipRate" lay-filter="vipRate" lay-verify="required">
                    <option value="">---请选择会员类型---</option>
                    <option value="0.9">普通会员</option>
                    <option value="0.8">超级会员</option>
                </select>
            </div>
        </div>
        <div class="layui-form-item">
            <div class="layui-inline">
                <label class="layui-form-label">选择性别：</label>
                <div class="layui-input-block">
                    <input type="radio" name="gender" value="1" title="男" checked="checked"/>
                    <input type="radio" name="gender" value="0" title="女"/>
                    <input type="radio" name="gender" value="2" title="未识别" disabled="">
                </div>
            </div>
        </div>
        <div class="layui-form-item" style="margin-left: 100px;margin-top: 40px;">
            <button class="layui-btn" lay-submit="" lay-filter="demo2">确认添加</button>
            <button type="reset" class="layui-btn layui-btn-primary">重置</button>
        </div>
    </form>
</body>
    <!--引入自定义的js文件-->
    <script src="js/saveVip.js"></script>
</html>
