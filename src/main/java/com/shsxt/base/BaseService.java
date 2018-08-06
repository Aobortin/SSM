package com.shsxt.base;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;

import java.util.List;

/**
 * Created by lp on 2018/6/14.
 */
public abstract class BaseService<T> {
    @Autowired
    private BaseMapper<T> baseMapper;
    /**
     * 添加记录
     * @param entity
     * @return
     */
    public  Integer insert(T entity) throws DataAccessException{
        return baseMapper.insert(entity);
    }

    /**
     * 批量添加
     * @param entities
     * @return
     */
    public  Integer insertBatch(List<T> entities) throws DataAccessException{
        return baseMapper.insertBatch(entities);
    }

    /**
     * 根据id查询记录
     * @param id
     * @return
     */
    public  T selectById(Integer id) throws DataAccessException{
        return baseMapper.selectById(id);
    }

    /**
     * 多参数查询
     * @param baseQuery
     * @return
     */
    public PageInfo<T> queryForPage(BaseQuery baseQuery) throws DataAccessException{
        PageHelper.startPage(baseQuery.getPageNum(),baseQuery.getPaseSize());
        List<T> results=baseMapper.selectByParams(baseQuery);
        return new PageInfo<T>(results);
    }

    /**
     * 更新方法
     * @param entity
     * @return
     */
    public  Integer update(T entity) throws DataAccessException{
        return baseMapper.update(entity);
    }

    /**
     * 删除记录
     * @param id
     * @return
     */
    public  Integer delete(Integer id) throws DataAccessException{

        return baseMapper.delete(id);
    }


    /**
     * 批量删除
     * @param ids
     * @return
     */
    public  Integer deleteBatch(Integer[] ids) throws DataAccessException{
        return baseMapper.deleteBatch(ids);
    }


}
