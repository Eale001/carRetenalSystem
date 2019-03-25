package com.eale.carrentalsystem.dao;

import com.eale.carrentalsystem.bean.Comment;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CommentDao extends JpaRepository<Comment,Long> {
}
