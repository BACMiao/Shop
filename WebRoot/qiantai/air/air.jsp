<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false" %> 
<%
String lujing = "http://localhost:8080";
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>纸飞机 BeaT1.0</title>
<link href="<%=lujing %>/qiantai/style/main.css" rel="stylesheet" type="text/css" />
<link href="http://libs.useso.com/js/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="css/main.css">
<link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css'>
<link rel="stylesheet" href="css/flyaway.min.css">
<meta http-equiv="pragma" content="no-cache"/>
<meta http-equiv="cache-control" content="no-cache"/>
<meta http-equiv="expires" content="0"/>    
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3"/>
<meta http-equiv="description" content="This is my page"/>
<link href="<%=lujing %>/css/Common.css" rel="stylesheet" type="text/css" />
<link href="<%=lujing %>/css/sitegeneric08.css" rel="stylesheet" type="text/css" />
<script language="JavaScript" src="<%=path %>/js/public.js" type="text/javascript"></script>
<script language="JavaScript" type="text/javascript"></script>
<script type="text/javascript" src="<%=lujing %>/qiantai/js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="<%=lujing %>/qiantai/js/jquery-imgslideshow.js"></script>
<script type="text/javascript" src="<%=lujing %>/qiantai/js/ks-switch.js"></script>
<script type="text/javascript" src="<%=lujing %>/qiantia/js/lib.js"></script>
<script src="js/jquery-2.1.1.min.js" type="text/javascript"></script>
<script src="http://libs.useso.com/js/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/flyaway.js"></script>

</head>

<body>
	<div id="s_hdw">
	
		<div id="s_tbar">
			<div class="s_hd">
				<div class="tbar_lft">欢迎您：<s:property value="#session.user.userName"/> 这里是集大纸飞机！
                    <a href="<%=path %>/userLogout.action">安全退出</a></div>
				<div class="tbar_rgt">
					<ul>
                        <li class="first"><a href="#" onClick="myOrder();return false;">我的订单</a></li>
                        <li><a href="#" onClick="myXinxi()">我的信息</a></li>
                        <li><a href="#" onClick="GoodsQuery();return false;">我的商品</a></li>
<script type="text/javascript">
//收藏本站 www.baidu.com//
function AddFavorite(sTitle,sURL) 
{ 
try 
{ 
window.external.addFavorite(sURL, sTitle); 
} 
catch (e) 
{ 
try 
{ 
window.sidebar.addPanel(sTitle, sURL, ""); 
} 
catch (e) 
{ 
alert("加入收藏失败，请使用Ctrl+D进行添加"); 
} 
} 
}

function myXinxi()
{
    <s:if test="#session.user==null">
    alert("请先登录");
    </s:if>

    <s:else>
    var url="<%=path %>/qiantai/userinfo/userXinxi.jsp";
    var n="";
    var w="480px";
    var h="500px";
    var s="resizable:no;help:no;status:no;scroll:yes";
    openWin(url,n,w,h,s);
    </s:else>
}
function myCart()
{
    <s:if test="#session.user==null">
    alert("请先登录");
    </s:if>

    <s:else>
    var s="<%=path %>/myCart.action";
    window.location.href=s;
    </s:else>
}

function myOrder()
{
    <s:if test="#session.user==null">
    alert("请先登录");
    </s:if>

    <s:else>
    var s="<%=path %>/myOrder.action";
    document.location.href=s;
    </s:else>
}

function sellGoods()
{
    <s:if test="#session.user==null">
    alert("请先登录");
    </s:if>

    <s:else>
    var s="<%=path %>/qiantai/goods/goodsAdd.jsp";
    document.location.href=s;
    </s:else>
}

function liuyanAll()
{
    <s:if test="#session.user==null">
    alert("请先登录");
    </s:if>

    <s:else>
    var url="<%=path %>/liuyanAll.action";
    window.open(url,"_blank");
    </s:else>
}

function catchPlane()
{
    <s:if test="#session.user==null">
    alert("请先登录");
    </s:if>

    <s:else>
    var url="<%=path %>/goods_catch.action";
    window.location.href=url;
    </s:else>
}

function GoodsQuery()
{
    <s:if test="#session.user==null">
    alert("请先登录");
    </s:if>

    <s:else>
    var url="<%=path %>/goodsManaByUser.action";
    window.location.href=url;
    </s:else>
}

function GoodsFly()
{
    <s:if test="#session.user==null">
    alert("请先登录");
    </s:if>

    <s:else>
    var url="<%=path %>/qiantai/air/air.jsp";
    window.location.href=url;
    </s:else>
}

function FlyPaper(goodsId)
{
    if(confirm('您确定起飞吗？'))
    {
    }
}


function gonggaoAll()
{
    var  url="<%=path %>/gonggaoAll.action";
    window.location.href=url;
}

var i=0;
function goodsSelect()
{
    if(i==0)
    {
        document.getElementById("indicator").style.display="block";
        goodsService.findAllCatelog(callback);
        i=1;
    }
}

