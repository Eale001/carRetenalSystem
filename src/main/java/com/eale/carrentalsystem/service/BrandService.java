package com.eale.carrentalsystem.service;

import com.eale.carrentalsystem.bean.Brand;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface BrandService {

    /**
     * 查询全部
     * @return
     */
    List<Brand> findAll();

    /**
     * 根据Id查询
     * @param brandId
     * @return
     */
    Brand findById(Long brandId);

    /**
     * 删除
     * @param brandId
     */
    void remove(Long brandId);

    /**
     * 修改 添加
     * @param brand
     * @return
     */
    Brand modify(Brand brand);

    /**
     * 分页查询
     * @param page
     * @param size
     * @return
     */
    Page<Brand> findAllByPage(int page, int size);
}
