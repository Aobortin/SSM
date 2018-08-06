package com.shsxt.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageInfo;
import com.shsxt.exceptions.ParamException;
import com.shsxt.model.ResultInfo;
import com.shsxt.query.PayInQuery;
import com.shsxt.service.PayInService;
import com.shsxt.vo.PayIn;

/**
 * Created by lp on 2018/6/22.
 */
@Controller
//@RequestMapping("payIn")
public class PayInController {
    @Resource
    private PayInService payInService;
/*
    @RequestMapping("save")
    @ResponseBody
    public ResultInfo savePayIn(PayIn payIn){
        ResultInfo resultInfo=new ResultInfo();
        try {
            payInService.savePayIn(payIn);
        }catch (ParamException pe){
            pe.printStackTrace();
            resultInfo.setCode(pe.getErrorCode());
            resultInfo.setMsg(pe.getErrorMsg());
        }catch (Exception e) {
            e.printStackTrace();
            resultInfo.setCode(300);
            resultInfo.setMsg("添加失败!");
        }
        return   resultInfo;
    }*/

    @RequestMapping("queryPayInById")
    @ResponseBody
    public ResultInfo queryPayInById(Integer id){
        ResultInfo resultInfo=new ResultInfo();
        try {
            PayIn payIn= payInService.selectById(id);
            if(null!=payIn){
                resultInfo.setResult(payIn);
            }else{
                resultInfo.setCode(400);
                resultInfo.setMsg("记录不存在!");
            }
        } catch (Exception e) {
            e.printStackTrace();
            resultInfo.setCode(300);
            resultInfo.setMsg("查询失败!");
        }
        return   resultInfo;
    }

    @RequestMapping("queryForPage")
    @ResponseBody
    public PageInfo<PayIn> queryForPage(PayInQuery payInQuery){
        return payInService.queryForPage(payInQuery);
    }

   /* @RequestMapping("update")
    @ResponseBody
    public ResultInfo update(PayIn payIn){
        ResultInfo resultInfo=new ResultInfo();
        try {
            payInService.updatePayIn(payIn);
        }catch (ParamException pe){
            pe.printStackTrace();
            resultInfo.setCode(pe.getErrorCode());
            resultInfo.setMsg(pe.getErrorMsg());
        }catch (Exception e) {
            e.printStackTrace();
            resultInfo.setCode(300);
            resultInfo.setMsg("更新失败!");
        }
        return   resultInfo;
    }*/

    @RequestMapping("delete")
    @ResponseBody
    public ResultInfo delete(Integer id){
        ResultInfo resultInfo=new ResultInfo();
        try {
            payInService.delete(id);
        } catch (Exception e) {
            e.printStackTrace();
            resultInfo.setCode(300);
            resultInfo.setMsg("删除失败!");
        }
        return   resultInfo;
    }


    @RequestMapping("saveOrUpdatePayIn")
    @ResponseBody
    public  ResultInfo saveOrUpdatePayIn(PayIn payIn){
        ResultInfo resultInfo=new ResultInfo();
        try {
            payInService.saveOrUpdatePayIn(payIn);
        }catch (ParamException pe){
            pe.printStackTrace();
            resultInfo.setCode(pe.getErrorCode());
            resultInfo.setMsg(pe.getErrorMsg());
        }catch (Exception e) {
            e.printStackTrace();
            resultInfo.setCode(300);
            resultInfo.setMsg("操作失败!");
        }
        return   resultInfo;
    }


    // ip:端口/ssm/payIn/1
    @RequestMapping(value = "payIn/{id}",method = RequestMethod.GET)
    @ResponseBody
    public ResultInfo query(@PathVariable  Integer id){
        ResultInfo resultInfo=new ResultInfo();
        try {
            PayIn payIn= payInService.selectById(id);
            if(null!=payIn){
                resultInfo.setResult(payIn);
            }else{
                resultInfo.setCode(400);
                resultInfo.setMsg("记录不存在!");
            }
        } catch (Exception e) {
            e.printStackTrace();
            resultInfo.setCode(300);
            resultInfo.setMsg("查询失败!");
        }
        return   resultInfo;
    }


    @RequestMapping(value = "payIn",method = RequestMethod.POST)
    @ResponseBody
    public ResultInfo savePayIn(PayIn payIn){
        ResultInfo resultInfo=new ResultInfo();
        try {
            payInService.savePayIn(payIn);
        }catch (ParamException pe){
            pe.printStackTrace();
            resultInfo.setCode(pe.getErrorCode());
            resultInfo.setMsg(pe.getErrorMsg());
        }catch (Exception e) {
            e.printStackTrace();
            resultInfo.setCode(300);
            resultInfo.setMsg("添加失败!");
        }
        return   resultInfo;
    }


    @RequestMapping(value = "payIn",method = RequestMethod.PUT)
    @ResponseBody
    public ResultInfo update(PayIn payIn){
        ResultInfo resultInfo=new ResultInfo();
        try {
            payInService.updatePayIn(payIn);
        }catch (ParamException pe){
            pe.printStackTrace();
            resultInfo.setCode(pe.getErrorCode());
            resultInfo.setMsg(pe.getErrorMsg());
        }catch (Exception e) {
            e.printStackTrace();
            resultInfo.setCode(300);
            resultInfo.setMsg("添加失败!");
        }
        return   resultInfo;
    }

    @RequestMapping(value = "payIn",method = RequestMethod.DELETE)
    @ResponseBody
    public ResultInfo delete02(Integer id){
        ResultInfo resultInfo=new ResultInfo();
        try {
            payInService.delete(id);
        } catch (Exception e) {
            e.printStackTrace();
            resultInfo.setCode(300);
            resultInfo.setMsg("删除失败!");
        }
        return   resultInfo;
    }


}