function callback(data)
{
    document.getElementById("indicator").style.display="none";
    //document.getElementById("goodsCatelogId1").style.display="none";
    DWRUtil.addOptions("goodsId",data,"goodsId","goodsName");
    //document.getElementById("goodsCatelogId").style.display="block";
}
</script>
						<li><a href="javascript:void(0);" onclick="AddFavorite('百度','http://www.baidu.com')">加入收藏</a></li>
						<li class="s_tel_str">服务热线：</li>
						<li class="s_tel">123-456-789</li>
					</ul>
				</div>
			</div>
		</div><!--s_tbar end-->
		
		<div class="s_hd nav">
			<div id="s_logo"><a href="#"><img src="<%=lujing %>/qiantai/img/logo.jpg" border="0" /></a></div>
			<div id="s_nav">
				<ul>
                    <li class="first cur"><a href="index.action">首页</a><span></span></li>
                    <li><a href="#" onClick="sellGoods();return false;">发布商品</a><span></span></li>
                    <li class="last"><a href="#" onclick="GoodsFly();return false;">纸飞机</a><span></span></li>
                </ul>
			</div>
		</div><!--s_hd end-->
		
		<div class="mmenu">
			<div class="s_hd">
				<div id="s_search">
                    <form action="<%=path %>/goodsSearch.action" method="post"><input name="goodsName" type="text" class="search-input" /><input name="" type="image" src="<%=lujing %>/qiantai/img/btn_search.jpg" /></form>
				</div>
				
				<div id="s_keyword">
					<ul>
						<li><strong>热门搜索：</strong></li>
						<li><a href="#">你的高考我的纸飞机</a></li>
					</ul>
				</div>
				
				<div id="s_cart">
					<ul>
						<li class="nums"><a href="" id="s_cart_nums1">购物车： </a> <a href="" class="btn" id="s_cart_nums2"></a></li>
						<li class="checkout"><a href="#">去结算>></a></li>
					</ul>
				</div>
			
				<div id="s_cartbox" class="s_cartbox">您的购物车中暂无商品，赶快选择心爱的商品吧！</div>
			
				
			</div>
		</div><!--mmenu end-->
	
	</div><!--s_hdw end-->
	
	<div id="s_bdw">
		<div id="s_bd">
			<div class="cf" id="kuangback">
				<div id="i_col_lft" class="i_col_lft">
					<div class="categories"></div>
				</div>
                <!--*************-->
                <div class="container jumbotron">
	<h1 class="text-center"><i id="demo2" class="fa fa-paper-plane float shadow"></i> <a href="" id="airtitle">一扔倾心</a></h1>
	<br>
    <div style="margin:100px"></div>
	<section class="text-center block">
		<ul class="social list-inline">
			<li>
				<i id="demo" class="fa fa-paper-plane fa-3x float shadow"></i>
			</li>
		</ul>
	</section>
    <div style="margin:100px"></div>
	<section class="text-center block">
		<select class="select">
			<optgroup label="飞行模式">
				<option value="pushOut">推式飞行</option>
				<option value="popUp">弹式飞行</option>
			</optgroup>
		</select>
        <select name="goodsId" id="goodsId" onclick="goodsSelect()">
            <option value="0">--请选择商品--</option>
        </select>
		<button class="animate">扔飞机</button>
	</section>
    <td><tr></tr></td>
    <div align="center">
    <button class="take" >捡飞机</button>&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
    <button class="take">我的飞机</button>
    </div>
</div>
                
                
                <!--这商品框架DIV-->
               <div align="center" class="Wrapper">
<div id="MainCenter" align="center" class="MainCenter">
		 		 
</div>
</div>
				
				
			</div>
			
			
			
	
		<div id="s_ft">
			<div class="ft_suggest pt100">请帮助我们提高！<a href="#">商城首页意见反馈</a></div>
			<div class="ft_banners1 tac pbt10">
				<ul>
					<li><a href="#"><img src="<%=lujing %>/qiantai/img/ft_1.gif" border="0" /></a></li>
					<li><a href="#"><img src="<%=lujing %>/qiantai/img/ft_2.gif" border="0" /></a></li>
					<li><a href="#"><img src="<%=lujing %>/qiantai/img/ft_3.gif" border="0" /></a></li>
				</ul>
			</div>
            <div class="copyright tac pbt10">版权所有 炫酷纸飞机 版权所有 <a href="<%=path %>/login.jsp">纸飞机</a>首页 </div>
            <div class="ft_banners2 tac">
				<ul>
					<li><a href="#"><img src="<%=lujing %>/qiantai/img/u255.png" border="0" /></a></li>
					<li><a href="#"><img src="<%=lujing %>/qiantai/img/u257.png" border="0" /></a></li>
					<li><a href="#"><img src="<%=lujing %>/qiantai/img/u259.png" border="0" /></a></li>
					<li><a href="#"><img src="<%=lujing %>/qiantai/img/u261.png" border="0" /></a></li>
				</ul>
			</div>
		</div>
		
	</div><!--s_ftw end-->

</div>
</body>
</html>

