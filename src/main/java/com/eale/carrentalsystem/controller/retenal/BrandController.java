package com.eale.carrentalsystem.controller.retenal;

import com.eale.carrentalsystem.bean.Brand;
import com.eale.carrentalsystem.service.BrandService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 *
 * 车品牌Controller
 */
@Controller
@RequestMapping("/")
public class BrandController {

    @Autowired
    private BrandService brandService;

    /**
     * 第一次进入管理页面
     * @param
     * @return
     */
    @RequestMapping("brandManage")
    public ModelAndView brandManage(@RequestParam(value = "page", defaultValue = "0") int page,
                              @RequestParam(value = "size", defaultValue = "10") int size){
        ModelAndView mav=new ModelAndView("retenal/brandManage");

        Page<Brand> pagebrand=brandService.findAllByPage(page,size);

        List<Brand>  brandlist=pagebrand.getContent();
        mav.addObject("page", pagebrand);
        mav.addObject("brandlist", brandlist);
//        mav.addObject("url", "roleser");
        return mav;
    }

    /**
     * 进入添加和修改界面
     * @param brandId
     * @param model
     * @return
     */
    @RequestMapping(value = "brandEdit",method = RequestMethod.GET)
    public String brandEdit(@RequestParam(value = "brandId",required=false) Long brandId,Model model){
        if (null != brandId){
            Brand brand=brandService.findById(brandId);
            model.addAttribute("brand",brand);
        }
        return "retenal/brandEdit";
    }

    /**
     * 添加/修改
     * @param brand
     * @param model
     * @return
     */
    @RequestMapping(value = "brandEdit",method = RequestMethod.POST)
    public String brandUpdate(Brand brand, Model model){

        System.out.println(brand);
        Brand brandUpdate=brandService.modify(brand);

        if (brandUpdate!=null){

            model.addAttribute("success",1);
            return "/brandManage";

        }
        model.addAttribute("errormess","数据插入失败");
        return "retenal/brandEdit";

    }

    /**
     * 删除
     * @param brandId
     * @param model
     * @return
     */
    @RequestMapping("removeBrand")
    public String removeBrand(@RequestParam(value = "brandId",required=false) Long brandId,Model model){
        brandService.remove(brandId);
        model.addAttribute("success","删除成功!");
        return "/brandManage";
    }




}
