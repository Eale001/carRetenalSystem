package com.eale.carrentalsystem.controller.retenal;

import com.eale.carrentalsystem.bean.Comment;
import com.eale.carrentalsystem.bean.Order;
import com.eale.carrentalsystem.service.CommentService;
import com.eale.carrentalsystem.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

/**
 *
 * 评论管理
 */
@Controller
@RequestMapping("/")
public class CommentController {

    @Autowired
    private CommentService commentService;

    @Autowired
    private OrderService orderService;

    /**
     * 进入评论管理
     * @param model
     * @return
     */
    @RequestMapping("commentManage")
    public String commentManager(Model model){
        List<Comment> commentList = commentService.findAll();
        model.addAttribute("commentList",commentList);
        return "retenal/commentManage";
    }

    /**
     * 进入修改,添加 页面
     * @param commentId
     * @param model
     * @return
     */
    @RequestMapping(value = "commentEdit",method = RequestMethod.GET)
    public String commentEdit(@RequestParam(value = "commentId",required=false)Long commentId,Model model){
        if (null != commentId){
            Comment comment = commentService.findById(commentId);
            model.addAttribute("comment",comment);
        }
        List<Order> orderList = orderService.findAll();
        model.addAttribute("orderList",orderList);
        return "retenal/commentEdit";
    }

    /**
     * 查看
     * @param commentId
     * @param model
     * @return
     */
    @RequestMapping(value = "find",method = RequestMethod.POST)
    public String findComment(@RequestParam(value = "commentId",required=false)Long commentId,Model model){

        if (commentId == null){
            return null;
        }
        Comment comment = commentService.findById(commentId);
        if (null == comment){
            model.addAttribute("errormess","数据有误");
            return "/commentManage";
        }
        model.addAttribute("comment",comment);
        return "retenal/commentShow";
    }


    /**
     * 修改
     * @param comment
     * @param model
     * @return
     */
    @RequestMapping(value = "modifyComment",method = RequestMethod.POST)
    public String modifyComment(Comment comment,Model model){

        if (comment == null){
            return null;
        }
        Comment modifyComment = commentService.modify(comment);
        if (null == modifyComment){
            model.addAttribute("errormess","修改失败");
            return "/commentEdit";
        }
        model.addAttribute("seccess",1);
        return "/commentManage";
    }

    /**
     * 删除
     * @param commentId
     * @return
     */
    @RequestMapping("removeComment")
    public String remove(@RequestParam(value = "commentId",required=false)Long commentId){
        commentService.remove(commentId);
        return "/commentManage";
    }

}
