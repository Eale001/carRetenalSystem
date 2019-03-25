package com.eale.carrentalsystem.service.impl;

import com.eale.carrentalsystem.bean.Type;
import com.eale.carrentalsystem.dao.TypeDao;
import com.eale.carrentalsystem.service.TypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class TypeServiceImpl implements TypeService {

    @Autowired
    private TypeDao typeDao;

    @Override
    public List<Type> findAll() {
        return typeDao.findAll();
    }

    @Override
    public Type findById(Long typeId) {
        return typeDao.findById(typeId).get();
    }

    @Override
    public Type modify(Type type) {
        typeDao.save(type);
        return typeDao.findById(type.getTypeId()).get();
    }

    @Override
    public void remove(Long typeId) {
        typeDao.deleteById(typeId);
    }
}
