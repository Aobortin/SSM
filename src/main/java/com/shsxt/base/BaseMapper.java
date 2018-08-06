package com.shsxt.base;

import org.springframework.dao.DataAccessException;

import java.util.List;

/**
 * Created by lp on 2018/6/14.
 */
public interface BaseMapper<T> {
    /**
     * 添加记录
     * @param entity
     * @return
     */
    public  Integer insert(T entity) throws DataAccessException;

    /**
     * 批量添加
     * @param entities
     * @return
     */
    public  Integer insertBatch(List<T> entities) throws DataAccessException;

    /**
     * 根据id查询记录
     * @param id
     * @return
     */
    public  T selectById(Integer id) throws DataAccessException;

    /**
     * 多参数查询
     * @param baseQuery
     * @return
     */
    public  List<T> selectByParams(BaseQuery baseQuery) throws DataAccessException;

    /**
     * 更新方法
     * @param entity
     * @return
     */
    public  Integer update(T entity) throws DataAccessException;

    /**
     * 删除记录
     * @param id
     * @return
     */
    public  Integer delete(Integer id) throws DataAccessException;


    /**
     * 批量删除
     * @param ids
     * @return
     */
    public  Integer deleteBatch(Integer[] ids) throws DataAccessException;




}
