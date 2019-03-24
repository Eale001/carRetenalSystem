package com.eale.carrentalsystem.service;

import com.eale.carrentalsystem.bean.Type;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface TypeService {

    /**
     * 查询全部
     * @return
     */
    List<Type> findAll();

    /**
     * 根据Id查询
     * @param typeId
     * @return
     */
    Type findById(Long typeId);

    /**
     * 添加 修改
     * @param type
     * @return
     */
    Type modify(Type type);

    /**
     * 删除
     * @param typeId
     */
    void remove(Long typeId);
}
