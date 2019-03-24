package com.eale.carrentalsystem.controller.retenal;

import com.eale.carrentalsystem.bean.Brand;
import com.eale.carrentalsystem.bean.Type;
import com.eale.carrentalsystem.bean.Vehicle;
import com.eale.carrentalsystem.service.BrandService;
import com.eale.carrentalsystem.service.TypeService;
import com.eale.carrentalsystem.service.VehicleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

/**
 * 车辆的Controller
 */
@Controller
@RequestMapping("/")
public class VehicleController {

    @Autowired
    private VehicleService vehicleService;

    @Autowired
    private BrandService brandService;

    @Autowired
    private TypeService typeService;


    /**
     * 进入车辆列表页面
     * @param model
     * @return
     */
    @RequestMapping("vehicleManage")
    public String vehicleManage(Model model){

        List<Vehicle> vehiclelist=vehicleService.findAll();
        model.addAttribute("vehiclelist",vehiclelist);
        return "retenal/vehicleManager";
    }

    /**
     * 进入添加 修改页面
     * @param vehicleId
     * @param model
     * @return
     */
    @RequestMapping(value = "vehicleEdit",method = RequestMethod.GET)
    public String vehicleEdit(@RequestParam(value = "vehicleId")Long vehicleId,Model model){

        if (vehicleId != null){

            Vehicle vehicle = vehicleService.findById(vehicleId);
            model.addAttribute("vehicle",vehicle);
        }
        List<Brand> brandList=brandService.findAll();
        List<Type> typeList=typeService.findAll();
        model.addAttribute("brandList",brandList);
        model.addAttribute("typeList",typeList);

        return "retenal/vehicleEdit";

    }

    /**
     *
     * 保存
     * @param vehicle
     * @param model
     * @return
     */
    @RequestMapping(value = "vehicleEdit",method = RequestMethod.POST)
    public String vehivleEdit(Vehicle vehicle,Model model){

        System.out.println(vehicle);

        Vehicle modifyVehicle=vehicleService.modify(vehicle);

        if (null==modifyVehicle){
            model.addAttribute("errormess","数据插入失败");
            return "retenal/vehicleEdit";
        }
        model.addAttribute("success",1);
        return "/vehicleManage";

    }

    /**
     *
     * 删除
     * @param vehicleId
     * @param model
     * @return
     */
    @RequestMapping("removeVehicle")
    public String removeVehicle(@RequestParam(value = "vehicleId")Long vehicleId,Model model){
        vehicleService.remove(vehicleId);
        model.addAttribute("seccess",1);
        return "/vehicleManage";
    }

    /**
     * 根据Id查询
     * @param vehicleId
     * @param model
     * @return
     */
    @RequestMapping("findById")
    public String findById(@RequestParam(value = "vehicleId")Long vehicleId,Model model){
        if (vehicleId==null){
            model.addAttribute("errormess","数据出错");
            return "/vheicleManage";
        }
        Vehicle vehicle=vehicleService.findById(vehicleId);
        model.addAttribute("vehicle",vehicle);
        return "retenal/myVehicle";
    }

    /**
     * 根据条件查询
     * @param vehicle
     * @param model
     * @return
     */
    @RequestMapping("findByConditions")
    public String findByConditions(Vehicle vehicle,Model model){
        List<Vehicle> vehicleList = vehicleService.findByConditons(vehicle);
        model.addAttribute("vehicleList",vehicleList);
        return "retenal/vehicleManage";
    }


}
