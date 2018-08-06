package com.shsxt.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import com.shsxt.base.BaseService;
import com.shsxt.dao.AccountMapper;
import com.shsxt.dao.PayInMapper;
import com.shsxt.utils.AssertUtil;
import com.shsxt.vo.PayIn;

/**
 * Created by lp on 2018/6/22.
 */
@Service
public class PayInService extends BaseService<PayIn> {
    @Resource
    private PayInMapper payInMapper;

    @Resource
    private AccountMapper accountMapper;

    public  void  savePayIn(PayIn payIn){
        /**
         * 1.参数校验
         *   名称非空  金额>0  type 0|1|2  aid 记录必须存在
         * 2.执行添加
         * 3.判断结果
         */
        checkParams(payIn.getName(),payIn.getMoney(),payIn.getType(),payIn.getAid());
        AssertUtil.isTrue(payInMapper.insert(payIn)<1,"收入记录添加失败!");
    }

    private void checkParams(String name, Double money, String type, Integer aid) {
       /* if(StringUtils.isEmpty(name)){
            throw new ParamException("收入名称不能为空!");
        }

        if(null==money || money <=0){
            throw  new ParamException("金额非法!");
        }*/
        AssertUtil.isTrue(StringUtils.isEmpty(name),"收入名称不能为空!");
        AssertUtil.isTrue(null==money||money<=0,"收入金额不合法!");
        AssertUtil.isTrue(StringUtils.isEmpty(type),"类型不能为空!");
        AssertUtil.isTrue(!(type.equals("0")||type.equals("1")),"类型值不合法!");
        AssertUtil.isTrue(null==aid||(null==accountMapper.selectById(aid)),"账户记录不存在!");
    }

    private void checkParams(String name, Double money, String type, Integer aid,Integer pid) {
        checkParams(name, money, type, aid);
        AssertUtil.isTrue(null==pid||(null==payInMapper.selectById(pid)),"待更新记录不存在!");
    }

    public  void updatePayIn(PayIn payIn){
        /**
         * 1.参数校验
         *    名称非空  金额>0  type 0|1|2  aid 记录必须存在
         *    id 记录必须存在
         * 2.执行更新
         * 3.判断结果
         */
        checkParams(payIn.getName(),payIn.getMoney(),payIn.getType(),payIn.getAid(),payIn.getId());
        AssertUtil.isTrue(payInMapper.update(payIn)<1,"收入记录更新失败!");
    }



    public  void saveOrUpdatePayIn(PayIn payIn){
        if(null == payIn.getId()){
            /**
             * 执行添加
             */
            checkParams(payIn.getName(),payIn.getMoney(),payIn.getType(),payIn.getAid());
            AssertUtil.isTrue(payInMapper.insert(payIn)<1,"收入记录添加失败!");
        }else{
            checkParams(payIn.getName(),payIn.getMoney(),payIn.getType(),payIn.getAid(),payIn.getId());
            AssertUtil.isTrue(payInMapper.update(payIn)<1,"收入记录更新失败!");
        }
    }

}
