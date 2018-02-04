package com.service;

import com.dao.TGoodsDAO;
import com.model.TGoods;
import com.model.TUser;
import org.apache.struts2.ServletActionContext;

import java.util.List;
import java.util.Map;

/**
 * Created by Black on 2016/5/25.
 */
public class goodsService {
    private TGoodsDAO goodsDAO;

    public List findAllGoodbyUser()
    {
        Map session= ServletActionContext.getContext().getSession();
        TUser user = (TUser)session.get("user");
        String sql="from TGoods where goodsFly ='no' and userId =" + user.getUserId();
        List goodList=goodsDAO.getHibernateTemplate().find(sql);
        return goodList;
    }

    public TGoodsDAO getGoodsDAO() {
        return goodsDAO;
    }

    public void setGoodsDAO(TGoodsDAO goodsDAO) {
        this.goodsDAO = goodsDAO;
    }
}
