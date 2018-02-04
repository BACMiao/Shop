var t;


t=outlookbar.addtitle('修改密码')
outlookbar.additem('密码修改',t,'../admin/userinfo/userPw.jsp')


t=outlookbar.addtitle('用户管理')
outlookbar.additem('用户管理',t,'/shop/userMana.action')

t=outlookbar.addtitle('商品类别')
outlookbar.additem('类别管理',t,'/shop/catelogMana.action')
outlookbar.additem('添加类别',t,'../admin/catelog/catelogAdd.jsp')

t=outlookbar.addtitle('商品管理')
outlookbar.additem('商品管理',t,'/shop/goodsMana.action')
outlookbar.additem('添加商品',t,'../admin/goods/goodsAdd.jsp')


t=outlookbar.addtitle('订单管理')
outlookbar.additem('订单管理',t,'/shop/orderMana.action')

t=outlookbar.addtitle('网站论坛')
outlookbar.additem('网站论坛',t,'/shop/liuyanMana.action')


t=outlookbar.addtitle('公告管理')
outlookbar.additem('公告管理',t,'/shop/gonggaoMana.action')
outlookbar.additem('公告添加',t,'../admin/gonggao/gonggaoAdd.jsp')


t=outlookbar.addtitle('退出系统') 
outlookbar.additem('安全退出',t,'../login.jsp')