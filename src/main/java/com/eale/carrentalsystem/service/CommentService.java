package com.eale.carrentalsystem.service;

import com.eale.carrentalsystem.bean.Comment;
import com.eale.carrentalsystem.bean.Order;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface CommentService {

    /**
     * 查询全部
     * @return
     */
    List<Comment> findAll();

    /**
     * 保存
     * @param comment
     * @return
     */
    Comment save(Comment comment);

    /**
     * 根据Id查询
     * @param commentId
     * @return
     */
    Comment findById(Long commentId);

    /**
     * 修改,保存
     * @param comment
     * @return
     */
    Comment modify(Comment comment);

    /**
     * 根据Id删除
     * @param commentId
     */
    void remove(Long commentId);
}
