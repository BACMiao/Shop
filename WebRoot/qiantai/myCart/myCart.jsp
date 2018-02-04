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
<title>搜索结果</title>
<link href="<%=lujing %>/qiantai/style/main.css" rel="stylesheet" type="text/css" />
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
<script type="text/javascript">
var timeout	= 500;
var closetimer	= 0;
var ddmenuitem	= 0;

$(document).ready(function(){
   	$('.cat_item').mousemove(function(){
		$(this).addClass('cat_item_on');
	});
	$('.cat_item').mouseleave(function(){	
		$(this).removeClass('cat_item_on');
	});
	$('#slideshow').imgSlideShow({itemclass: 'i'})
	$("#slide-qg").switchTab({titCell: "dt a", trigger: "mouseover", delayTime: 0});
	$("#s_cart_nums1").hover(function(){
		mcancelclosetime();
		if(ddmenuitem) ddmenuitem.hide();
		ddmenuitem = $(document).find("#s_cartbox");
		ddmenuitem.fadeIn();
	},function(){
		mclosetime();
	});
	$("#s_cart_nums2").hover(function(){
		mcancelclosetime();
		if(ddmenuitem) ddmenuitem.hide();
		ddmenuitem = $(document).find("#s_cartbox");
		ddmenuitem.fadeIn();
	},function(){
		mclosetime();
	});
	$("#s_cartbox").hover(function(){
		mcancelclosetime();
	},function(){
		mclosetime();
	});
	 var $cur = 1;
    var $i = 4;
    var $len = $('.hot_list>ul>li').length;
    var $pages = Math.ceil($len / $i);
    var $w = $('.hotp').width()-66;
	
    var $showbox = $('.hot_list');
    
    var $pre = $('div.left_icon');
    var $next = $('div.rgt_icon');
 	
    $pre.click(function(){
        if (!$showbox.is(':animated')) { 
            if ($cur == 1) {   
                $showbox.animate({
                    left: '-=' + $w * ($pages - 1)
                }, 500); 
                $cur = $pages; 
            }
            else { 
                $showbox.animate({
                    left: '+=' + $w
                }, 500); 
                $cur--;
            }
           
        }
    });

    $next.click(function(){
        if (!$showbox.is(':animated')) { 
            if ($cur == $pages) {  
                $showbox.animate({
                    left: 0
                }, 500); 
                $cur = 1; 
            }
            else {
                $showbox.animate({
                    left: '-=' + $w
                }, 500);
                $cur++; 
            }
            
        }
    });
    
});
function mclose()
{
	if(ddmenuitem) ddmenuitem.hide();
}
function mclosetime()
{
	closetimer = window.setTimeout(mclose, timeout);
}
function mcancelclosetime()
{
	if(closetimer)
	{
		window.clearTimeout(closetimer);
		closetimer = null;
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
    window.open(url,"_blank");
    </s:else>
}

function GoodsQuery()
{
    <s:if test="#session.user==null">
    alert("请先登录");
    </s:if>

    <s:else>
    var url="<%=path %>/goodsManaByUser.action";
    document.location.href=url;
    </s:else>
}


function gonggaoAll()
{
    var  url="<%=path %>/gonggaoAll.action";
    window.location.href=url;
}
</script>
<!--购物车检测-->
<script language="javascript">
            function modiNum(goodsId,quantity)
	        {
	            var r1= /^[0-9]*[1-9][0-9]*$/　　//正整数 
	            var val=r1.test(quantity); //str为你要判断的字符 执行返回结果 true 或 false
	            if(val==false)
	            {
	                alert("数量必须是数字,请重新输入");
	            }
	            else
	            {
	                document.getElementById("indicator1").style.display="block";
	                cartService.modiNum(goodsId,quantity,callback);
	            }
	        }
	        
	        function callback(data)
	        {
	            document.getElementById("indicator1").style.display="none";
	            document.location.reload(true);
	        }
	        
	        
	        function delGoodsFromCart(goodsId)
	        {
	            document.getElementById("indicator1").style.display="block";
	            cartService.delGoodsFromCart(goodsId,callback);
	        }
	        
	        function clearCart()
	        {
	            document.getElementById("indicator1").style.display="block";
	            cartService.clearCart(callback);
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
                window.open(url,"_blank");
                </s:else>
            }

            function GoodsQuery()
            {
                <s:if test="#session.user==null">
                alert("请先登录");
                </s:if>

                <s:else>
                var url="<%=path %>/goodsManaByUser.action";
                window.open(url,"_blank");
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


            function gonggaoAll()
            {
                var  url="<%=path %>/gonggaoAll.action";
                window.location.href=url;
            }
    </script>
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
                        <li><a href="javascript:window.external.AddFavorite('http://localhost:8080/', '集大纸飞机')">加入收藏</a></li>
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
						<li><a href="#">贝玲妃</a></li>
						<li><a href="#">SKII</a></li>
						<li><a href="#">阿芙</a></li>
						<li><a href="#">罗莱家纺</a></li>
						<li><a href="#">glasslock</a></li>
						<li><a href="#">翡翠</a></li>
						<li><a href="#">珍珠</a></li>
						<li><a href="#">银饰</a></li>
						<li><a href="#">机械表</a></li>
					</ul>
				</div>
				
				<div id="s_cart">
					<ul>
						<li class="nums"><a href="" id="s_cart_nums1">购物车：</a> <a href="" class="btn" id="s_cart_nums2"></a></li>
						<li class="checkout"><a href="#">去结算>></a></li>
					</ul>
				</div>
			
				<div id="s_cartbox" class="s_cartbox">您的购物车中暂无商品，赶快选择心爱的商品吧！</div>
			
				<div id="s_cats">
					<div class="cat_hd"><h3><a href="#">所有商品分类</a></h3></div>
					<div class="cat_bd" style="display:block;">
					<ul>
					<li class="cat_item">
						<h4 class="cat_tit"><a href="#" class="cat_tit_link">食品、饮料、酒水</a><span class="s_arrow">></span></h4>
						<div class="cat_cont">
							<div class="cat_cont_lft">
							<dl class="cf">
								<dt><a href="#">进口食品</a></dt>
								<dd>
									<ul>
										<li class="first"><a href="#">进口米</a></li>
										<li><a href="#">进口饼干糕点</a></li>
										<li><a href="#">进口冲饮</a></li>
										<li><a href="#">进口牛奶</a></li>
										<li><a href="#">进口薯片</a></li>
										<li><a href="#">进口矿泉水</a></li>
										<li><a href="#">进口柚子茶/奶茶</a></li>
										<li><a href="#">进口花果茶</a></li>
										<li><a href="#">进口肉干/鱼干</a></li>
										<li><a href="#" class="more">更多</a></li>
									</ul>
								</dd>
							</dl>
							
							<dl class="cf">
								<dt><a href="#">休闲零食</a></dt>
								<dd>
									<ul>
										<li class="first"><a href="#">薯片</a></li>
										<li><a href="#">爆米花</a></li>
										<li><a href="#">膨化食品</a></li>
										<li><a href="#">鸡鸭禽类</a></li>
										<li><a href="#">肉干</a></li>
										<li><a href="#">肉松</a></li>
										<li><a href="#">鱼干</a></li>
										<li><a href="#">海苔</a></li>
										<li><a href="#">蜜饯</a></li>
										<li><a href="#">果冻/ 布丁/龟苓膏</a></li>
										<li><a href="#">小食</a></li>
										<li><a href="#">坚果</a></li>
									</ul>
								</dd>
							</dl>
							
							<dl class="cf">
								<dt><a href="#">饮料</a></dt>
								<dd>
									<ul>
										<li class="first"><a href="#">碳酸饮料</a></li>
										<li><a href="#">果汁</a></li>
										<li><a href="#">运动/健康饮料</a></li>
										<li><a href="#">茶饮料</a></li>
										<li><a href="#">水</a></li>
										<li><a href="#">乳品</a></li>
										<li><a href="#">咖啡饮料</a></li>
									</ul>
								</dd>
							</dl>
							
							<dl class="cf">
								<dt><a href="#">酒</a></dt>
								<dd>
									<ul>
										<li class="first"><a href="#">啤酒</a></li>
										<li><a href="#">葡萄酒</a></li>
										<li><a href="#">白酒</a></li>
										<li><a href="#">黄酒</a></li>
										<li><a href="#">洋酒</a></li>
										<li><a href="#">滋补酒</a></li>
										<li><a href="#">日本酒</a></li>
										<li><a href="#">预调酒</a></li>
									</ul>
								</dd>
							</dl>
							
							<dl class="cf">
								<dt><a href="#">方便面/速食</a></dt>
								<dd>
									<ul>
										<li class="first"><a href="#">方便面</a></li>
										<li><a href="#">速食品</a></li>
									</ul>
								</dd>
							</dl>
						
							<dl class="cf">
								<dt><a href="#">粮油</a></dt>
								<dd>
									<ul>
										<li class="first"><a href="#">米/面粉</a></li>
										<li><a href="#">杂粮</a></li>
										<li><a href="#">食用油</a></li>
										<li><a href="#">挂面</a></li>
									</ul>
								</dd>
							</dl>
							
							<dl class="cf">
								<dt><a href="#">乳制品</a></dt>
								<dd>
									<ul>
										<li class="first"><a href="#">酸奶</a></li>
										<li><a href="#">纯牛奶</a></li>
										<li><a href="#">口味奶</a></li>
										<li><a href="#">功能奶</a></li>
										<li><a href="#">儿童奶</a></li>
										<li><a href="#">豆奶</a></li>
										<li><a href="#">新鲜低温奶</a></li>
									</ul>
								</dd>
							</dl>
							
							<dl class="cf">
								<dt><a href="#">咖啡</a></dt>
								<dd>
									<ul>
										<li class="first"><a href="#">咖啡冲饮</a></li>
										<li><a href="#">咖啡豆/粉</a></li>
										<li><a href="#">咖啡配套</a></li>
										<li><a href="#">咖啡礼盒</a></li>
									</ul>
								</dd>
							</dl>
							
							<dl class="cf">
								<dt><a href="#">冲饮</a></dt>
								<dd>
									<ul>
										<li class="first"><a href="#">奶粉</a></li>
										<li><a href="#">蜂蜜</a></li>
										<li><a href="#">麦片</a></li>
										<li><a href="#">奶茶</a></li>
										<li><a href="#">速溶</a></li>
									</ul>
								</dd>
							</dl>
							
							<dl class="cf">
								<dt><a href="#">饼干</a></dt>
								<dd>
									<ul>
										<li class="first"><a href="#">咸味饼干</a></li>
										<li><a href="#">甜味饼干</a></li>
										<li><a href="#">苏打饼干</a></li>
										<li><a href="#">夹心饼干</a></li>
										<li><a href="#">威化饼干</a></li>
										<li><a href="#">曲奇饼干</a></li>
									</ul>
								</dd>
							</dl>
							
							<dl class="cf">
								<dt><a href="#">进入该频道</a></dt>
								<dd></dd>
							</dl>

						</div>
						
						<div class="cat_cont_rgt">
							<dl>
								<dt>推荐品牌</dt>
								<dd>
									<ul>
										<li><a href="#">奥利奥</a></li>
										<li><a href="#">光明</a></li>
										<li><a href="#">金龙鱼</a></li>
										<li><a href="#">立顿</a></li>
										<li><a href="#">咏萄 Everwines</a></li>
										<li><a href="#">阿明</a></li>
										<li><a href="#">康师傅</a></li>
										<li><a href="#">蒙牛</a></li>
										<li><a href="#">伊利</a></li>
										<li><a href="#">可口可乐</a></li>
										<li><a href="#">雀巢</a></li>
										<li><a href="#">统一</a></li>
										<li><a href="#">福临门</a></li>
									</ul>	
								</dd>
							</dl>
							
							<dl>
								<dt>促销专题</dt>
								<dd>
									<ul>
										<li><a href="#">饼干糕点10.8元任选3</a></li>
										<li><a href="#">阳澄湖大闸蟹立省百元</a></li>
										<li><a href="#">清新水果季 全场上海</a></li>
									</ul>
								</dd>
							</dl>
						</div>
					</div>
				</li>
				<li class="cat_item">
					<h4 class="cat_tit"><a href="#" class="cat_tit_link">美容化妆、个人护理</a><span class="s_arrow">></span></h4>
					<div class="cat_cont">
						<div class="cat_cont_lft">
							<dl class="cf">
								<dt><a href="#">面部护肤</a></dt>
								<dd>
									<ul>
										<li class="first"><a href="#">洁面</a></li>
										<li><a href="#">柔肤水/爽肤水</a></li>
										<li><a href="#">乳液</a></li>
										<li><a href="#">面霜</a></li>
										<li><a href="#">精华</a></li>
										<li><a href="#">面膜</a></li>
										<li><a href="#">精油</a></li>
										<li><a href="#">美白</a></li>
										<li><a href="#">保湿</a></li>
										<li><a href="#">唇部</a></li>
										<li><a href="#">防晒</a></li>
										<li><a href="#">祛痘</a></li>
										<li><a href="#">喷雾</a></li>
										<li><a href="#">卸妆</a></li>
										<li><a href="#">护肤套装</a></li>
										<li><a href="#">晚霜</a></li>
										<li><a href="#">祛黑头</a></li>
									</ul>
								</dd>
							</dl>
					
							<dl class="cf">
								<dt><a href="#">男士护理</a></dt>
								<dd>
									<ul>
										<li class="first"><a href="#">男士洁面</a></li>
										<li><a href="#">男士护肤</a></li>
										<li><a href="#">男性洗液</a></li>
										<li><a href="#">洗发护发</a></li>
										<li><a href="#">沐浴露</a></li>
										<li><a href="#">剃须刀架/片</a></li>
										<li><a href="#">须后水</a></li>
									</ul>
								</dd>
							</dl>
							
							<dl class="cf">
								<dt><a href="#">眼部保养</a></dt>
								<dd>
									<ul>
										<li class="first"><a href="#">眼部精华</a></li>
										<li><a href="#">眼膜</a></li>
										<li><a href="#">眼部啫喱</a></li>
										<li><a href="#">眼霜</a></li>
										<li><a href="#">眼部卸妆液</a></li>
									</ul>
								</dd>
							</dl>
					
							<dl class="cf">
								<dt><a href="#">洗发护发</a></dt>
								<dd>
									<ul>
										<li class="first"><a href="#">去屑型洗发水</a></li>
										<li><a href="#">柔顺型洗发水</a></li>
										<li><a href="#">修复型洗发水</a></li>
										<li><a href="#">二合一洗发水</a></li>
										<li><a href="#">防脱型洗发水</a></li>
										<li><a href="#">滋润营养洗发水</a></li>
										<li><a href="#">深层洁净型洗发水</a></li>
										<li><a href="#">焗油洗发水/膏</a></li>
										<li><a href="#">护发/润发</a></li>
										<li><a href="#">洗护套装</a></li>
										<li><a href="#">定型</a></li>
										<li><a href="#" class="more">更多</a></li>
									</ul>
								</dd>
							</dl>
						
							<dl class="cf">
								<dt><a href="#">身体护理</a></dt>
								<dd>
									<ul>
										<li class="first"><a href="#">身体乳</a></li>
										<li><a href="#">足部护理</a></li>
										<li><a href="#">手部护理</a></li>
										<li><a href="#">美体塑身</a></li>
									</ul>
								</dd>
							</dl>
							
							<dl class="cf">
								<dt><a href="#">洗浴用品</a></dt>
								<dd>
									<ul>
										<li class="first"><a href="#">沐浴露</a></li>
										<li><a href="#">浴盐</a></li>
										<li><a href="#">香皂</a></li>
										<li><a href="#">洗手液</a></li>
										<li><a href="#">浴花沐浴手套</a></li>
										<li><a href="#">浴帽</a></li>
										<li><a href="#">沐浴套装</a></li>
									</ul>
								</dd>
							</dl>
							
							<dl class="cf">
								<dt><a href="#">女性护理</a></dt>
								<dd>
									<ul>
										<li class="first"><a href="#">促销装卫生巾</a></li>
										<li><a href="#">日用卫生巾</a></li>
										<li><a href="#">夜用卫生巾</a></li>
										<li><a href="#">护垫</a></li>
										<li><a href="#">女性洗液</a></li>
										<li><a href="#">女性湿巾</a></li>
									</ul>
								</dd>
							</dl>
							
							<dl class="cf">
								<dt><a href="#">口腔护理</a></dt>
								<dd>
									<ul>
										<li class="first"><a href="#">牙膏</a></li>
										<li><a href="#">牙刷</a></li>
										<li><a href="#">漱口水</a></li>
										<li><a href="#">牙线/牙签</a></li>
										<li><a href="#">口气清新剂</a></li>
										<li><a href="#">白牙素</a></li>
									</ul>
								</dd>
							</dl>
							
							<dl class="cf">
								<dt><a href="#">进入该频道</a></dt>
								<dd></dd>
							</dl>

						</div>
					
						<div class="cat_cont_rgt">
							<dl>
								<dt>推荐品牌</dt>
								<dd>
									<ul>
										<li><a href="#">玉兰油</a></li>
										<li><a href="#">资生堂</a></li>
										<li><a href="#">欧莱雅</a></li>
										<li><a href="#">相宜本草</a></li>
										<li><a href="#">潘婷</a></li>
										<li><a href="#">海飞丝</a></li>
										<li><a href="#">沙宣</a></li>
										<li><a href="#">肌研</a></li>
										<li><a href="#">曼秀雷敦</a></li>
										<li><a href="#">佳洁士</a></li>
										<li><a href="#">雅诗兰黛</a></li>
										<li><a href="#">护舒宝</a></li>
										<li><a href="#">妮维雅</a></li>
									</ul>
								</dd>
							</dl>
							
							<dl>
								<dt>促销专题</dt>
								<dd>
									<ul>
										<li><a href="#">资生堂史无前例买赠专</a></li>
										<li><a href="#">佳洁士满48元送乐扣茶</a></li>
										<li><a href="#">联合利华品牌联合促销</a></li>
										<li><a href="#">飘柔全场护发素85折</a></li>
									</ul>
								</dd>
							</dl>
						
						</div>
					</div>
				</li>
				
				<li class="cat_item">
					<h4 class="cat_tit"><a href="#" class="cat_tit_link">母婴食品、母婴用品</a><span class="s_arrow">></span></h4>
					<div class="cat_cont">
						<div class="cat_cont_lft">
							<dl class="cf">
								<dt><a href="#">奶粉系列</a></dt>
								<dd>
									<ul>
										<li class="first"><a href="#">奶粉特惠组合</a></li>
										<li><a href="#">妈妈奶粉</a></li>
										<li><a href="#">奶粉赠品</a></li>
										<li><a href="#">1段奶粉</a></li>
										<li><a href="#">2段奶粉</a></li>
										<li><a href="#">3段奶粉</a></li>
										<li><a href="#">4段奶粉</a></li>
										<li><a href="#">特殊配方奶粉</a></li>
									</ul>
								</dd>
							</dl>
							
							<dl class="cf">
								<dt><a href="#">辅食</a></dt>
								<dd>
									<ul>
										<li class="first"><a href="#">米粉</a></li>
										<li><a href="#">婴儿果汁</a></li>
										<li><a href="#">果/菜/肉泥</a></li>
										<li><a href="#">其它辅食</a></li>
										<li><a href="#">面条</a></li>
										<li><a href="#">饼干/磨牙棒</a></li>
										<li><a href="#">果粉/菜粉/肉粉</a></li>
										<li><a href="#">婴儿肉松</a></li>
										<li><a href="#">营养粥</a></li>
										<li><a href="#">婴儿饮料</a></li>
										<li><a href="#">婴幼儿糖果</a></li>
										<li><a href="#">婴儿食用油</a></li>
										<li><a href="#">辅食赠品</a></li>
									</ul>
								</dd>
							</dl>
						
							<dl class="cf">
								<dt><a href="#">母婴营养品</a></dt>
								<dd>
									<ul>
										<li class="first"><a href="#">鱼肝油</a></li>
										<li><a href="#">妈妈营养品</a></li>
										<li><a href="#">牛初乳</a></li>
										<li><a href="#">综合营养素</a></li>
										<li><a href="#">钙类</a></li>
										<li><a href="#">清火类</a></li>
										<li><a href="#">幼儿益生菌</a></li>
										<li><a href="#">开胃类</a></li>
										<li><a href="#">葡萄糖</a></li>
										<li><a href="#">营养品赠品</a></li>
									</ul>
								</dd>
							</dl>
						
							<dl class="cf">
								<dt><a href="#">防尿用品</a></dt>
								<dd>
									<ul>
										<li class="first"><a href="#">纸尿裤</a></li>
										<li><a href="#">尿布/尿垫</a></li>
										<li><a href="#">婴儿湿巾</a></li>
										<li><a href="#">成人纸尿裤</a></li>
										<li><a href="#">纸尿裤赠品</a></li>
										<li><a href="#">婴儿纸巾</a></li>
									</ul>
								</dd>
							</dl>
						
							<dl class="cf">
								<dt><a href="#">哺育用品</a></dt>
								<dd>
									<ul>
										<li class="first"><a href="#">奶瓶/奶嘴</a></li>
										<li><a href="#">调理用具</a></li>
										<li><a href="#">安抚奶嘴/牙胶</a></li>
										<li><a href="#">奶刷/奶夹</a></li>
										<li><a href="#">吸奶器</a></li>
										<li><a href="#">清洁消毒</a></li>
										<li><a href="#">保温器具</a></li>
										<li><a href="#">婴儿用品收纳</a></li>
									</ul>
								</dd>
							</dl>
						
							<dl class="cf">
								<dt><a href="#">洗护</a></dt>
								<dd>
									<ul>
										<li class="first"><a href="#">洗发/沐浴</a></li>
										<li><a href="#">面霜/护肤</a></li>
										<li><a href="#">护臀/奶癣</a></li>
										<li><a href="#">爽身/防痱</a></li>
										<li><a href="#">防晒/清凉液</a></li>
										<li><a href="#">护唇/护手</a></li>
										<li><a href="#">婴儿洗护套装</a></li>
										<li><a href="#">洗护赠品</a></li>
									</ul>
								</dd>
							</dl>
						
							<dl class="cf">
								<dt><a href="#">健康安全</a></dt>
								<dd>
									<ul>
										<li class="first"><a href="#">安全防护</a></li>
										<li><a href="#">护理/测量用具</a></li>
										<li><a href="#">驱蚊/防虫</a></li>
										<li><a href="#">学步用品</a></li>
										<li><a href="#">婴儿理发护理</a></li>
										<li><a href="#">健康安全赠品</a></li>
										<li><a href="#">婴儿净水/空气净化</a></li>
									</ul>
								</dd>
							</dl>
						
							<dl class="cf">
								<dt><a href="#">进入该频道</a></dt>
								<dd></dd>
							</dl>
						
						</div>
						
						<div class="cat_cont_rgt">
							<dl>
								<dt>推荐品牌</dt>
								<dd>
									<ul>
										<li><a href="#">帮宝适</a></li>
										<li><a href="#">妈咪宝贝</a></li>
										<li><a href="#">好奇</a></li>
										<li><a href="#">雅培</a></li>
										<li><a href="#">多美滋</a></li>
										<li><a href="#">惠氏</a></li>
										<li><a href="#">美赞臣</a></li>
										<li><a href="#">美素</a></li>
										<li><a href="#">贝亲</a></li>
										<li><a href="#">亨氏</a></li>
										<li><a href="#">宝贝可爱</a></li>
										<li><a href="#">生命阳光</a></li>
									</ul>
								</dd>
							</dl>
							
							<dl>
								<dt>促销专题</dt>
								<dd>
									<ul>
										<li><a href="#">惠氏美赞臣满额立减再</a></li>
										<li><a href="#">帮宝适满100立减15</a></li>
										<li><a href="#">好奇特惠85折</a></li>
										<li><a href="#">亨氏奶粉买2送1</a></li>
									</ul>
								</dd>
							</dl>
						
						</div>
					</div>
				</li>
				
				<li class="cat_item">
					<h4 class="cat_tit"><a href="#" class="cat_tit_link">厨房用品、清洁用品</a><span class="s_arrow">></span></h4>
					<div class="cat_cont"><div class="cat_cont_lft">
					<dl class="cf"><dt><a href="#">锅具水壶</a></dt>
					<dd><ul><li class="first"><a href="#">汤锅</a></li>
					<li><a href="#">水壶</a></li>
					<li><a href="#">炒锅</a></li>
					<li><a href="#">奶锅</a></li>
					<li><a href="#">煎盘/平底锅</a></li>
					<li><a href="#">套装锅</a></li>
					<li><a href="#">蒸锅</a></li>
					<li><a href="#">压力锅</a></li>
					<li><a href="#">锅具配件</a></li>
					<li><a href="#">煲类</a></li>
					</ul></dd></dl><dl class="cf"><dt><a href="#">纸制品</a></dt>
					<dd><ul><li class="first"><a href="#">卷纸</a></li>
					<li><a href="#">盒装抽取式面纸</a></li>
					<li><a href="#">软包装抽取式面纸</a></li>
					<li><a href="#">厨房用纸</a></li>
					<li><a href="#">湿巾纸</a></li>
					<li><a href="#">手帕纸</a></li>
					<li><a href="#">商务用纸</a></li>
					<li><a href="#">平板纸</a></li>
					<li><a href="#">环保用纸</a></li>
					</ul></dd></dl><dl class="cf"><dt><a href="#">乐扣乐扣</a></dt>
					<dd><ul><li class="first"><a href="#">保鲜盒</a></li>
					<li><a href="#">玻璃制品</a></li>
					<li><a href="#">时尚生活</a></li>
					<li><a href="#">水壶/水杯</a></li>
					<li><a href="#">人气套装</a></li>
					</ul></dd></dl><dl class="cf"><dt><a href="#">清洁剂</a></dt>
					<dd><ul><li class="first"><a href="#">洗衣皂</a></li>
					<li><a href="#">洗衣粉</a></li>
					<li><a href="#">洗衣液</a></li>
					<li><a href="#">衣物护理</a></li>
					<li><a href="#">消毒液</a></li>
					<li><a href="#">洗洁精</a></li>
					<li><a href="#">家具护理剂</a></li>
					<li><a href="#">洁厕剂</a></li>
					<li><a href="#">鞋油/鞋刷</a></li>
					<li><a href="#">空气清新/香氛</a></li>
					<li><a href="#">水垢清洁</a></li>
					<li><a href="#">除甲醛</a></li>
					<li><a href="#">皮革护理剂</a></li>
					<li><a href="#">微波炉清洁剂</a></li>
					<li><a href="#">进口清洁剂</a></li>
					<li><a href="#">油污净</a></li>
					<li><a href="#">浴室清洁剂</a></li>
					<li><a href="#">驱蚊/驱虫</a></li>
					<li><a href="#">玻璃清洁剂</a></li>
					<li><a href="#">瓷砖清洁剂</a></li>
					<li><a href="#">地板清洁剂</a></li>
					<li><a href="#">空调清洁剂</a></li>
					<li><a href="#">管道清洁剂</a></li>
					<li><a href="#">洗衣机清洁剂</a></li>
					<li><a href="#">衣物除菌液</a></li>
					<li><a href="#">吸湿/防蛀</a></li>
					</ul></dd></dl><dl class="cf"><dt><a href="#">清洁用具</a></dt>
					<dd><ul><li class="first"><a href="#">百洁布/抹布/清洁球</a></li>
					<li><a href="#">拖把尘推及配件</a></li>
					<li><a href="#">扫帚/畚箕</a></li>
					<li><a href="#">护肤手套</a></li>
					<li><a href="#">垃圾桶</a></li>
					<li><a href="#">厨卫过滤网/地漏</a></li>
					<li><a href="#">其他清洁工具</a></li>
					<li><a href="#">脸盆</a></li>
					<li><a href="#">水桶</a></li>
					<li><a href="#">厨卫清洁刷子</a></li>
					<li><a href="#">纸巾盒</a></li>
					</ul></dd></dl><dl class="cf"><dt><a href="#">一次性用品</a></dt>
					<dd><ul><li class="first"><a href="#">垃圾袋</a></li>
					<li><a href="#">保鲜袋</a></li>
					<li><a href="#">一次性餐具</a></li>
					<li><a href="#">桌布/围裙</a></li>
					<li><a href="#">一次性鞋套/手套</a></li>
					<li><a href="#">牙签/杯托</a></li>
					<li><a href="#">保鲜膜</a></li>
					<li><a href="#">纸杯</a></li>
					<li><a href="#">塑杯</a></li>
					</ul></dd></dl><dl class="cf"><dt><a href="#">进入该频道</a></dt>
					<dd></dd></dl></div><div class="cat_cont_rgt"><dl><dt>推荐品牌</dt><dd><ul><li><a href="#">洁云</a></li><li><a href="#">乐扣乐扣</a></li><li><a href="#">金纺</a></li><li><a href="#">ASD 爱仕达</a></li><li><a href="#">蓝月亮</a></li><li><a href="#">滴露</a></li><li><a href="#">可爱可</a></li><li><a href="#">SIMELO</a></li><li><a href="#">清风</a></li><li><a href="#">Supor 苏泊尔</a></li><li><a href="#">妙洁</a></li><li><a href="#">奥妙</a></li></dd></dl><dl><dt>促销专题</dt><dd><ul><li><a href="#">白猫满38元送漂水</a></li><li><a href="#">厨房清洁全攻略</a></li><li><a href="#">洁云赠品大放送</a></li><li><a href="#">一次性用品抄底价</a></li></dd></dl> </div> </div></li>
					<li class="cat_item"><h4 class="cat_tit"><a href="#" class="cat_tit_link">手机通讯、数码电器</a><span class="s_arrow">></span></h4><div class="cat_cont"><div class="cat_cont_lft">
					<dl class="cf"><dt><a href="#">手机通讯 </a></dt>
					<dd><ul><li class="first"><a href="#">选号入网</a></li>
					<li><a href="#">手机</a></li>
					</ul></dd></dl><dl class="cf"><dt><a href="#">手机配件 </a></dt>
					<dd><ul><li class="first"><a href="#">手机电池</a></li>
					<li><a href="#">蓝牙耳机</a></li>
					<li><a href="#">手机充电器</a></li>
					<li><a href="#">手机保护套</a></li>
					<li><a href="#">手机贴膜</a></li>
					</ul></dd></dl><dl class="cf"><dt><a href="#">数码影像 </a></dt>
					<dd><ul><li class="first"><a href="#">单反相机 </a></li>
					<li><a href="#">单电/微单相机</a></li>
					<li><a href="#">单反镜头</a></li>
					<li><a href="#">闪光灯</a></li>
					<li><a href="#">便携相机</a></li>
					<li><a href="#">数码摄像机</a></li>
					</ul></dd></dl><dl class="cf"><dt><a href="#">数码影音 </a></dt>
					<dd><ul><li class="first"><a href="#">MP3/MP4</a></li>
					<li><a href="#">电玩周边 </a></li>
					<li><a href="#">数码相框</a></li>
					<li><a href="#">录音笔 </a></li>
					<li><a href="#">耳机/耳麦 </a></li>
					<li><a href="#">音箱</a></li>
					<li><a href="#">MID</a></li>
					<li><a href="#">电子书</a></li>
					<li><a href="#">电子词典</a></li>
					<li><a href="#">电子教育</a></li>
					<li><a href="#">手持电视</a></li>
					<li><a href="#">麦克风</a></li>
					<li><a href="#">专业音频</a></li>
					<li><a href="#">MP3/MP4配件</a></li>
					<li><a href="#">收录机</a></li>
					</ul></dd></dl><dl class="cf"><dt><a href="#">数码配件 </a></dt>
					<dd><ul><li class="first"><a href="#">存储卡</a></li>
					<li><a href="#">电池/充电器 </a></li>
					<li><a href="#">读卡器 </a></li>
					<li><a href="#">移动电源</a></li>
					<li><a href="#">数码包</a></li>
					<li><a href="#">摄影配件</a></li>
					<li><a href="#">闪光灯/手柄</a></li>
					<li><a href="#">三脚架/云台</a></li>
					<li><a href="#">清洁用品</a></li>
					<li><a href="#">数码贴膜</a></li>
					<li><a href="#">其它数码配件</a></li>
					</ul></dd></dl><dl class="cf"><dt><a href="#">车载电器 </a></dt>
					<dd><ul><li class="first"><a href="#">GPS导航仪</a></li>
					<li><a href="#">其它汽车用品</a></li>
					<li><a href="#">车载用品</a></li>
					</ul></dd></dl></div><div class="cat_cont_rgt"><dl><dt>推荐品牌</dt><dd><ul><li><a href="#">诺基亚</a></li><li><a href="#">佳能</a></li><li><a href="#">三星</a></li><li><a href="#">尼康</a></li><li><a href="#">HTC</a></li><li><a href="#">索尼</a></li><li><a href="#">Apple 苹果</a></li><li><a href="#">硕美科</a></li><li><a href="#">漫步者</a></li><li><a href="#">卡西欧</a></li><li><a href="#">铁三角</a></li><li><a href="#">爱国者</a></li></dd></dl><dl><dt>促销专题</dt><dd><ul><li><a href="#">三星、摩托罗拉手机专</a></li><li><a href="#">“清仓价”电纸书大放</a></li><li><a href="#">单反镜头随心配，搭出</a></li><li><a href="#">数码相机，跳楼价清仓</a></li></dd></dl> </div> </div></li>
					<li class="cat_item"><h4 class="cat_tit"><a href="#" class="cat_tit_link">大家电、生活电器</a><span class="s_arrow">></span></h4><div class="cat_cont"><div class="cat_cont_lft">
					<dl class="cf"><dt><a href="#">大家电 </a></dt>
					<dd><ul><li class="first"><a href="#">平板电视 </a></li>
					<li><a href="#">空调 </a></li>
					<li><a href="#">冰箱 </a></li>
					<li><a href="#">洗衣机 </a></li>
					</ul></dd></dl><dl class="cf"><dt><a href="#">影音视听 </a></dt>
					<dd><ul><li class="first"><a href="#">DVD播放机</a></li>
					<li><a href="#">高清播放器</a></li>
					<li><a href="#">家庭影院 </a></li>
					<li><a href="#">迷你音响 </a></li>
					</ul></dd></dl><dl class="cf"><dt><a href="#">厨房电器</a></dt>
					<dd><ul><li class="first"><a href="#">豆浆机</a></li>
					<li><a href="#">微波炉</a></li>
					<li><a href="#">电压力锅</a></li>
					<li><a href="#">电饭煲</a></li>
					<li><a href="#">电水壶/热水瓶</a></li>
					<li><a href="#">电磁炉</a></li>
					<li><a href="#">多用途锅</a></li>
					<li><a href="#">电饼铛/煎烤机</a></li>
					<li><a href="#">煮蛋器</a></li>
					<li><a href="#">酸奶机</a></li>
					<li><a href="#">面包机</a></li>
					<li><a href="#">咖啡机</a></li>
					<li><a href="#">电烤箱</a></li>
					<li><a href="#">果蔬解毒机</a></li>
					<li><a href="#">料理机/榨汁机</a></li>
					<li><a href="#">其它厨房电器</a></li>
					</ul></dd></dl><dl class="cf"><dt><a href="#">生活电器</a></dt>
					<dd><ul><li class="first"><a href="#">取暖电器</a></li>
					<li><a href="#">净化器</a></li>
					<li><a href="#">挂烫机</a></li>
					<li><a href="#">加湿器</a></li>
					<li><a href="#">吸尘器</a></li>
					<li><a href="#">电话机</a></li>
					<li><a href="#">饮水机</a></li>
					<li><a href="#">电熨斗</a></li>
					<li><a href="#">净水设备</a></li>
					<li><a href="#">其它生活电器</a></li>
					<li><a href="#">浴霸/排气扇</a></li>
					<li><a href="#">除湿机</a></li>
					<li><a href="#">电风扇/空调扇</a></li>
					</ul></dd></dl><dl class="cf"><dt><a href="#">个人护理 </a></dt>
					<dd><ul><li class="first"><a href="#">剃须刀 </a></li>
					<li><a href="#">剃/脱毛器 </a></li>
					<li><a href="#">口腔护理 </a></li>
					<li><a href="#">美容器</a></li>
					<li><a href="#">美发器</a></li>
					<li><a href="#">电 吹 风</a></li>
					<li><a href="#">其它个人护理 </a></li>
					</ul></dd></dl><dl class="cf"><dt><a href="#">电器附件 </a></dt>
					<dd><ul><li class="first"><a href="#">插座</a></li>
					<li><a href="#">电池</a></li>
					<li><a href="#">电视挂架/底座</a></li>
					<li><a href="#">线材/线缆 </a></li>
					<li><a href="#">万能遥控器</a></li>
					<li><a href="#">墙面开关</a></li>
					</ul></dd></dl></div><div class="cat_cont_rgt"><dl><dt>推荐品牌</dt><dd><ul><li><a href="#">飞利浦</a></li><li><a href="#">松下</a></li><li><a href="#">索尼</a></li><li><a href="#">夏普</a></li><li><a href="#">创维</a></li><li><a href="#">海尔</a></li><li><a href="#">海信</a></li><li><a href="#">TCL</a></li><li><a href="#">Midea美的</a></li><li><a href="#">Supor 苏泊尔</a></li><li><a href="#">格兰仕</a></li><li><a href="#">博朗</a></li><li><a href="#">九阳</a></li></dd></dl><dl><dt>促销专题</dt><dd><ul><li><a href="#">三大合资空调疯狂抢购</a></li><li><a href="#">冰洗直降，步步惊喜！</a></li><li><a href="#">液晶电视清仓大放价，</a></li><li><a href="#">小家电惠战十月，最低</a></li></dd></dl> </div> </div></li>
					<li class="cat_item"><h4 class="cat_tit"><a href="#" class="cat_tit_link">电脑,软件,办公用品</a><span class="s_arrow">></span></h4><div class="cat_cont"><div class="cat_cont_lft">
					<dl class="cf"><dt><a href="#">电脑整机</a></dt>
					<dd><ul><li class="first"><a href="#">笔记本电脑</a></li>
					<li><a href="#">上网本电脑</a></li>
					<li><a href="#">平板电脑</a></li>
					<li><a href="#">台式机</a></li>
					<li><a href="#">笔记本电脑包</a></li>
					<li><a href="#">iPad平板附件</a></li>
					<li><a href="#">周边配件</a></li>
					</ul></dd></dl><dl class="cf"><dt><a href="#">存储产品</a></dt>
					<dd><ul><li class="first"><a href="#">移动硬盘 </a></li>
					<li><a href="#">U盘</a></li>
					<li><a href="#">网络存储NAS</a></li>
					<li><a href="#">光驱</a></li>
					<li><a href="#">硬盘盒</a></li>
					</ul></dd></dl><dl class="cf"><dt><a href="#">外设产品</a></dt>
					<dd><ul><li class="first"><a href="#">显示器</a></li>
					<li><a href="#">键盘</a></li>
					<li><a href="#">鼠标</a></li>
					<li><a href="#">鼠标垫 </a></li>
					<li><a href="#">键鼠套装</a></li>
					<li><a href="#">摄像头</a></li>
					<li><a href="#">插座</a></li>
					<li><a href="#">线缆/HUB</a></li>
					<li><a href="#">电脑清洁</a></li>
					<li><a href="#">游戏设备</a></li>
					<li><a href="#">电视盒</a></li>
					<li><a href="#">UPS电源</a></li>
					<li><a href="#">电脑工具</a></li>
					<li><a href="#">手写板</a></li>
					<li><a href="#">耳麦</a></li>
					</ul></dd></dl><dl class="cf"><dt><a href="#">网络产品</a></dt>
					<dd><ul><li class="first"><a href="#">路由器</a></li>
					<li><a href="#">无线AP</a></li>
					<li><a href="#">调制解调器</a></li>
					<li><a href="#">网卡</a></li>
					<li><a href="#">3G上网</a></li>
					<li><a href="#">交换机</a></li>
					</ul></dd></dl><dl class="cf"><dt><a href="#">设备、耗材</a></dt>
					<dd><ul><li class="first"><a href="#">点钞机 </a></li>
					<li><a href="#">装订配件 </a></li>
					<li><a href="#">一体机 </a></li>
					<li><a href="#">传真机 </a></li>
					<li><a href="#">扫描仪 </a></li>
					<li><a href="#">复印机 </a></li>
					<li><a href="#">装订机 </a></li>
					<li><a href="#">投影机 </a></li>
					<li><a href="#">电子白板 </a></li>
					<li><a href="#">激光笔 </a></li>
					<li><a href="#">硒鼓 </a></li>
					<li><a href="#">墨盒 </a></li>
					<li><a href="#">墨粉 </a></li>
					<li><a href="#">色带 </a></li>
					<li><a href="#">刻录盘片 </a></li>
					<li><a href="#">打印机 </a></li>
					<li><a href="#">投影幕 </a></li>
					<li><a href="#">考勤机</a></li>
					<li><a href="#">会议电话 </a></li>
					<li><a href="#">扩音器 </a></li>
					<li><a href="#">手写板 </a></li>
					<li><a href="#">碎纸机</a></li>
					</ul></dd></dl><dl class="cf"><dt><a href="#">纸品、薄本 </a></dt>
					<dd><ul><li class="first"><a href="#">复印纸 </a></li>
					<li><a href="#">传真纸 </a></li>
					<li><a href="#">财务行政用品 </a></li>
					<li><a href="#">电脑打印纸 </a></li>
					<li><a href="#">照片相纸</a></li>
					<li><a href="#">日记本 </a></li>
					<li><a href="#">练习本 </a></li>
					<li><a href="#">便签本 </a></li>
					<li><a href="#">拍纸本 </a></li>
					<li><a href="#">商务记事本 </a></li>
					<li><a href="#">线圈本 </a></li>
					<li><a href="#">硬面本 </a></li>
					<li><a href="#">螺旋本 </a></li>
					<li><a href="#">活页本 </a></li>
					<li><a href="#">软面本 </a></li>
					<li><a href="#">胶装本 </a></li>
					<li><a href="#">缝线本 </a></li>
					</ul></dd></dl><dl class="cf"><dt><a href="#">书写、修正 </a></dt>
					<dd><ul><li class="first"><a href="#">圆珠笔 </a></li>
					<li><a href="#">中性笔 </a></li>
					<li><a href="#">签字笔 </a></li>
					<li><a href="#">铅笔/活动铅笔 </a></li>
					<li><a href="#">白板/马克笔 </a></li>
					<li><a href="#">记号笔 </a></li>
					<li><a href="#">笔芯 </a></li>
					<li><a href="#">修正用品 </a></li>
					<li><a href="#">削笔器 </a></li>
					<li><a href="#">钢笔 </a></li>
					<li><a href="#">墨水 </a></li>
					<li><a href="#">荧光笔 </a></li>
					<li><a href="#">油漆笔 </a></li>
					</ul></dd></dl><dl class="cf"><dt><a href="#">进入该频道</a></dt>
					<dd></dd></dl></div><div class="cat_cont_rgt"><dl><dt>推荐品牌</dt><dd><ul><li><a href="#">苹果</a></li><li><a href="#">索尼</a></li><li><a href="#">SAMSUNG 三星</a></li><li><a href="#">联想</a></li><li><a href="#">ThinkPad</a></li><li><a href="#">华硕</a></li><li><a href="#">纽曼</a></li><li><a href="#">金士顿</a></li><li><a href="#">得力</a></li><li><a href="#">易达</a></li><li><a href="#">惠普</a></li><li><a href="#">智高</a></li></dd></dl> </div> </div></li>
					<li class="cat_item"><h4 class="cat_tit"><a href="#" class="cat_tit_link">家居汽饰、箱包运动</a><span class="s_arrow">></span></h4><div class="cat_cont"><div class="cat_cont_lft">
					<dl class="cf"><dt><a href="#">床上用品</a></dt>
					<dd><ul><li class="first"><a href="#">床品套件</a></li>
					<li><a href="#">冬被</a></li>
					<li><a href="#">春秋被</a></li>
					<li><a href="#">夏凉被</a></li>
					<li><a href="#">床品单件</a></li>
					<li><a href="#">毯子/毛巾毯</a></li>
					<li><a href="#">枕头/枕芯</a></li>
					<li><a href="#">靠垫/坐垫</a></li>
					<li><a href="#">凉席/凉枕</a></li>
					<li><a href="#">蚊帐</a></li>
					<li><a href="#">LOVO生活馆</a></li>
					<li><a href="#">床垫</a></li>
					<li><a href="#">电热毯/电热垫</a></li>
					</ul></dd></dl><dl class="cf"><dt><a href="#">运动保健</a></dt>
					<dd><ul><li class="first"><a href="#">足浴盆及配件</a></li>
					<li><a href="#">按摩器件</a></li>
					<li><a href="#">体温/血压计</a></li>
					<li><a href="#">人体秤</a></li>
					<li><a href="#">拍类及配件</a></li>
					<li><a href="#">高尔夫</a></li>
					<li><a href="#">健身车/自行车</a></li>
					<li><a href="#">跑步机/踏步机</a></li>
					<li><a href="#">溜冰鞋/滑板及配件</a></li>
					<li><a href="#">球类及配件</a></li>
					<li><a href="#">健身配件</a></li>
					<li><a href="#">水上用具</a></li>
					<li><a href="#">防护配件</a></li>
					<li><a href="#">烧烤用品</a></li>
					<li><a href="#">户外野营用品</a></li>
					<li><a href="#">平安健康通卡</a></li>
					<li><a href="#">其他健身器材</a></li>
					<li><a href="#">磁力保健品</a></li>
					<li><a href="#">运动服装</a></li>
					<li><a href="#">渔具</a></li>
					<li><a href="#">飞镖</a></li>
					<li><a href="#">其它运动用品</a></li>
					<li><a href="#">瑜伽用品</a></li>
					</ul></dd></dl><dl class="cf"><dt><a href="#">家纺日用品</a></dt>
					<dd><ul><li class="first"><a href="#">毛巾</a></li>
					<li><a href="#">拖鞋</a></li>
					<li><a href="#">毛巾礼盒</a></li>
					<li><a href="#">浴衣</a></li>
					<li><a href="#">浴巾</a></li>
					<li><a href="#">台布</a></li>
					<li><a href="#">围裙/手套</a></li>
					</ul></dd></dl><dl class="cf"><dt><a href="#">生活日用品</a></dt>
					<dd><ul><li class="first"><a href="#">雨具/雨衣</a></li>
					<li><a href="#">粘钩及挂钩</a></li>
					<li><a href="#">热水袋</a></li>
					<li><a href="#">炭净化</a></li>
					<li><a href="#">墙面装饰</a></li>
					<li><a href="#">灭蚊灯/拍</a></li>
					<li><a href="#">暖宝宝</a></li>
					<li><a href="#">其他生活日用品</a></li>
					<li><a href="#">蜡烛</a></li>
					<li><a href="#">相册</a></li>
					<li><a href="#">窗帘</a></li>
					</ul></dd></dl><dl class="cf"><dt><a href="#">家具/灯具</a></dt>
					<dd><ul><li class="first"><a href="#">空间大师生活馆</a></li>
					<li><a href="#">桌椅</a></li>
					<li><a href="#">鞋架/鞋柜</a></li>
					<li><a href="#">衣橱/衣柜</a></li>
					<li><a href="#">电脑桌</a></li>
					<li><a href="#">儿童家具</a></li>
					<li><a href="#">创意吧</a></li>
					<li><a href="#">层架/层柜</a></li>
					<li><a href="#">照明灯具</a></li>
					<li><a href="#">地毯/地垫/挂毯</a></li>
					<li><a href="#">床垫</a></li>
					<li><a href="#">沙发</a></li>
					<li><a href="#">床</a></li>
					<li><a href="#">组合家具</a></li>
					<li><a href="#">好事达生活馆</a></li>
					</ul></dd></dl><dl class="cf"><dt><a href="#">进入该频道</a></dt>
					<dd></dd></dl></div><div class="cat_cont_rgt"><dl><dt>推荐品牌</dt><dd><ul><li><a href="#">小绵羊</a></li><li><a href="#">天堂伞</a></li><li><a href="#">空间大师</a></li><li><a href="#">大豪赛鲸</a></li><li><a href="#">外交官</a></li><li><a href="#">格雷特</a></li><li><a href="#">七匹狼</a></li><li><a href="#">瑞士军刀威戈Wenger</a></li><li><a href="#">红海棠</a></li><li><a href="#">洁丽雅</a></li><li><a href="#">华润家纺</a></li><li><a href="#">御灵珠宝</a></li><li><a href="#">安美驰</a></li></dd></dl><dl><dt>促销专题</dt><dd><ul><li><a href="#">床品套件99元起</a></li><li><a href="#">华润家纺买赠特促</a></li><li><a href="#">御灵珠宝登入1号店</a></li><li><a href="#">婚庆开始了</a></li></dd></dl> </div> </div></li>
					<li class="cat_item"><h4 class="cat_tit"><a href="#" class="cat_tit_link">玩具、图书音像</a><span class="s_arrow">></span></h4><div class="cat_cont"><div class="cat_cont_lft">
					<dl class="cf"><dt><a href="#">毛绒玩具</a></dt>
					<dd><ul><li class="first"><a href="#">毛绒玩偶</a></li>
					<li><a href="#">靠垫/抱枕</a></li>
					<li><a href="#">毛绒拖鞋</a></li>
					<li><a href="#">空调被</a></li>
					<li><a href="#">挂件吊饰</a></li>
					<li><a href="#">毛绒收纳</a></li>
					</ul></dd></dl><dl class="cf"><dt><a href="#">婴幼玩具</a></dt>
					<dd><ul><li class="first"><a href="#">早教益智</a></li>
					<li><a href="#">感官协调</a></li>
					<li><a href="#">健身玩具</a></li>
					<li><a href="#">声音玩具</a></li>
					<li><a href="#">推拉玩具</a></li>
					<li><a href="#">摇铃/床铃</a></li>
					<li><a href="#">婴儿泳池</a></li>
					<li><a href="#">游戏垫/游戏毯</a></li>
					<li><a href="#">学步玩具</a></li>
					<li><a href="#">洗澡玩具</a></li>
					<li><a href="#">牙胶</a></li>
					<li><a href="#">秋千/摇椅</a></li>
					<li><a href="#">婴儿纪念品</a></li>
					<li><a href="#">布书/布玩</a></li>
					<li><a href="#">音乐玩具</a></li>
					<li><a href="#">角色扮演</a></li>
					</ul></dd></dl><dl class="cf"><dt><a href="#">图书</a></dt>
					<dd><ul><li class="first"><a href="#">幼儿启蒙</a></li>
					<li><a href="#">儿童文学</a></li>
					<li><a href="#">手工游戏</a></li>
					<li><a href="#">科普/百科</a></li>
					<li><a href="#">儿童绘本</a></li>
					<li><a href="#">家庭教育</a></li>
					<li><a href="#">智力开发</a></li>
					<li><a href="#">传统文化</a></li>
					<li><a href="#">才艺课堂</a></li>
					<li><a href="#">入园准备</a></li>
					<li><a href="#">入学教育</a></li>
					<li><a href="#">立体图书</a></li>
					<li><a href="#">玩具书</a></li>
					<li><a href="#">卡通动漫</a></li>
					<li><a href="#">孕产育儿</a></li>
					<li><a href="#">文教</a></li>
					</ul></dd></dl><dl class="cf"><dt><a href="#">音像教育</a></dt>
					<dd><ul><li class="first"><a href="#">英语学习</a></li>
					<li><a href="#">幼儿与学前启蒙</a></li>
					<li><a href="#">卡通动画</a></li>
					</ul></dd></dl><dl class="cf"><dt><a href="#">积木/拼插玩具</a></dt>
					<dd><ul><li class="first"><a href="#">拼插积木</a></li>
					<li><a href="#">磁力棒</a></li>
					<li><a href="#">拼图</a></li>
					<li><a href="#">堆叠积木</a></li>
					</ul></dd></dl><dl class="cf"><dt><a href="#">运动户外</a></dt>
					<dd><ul><li class="first"><a href="#">体育玩具</a></li>
					<li><a href="#">充气玩具</a></li>
					<li><a href="#">游泳及沙滩玩具</a></li>
					<li><a href="#">户外玩具</a></li>
					</ul></dd></dl><dl class="cf"><dt><a href="#">娃娃玩具</a></dt>
					<dd><ul><li class="first"><a href="#">芭比娃娃</a></li>
					<li><a href="#">迪士尼公主</a></li>
					<li><a href="#">新奇娃娃</a></li>
					<li><a href="#">娃娃配件</a></li>
					<li><a href="#">民族娃娃</a></li>
					<li><a href="#">情侣娃娃</a></li>
					<li><a href="#">音乐娃娃</a></li>
					<li><a href="#">语音智能娃娃</a></li>
					<li><a href="#">小菠莉</a></li>
					</ul></dd></dl><dl class="cf"><dt><a href="#">进入该频道</a></dt>
					<dd></dd></dl></div><div class="cat_cont_rgt"><dl><dt>推荐品牌</dt><dd><ul><li><a href="#">皇室</a></li><li><a href="#">费雪</a></li><li><a href="#">乐高</a></li><li><a href="#">芭比</a></li><li><a href="#">孩之宝</a></li><li><a href="#">伊诗比蒂</a></li><li><a href="#">LALABABY</a></li><li><a href="#">蒲蒲兰绘本馆</a></li><li><a href="#">洪恩</a></li><li><a href="#">小企鹅</a></li><li><a href="#">乐乐趣</a></li><li><a href="#">毛毛仔</a></li></dd></dl><dl><dt>促销专题</dt><dd><ul><li><a href="#">300款玩具1折起售</a></li><li><a href="#">三大品牌遥控玩具特卖</a></li><li><a href="#">乐高超低价</a></li><li><a href="#">费雪 乐高 皇室联合让</a></li></dd></dl> </div> </div></li>
					<li class="cat_item"><h4 class="cat_tit"><a href="#" class="cat_tit_link">服装鞋帽</a><span class="s_arrow">></span></h4><div class="cat_cont"><div class="cat_cont_lft">
					<dl class="cf"><dt><a href="#">女装.</a></dt>
					<dd><ul><li class="first"><a href="#">女装T恤</a></li>
					<li><a href="#">女装Polo衫</a></li>
					<li><a href="#">女装针织衫/毛衫</a></li>
					<li><a href="#">女装衬衫</a></li>
					<li><a href="#">女装运动服装</a></li>
					<li><a href="#">女装卫衣</a></li>
					<li><a href="#">女装裙子</a></li>
					<li><a href="#">女装长裤</a></li>
					<li><a href="#">女装外套</a></li>
					<li><a href="#">情侣装</a></li>
					<li><a href="#">女装雪纺衫</a></li>
					</ul></dd></dl><dl class="cf"><dt><a href="#">男装.</a></dt>
					<dd><ul><li class="first"><a href="#">男装T恤</a></li>
					<li><a href="#">男装Polo衫</a></li>
					<li><a href="#">男装针织衫/毛衫</a></li>
					<li><a href="#">男装衬衫</a></li>
					<li><a href="#">男装运动服装</a></li>
					<li><a href="#">男装短裤</a></li>
					<li><a href="#">男装长裤 </a></li>
					<li><a href="#">男装外套</a></li>
					<li><a href="#">男装西服</a></li>
					<li><a href="#">男装卫衣</a></li>
					</ul></dd></dl><dl class="cf"><dt><a href="#">童装</a></dt>
					<dd><ul><li class="first"><a href="#">男童</a></li>
					<li><a href="#">女童</a></li>
					</ul></dd></dl><dl class="cf"><dt><a href="#">鞋靴</a></dt>
					<dd><ul><li class="first"><a href="#">童鞋</a></li>
					<li><a href="#">男鞋</a></li>
					<li><a href="#">女鞋</a></li>
					</ul></dd></dl><dl class="cf"><dt><a href="#">个人配件</a></dt>
					<dd><ul><li class="first"><a href="#">鞋子配件</a></li>
					<li><a href="#">女式配件</a></li>
					<li><a href="#">儿童配件</a></li>
					<li><a href="#">男式配件</a></li>
					<li><a href="#">运动配件</a></li>
					</ul></dd></dl></div><div class="cat_cont_rgt"><dl><dt>推荐品牌</dt><dd><ul><li><a href="#">李宁</a></li><li><a href="#">佐丹奴</a></li><li><a href="#">nike 360</a></li><li><a href="#">CARTELO卡帝乐</a></li><li><a href="#">乐途</a></li><li><a href="#">唐狮</a></li><li><a href="#">PARGO佩戈</a></li><li><a href="#">OLOMO欧莱诺</a></li><li><a href="#">保罗威特</a></li><li><a href="#">Tomnrabbit</a></li><li><a href="#">JAMESKING</a></li></dd></dl><dl><dt>促销专题</dt><dd><ul><li><a href="#">李宁疯狂满送第二波</a></li><li><a href="#">卡帝乐清仓 2折起</a></li><li><a href="#">牛仔裤热卖 69元起</a></li><li><a href="#">佐丹奴旗舰店</a></li></dd></dl> </div> </div></li>
					<li class="cat_item"><h4 class="cat_tit"><a href="#" class="cat_tit_link">营养保健、健康器械</a><span class="s_arrow">></span></h4><div class="cat_cont"><div class="cat_cont_lft">
					<dl class="cf"><dt><a href="#">增强免疫/ 抗疲劳</a></dt>
					<dd><ul><li class="first"><a href="#">氨基酸</a></li>
					<li><a href="#">保健酒</a></li>
					<li><a href="#">大蒜油</a></li>
					<li><a href="#">鸡精</a></li>
					<li><a href="#">螺旋藻</a></li>
					<li><a href="#">乳清蛋白质粉</a></li>
					<li><a href="#">鲨鱼肝油</a></li>
					<li><a href="#">保健茶</a></li>
					<li><a href="#">角鲨烯</a></li>
					<li><a href="#">牛初乳/蛋白质粉</a></li>
					<li><a href="#">肽合物</a></li>
					<li><a href="#">西洋参/花旗参</a></li>
					<li><a href="#">综合营养素Y</a></li>
					<li><a href="#">西洋参</a></li>
					<li><a href="#">花旗参</a></li>
					<li><a href="#">增强免疫</a></li>
					<li><a href="#">蛋白质粉</a></li>
					</ul></dd></dl><dl class="cf"><dt><a href="#">维生素/矿物质</a></dt>
					<dd><ul><li class="first"><a href="#">钙质剂</a></li>
					<li><a href="#">B族维生素</a></li>
					<li><a href="#">维生素A/D</a></li>
					<li><a href="#">维生素E/C</a></li>
					<li><a href="#">叶酸片</a></li>
					<li><a href="#">孕妇维生素</a></li>
					<li><a href="#">多种维生素</a></li>
					</ul></dd></dl><dl class="cf"><dt><a href="#">美容养颜</a></dt>
					<dd><ul><li class="first"><a href="#">草本茶</a></li>
					<li><a href="#">馥莓饮</a></li>
					<li><a href="#">燕窝</a></li>
					<li><a href="#">珍珠粉</a></li>
					<li><a href="#">胶原蛋白</a></li>
					<li><a href="#">补血补气</a></li>
					<li><a href="#">胎盘素</a></li>
					<li><a href="#">延缓衰老</a></li>
					<li><a href="#">美容养颜类1</a></li>
					</ul></dd></dl><dl class="cf"><dt><a href="#">减肥瘦身</a></dt>
					<dd><ul><li class="first"><a href="#">减肥茶</a></li>
					<li><a href="#">苹果醋/酸</a></li>
					<li><a href="#">代餐食品</a></li>
					<li><a href="#">修身咖啡</a></li>
					<li><a href="#">左旋肉碱</a></li>
					<li><a href="#">藤黄果</a></li>
					<li><a href="#">燃脂素/纤体</a></li>
					</ul></dd></dl><dl class="cf"><dt><a href="#">健康器械</a></dt>
					<dd><ul><li class="first"><a href="#">按摩鞋类</a></li>
					<li><a href="#">健康枕</a></li>
					<li><a href="#">辅助治疗仪器类</a></li>
					<li><a href="#">护具</a></li>
					<li><a href="#">体温计/计步器/脂肪、口气、酒精测试仪</a></li>
					<li><a href="#">其它健康器械类</a></li>
					<li><a href="#">牵引器</a></li>
					<li><a href="#">足浴器</a></li>
					<li><a href="#">血糖仪/试纸</a></li>
					<li><a href="#">制氧器材类</a></li>
					<li><a href="#">拔罐器类</a></li>
					<li><a href="#">急救包（健）</a></li>
					<li><a href="#">按摩器</a></li>
					<li><a href="#">拔罐器/刮痧板</a></li>
					<li><a href="#">保健理疗</a></li>
					<li><a href="#">测量仪器</a></li>
					<li><a href="#">膏贴喷剂</a></li>
					<li><a href="#">急救包Y</a></li>
					<li><a href="#">家庭常备</a></li>
					<li><a href="#">冷/热敷器具</a></li>
					<li><a href="#">血压计Y</a></li>
					<li><a href="#">制氧器材Y</a></li>
					</ul></dd></dl><dl class="cf"><dt><a href="#">进入该频道</a></dt>
					<dd></dd></dl></div><div class="cat_cont_rgt"><dl><dt>推荐品牌</dt><dd><ul><li><a href="#">绿A</a></li><li><a href="#">喜瑞</a></li><li><a href="#">白兰氏</a></li><li><a href="#">养生堂</a></li><li><a href="#">奈氏力斯</a></li><li><a href="#">善存</a></li><li><a href="#">碧生源</a></li><li><a href="#">欧姆龙</a></li><li><a href="#">昂立</a></li><li><a href="#">恒寿堂</a></li><li><a href="#">lumi</a></li><li><a href="#">膳通</a></li><li><a href="#">修身堂</a></li></dd></dl><dl><dt>促销专题</dt><dd><ul><li><a href="#">保健品0利润抢购第二</a></li><li><a href="#">保健品滋补人气排行</a></li><li><a href="#">情趣用品系列</a></li><li><a href="#">雅姿饼干买3送1</a></li></dd></dl> </div> </div></li>
					</ul>
					<!--<div class="all_cats"><a href="#" class="more">全部商品分类</a></div>-->
					</div>
				</div>
			</div>
		</div><!--mmenu end-->
	
	</div><!--s_hdw end-->
	
	<div id="s_bdw">
		<div id="s_bd">
			<div class="cf">
				<div id="i_col_lft" class="i_col_lft">
					<div class="categories"></div>
				</div>
                <!--这商品框架DIV-->
               <div align="center" class="Wrapper">
<div id="MainCenter" align="center" class="MainCenter">
<div id="content" class="Sub">
				<div class="NewContainer771">
					<div class="BoxHeader">
						<div class="BoxHeader-center MarginTop10">购物车</div>
					</div>
					<div class="Slot">
						<s:set name="items" value="#session.cart.items"/>
	                        <table width="99%" border="0" cellpadding="2" cellspacing="1" bgcolor="#FFFFFF" align="center" style="margin-top:8px">
					              <tr align="center" bgcolor="#FAFAF1" height="22">
					                  <td>商品名称</td>
					                  <td>价格</td>
					                  <td>数量</td>
					                  <td>金额</td>
					                  <td>删除</td>
				                  </tr>
								  <s:iterator value="#items">
								  <tr align='center' bgcolor="#FFFFFF" height="22">
									  <td><s:property value="value.goods.goodsName"/></td>
									  <td>￥<s:property value="value.goods.goodsTejia"/><br/></td>
									  <td><input type="text" class="textBox" onChange="modiNum(<s:property value="value.goods.goodsId"/>,this.value)" value="<s:property value="value.goodsQuantity"/>" size="4"/></td>
									  <td>￥<s:property value="value.goodsQuantity * value.goods.goodsTejia"/></td>
									  <td><input onClick="delGoodsFromCart(<s:property value="value.goods.goodsId"/>)" type="image" src="<%=path %>/img/delete_01.gif" border="0"/></td>
								  </tr>
								  </s:iterator>
					              <tr>
					                 <td colspan="6" class="Order_Total">
					                   <img hspace="5" src="<%=path %>/img/me03.gif"/> 
									    总金额：￥<span id="totalMoney"><s:property value="#session.cart.totalPrice"/></span>
									    &nbsp;&nbsp;&nbsp;&nbsp;
									    <img id="indicator1" src="<%=path %>/img/loading.gif" style="display:none"/>
									 </td>
					              </tr>				
	        				</table>
	        				<table>
	        				   <tr height="7"><td></td></tr>
			                   <tr>
			                       <td width="120"></td>
			                       <td><a href="#" onclick="clearCart()"><img border="0" src="<%=path %>/img/qingkong.jpg"/></a></td>
			                       <td><a href="<%=path %>/index.action"><img border="0" src="<%=path %>/img/jixu.jpg"/></a></td>
			                       <td><a href="<%=path %>/orderQueren.action"><img border="0" src="<%=path %>/img/next.jpg"/></a></td>
			                   </tr>
			               </table>
                    </div>
				</div>
		 </div>
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