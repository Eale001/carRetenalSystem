package com.eale.carrentalsystem.controller.retenal;

import com.eale.carrentalsystem.service.CommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/")
public class CommentController {

    @Autowired
    private CommentService commentService;


}
