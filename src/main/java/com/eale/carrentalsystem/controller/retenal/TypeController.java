package com.eale.carrentalsystem.controller.retenal;

import com.eale.carrentalsystem.bean.Type;
import com.eale.carrentalsystem.service.TypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

/**
 *
 * 车辆类型的Controller
 */
@Controller
@RequestMapping("/")
public class TypeController {

    @Autowired
    private TypeService typeService;

    /**
     * 第一次进入类型管理列表
     * @param model
     * @return
     */
    @RequestMapping("typeManage")
    public String typeManage(Model model){

        List<Type> typeList = typeService.findAll();
        model.addAttribute("typeList",typeList);
        return "retenal/typeManage";

    }

    /**
     * 进入修改,添加页面
     * @param typeId
     * @param model
     * @return
     */
    @RequestMapping(value = "typeEdit",method = RequestMethod.GET)
    public String typeEdit(@RequestParam(value = "typeId",required=false) Long typeId,Model model){
        if (typeId!=null){
            Type type= typeService.findById(typeId);
            model.addAttribute("type",type);
        }
        return "retenal/typeEdit";

    }

    /**
     * 修改,添加
     * @param type
     * @param model
     * @return
     */
    @RequestMapping(value = "typeEdit",method = RequestMethod.POST)
    public String modifyType(Type type,Model model){

        System.out.println(true);
        Type typeModify=typeService.modify(type);

        if (typeModify!=null){

            model.addAttribute("success",1);
            return "/typeManage";
        }
        model.addAttribute("errormess","数据插入失败");
        return "retenal/typeEdit";

    }

    /**
     * 删除
     * @param typeId
     * @param model
     * @return
     */
    @RequestMapping("removeType")
    public String removeType(@RequestParam(value = "typeId",required=false)Long typeId,Model model){

        typeService.remove(typeId);
        model.addAttribute("success",1);
        return "/typeManage";

    }



}
