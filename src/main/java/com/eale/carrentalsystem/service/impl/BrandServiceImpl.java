package com.eale.carrentalsystem.service.impl;

import com.eale.carrentalsystem.bean.Brand;
import com.eale.carrentalsystem.bean.Role;
import com.eale.carrentalsystem.dao.BrandDao;
import com.eale.carrentalsystem.service.BrandService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class BrandServiceImpl implements BrandService {

    @Autowired
    private BrandDao brandDao;

    @Override
    public List<Brand> findAll() {
        return brandDao.findAll();
    }

    @Override
    public Brand findById(Long brandId) {
        return brandDao.findById(brandId).get();
    }

    @Override
    public void remove(Long brandId) {
        brandDao.deleteById(brandId);
    }

    @Override
    public Brand modify(Brand brand) {
        brandDao.save(brand);
        return brandDao.findById(brand.getBrandId()).get();
    }

    @Override
    public Page<Brand> findAllByPage(int page, int size) {
        Pageable pageable= PageRequest.of(page,size);
        return brandDao.findAll(pageable);
    }
}
