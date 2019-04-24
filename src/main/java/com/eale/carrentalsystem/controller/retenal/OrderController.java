package com.eale.carrentalsystem.controller.retenal;

import com.eale.carrentalsystem.bean.*;
import com.eale.carrentalsystem.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Date;
import java.util.List;

/**
 *
 *  订单 Controller
 */
@Controller
@RequestMapping("/")
public class OrderController {

    @Autowired
    private OrderService orderService;

    @Autowired
    private VehicleService vehicleService;

    @Autowired
    private BrandService brandService;

    @Autowired
    private TypeService typeService;

    @Autowired
    private CommentService commentService;

    /**
     * 进入订单页面
     * @param model
     * @return
     */
    @RequestMapping("orderManage")
    public String orderManager(Model model){
        List<Order> orderList = orderService.findAll();
        model.addAttribute("orderList",orderList);
        return "retenal/orderManage";
    }

    /**
     * 进入新增,修改页面
     * @param orderId
     * @param model
     * @return
     */
    @RequestMapping(value = "orderEdit",method = RequestMethod.GET)
    public String orderEdit(@RequestParam(value = "orderId",required=false)Long orderId,Model model){
        if (orderId!=null){
            Order order = orderService.findById(orderId);
            model.addAttribute("order",order);
        }
        List<Vehicle> vehicleList=vehicleService.findAll();
        List<Brand> brandList= brandService.findAll();
        List<Type> typeList=typeService.findAll();
        model.addAttribute("brandList",brandList);
        model.addAttribute("vehicleList",vehicleList);
        model.addAttribute("typeList",typeList);
        return "retenal/orderEdit";

    }

    /**
     * 管理员修改订单
     * @param order
     * @param model
     * @return
     */
    @RequestMapping(value = "saveOrder",method = RequestMethod.POST)
    public String saveOrder(Order order,@RequestParam(value = "vehiclename",required = false)String vehicleName,
                            @RequestParam(value = "typeId",required = false)String typeId,@RequestParam(value = "brandId",required = false)String brandId,Model model){
        System.out.println(order);
        System.out.println(vehicleName);
        System.out.println(typeId);
        System.out.println(brandId);
        if (null == order){
            model.addAttribute("errorr","请输入有效数据");
            return "/orderEdit";
        }
        order.setState(0);//默认为 为接单状态
        Vehicle vehicle=new Vehicle();
        if (typeId!=null && brandId!=null){
            Brand brand=brandService.findById(Long.parseLong(brandId));
            Type type=typeService.findById(Long.parseLong(typeId));
            vehicle.setBrand(brand);
            vehicle.setType(type);
        }
        vehicle.setVehicleName(vehicleName);
        List<Vehicle> vehicleList=vehicleService.findByConditons(vehicle);
        if (vehicleList.size()<1){
            model.addAttribute("errormess","该类型车辆没有了");
            return "/orderEdit";
        }
        order.setVehicle(vehicleList.get(0));
        order.setBrand(vehicleList.get(0).getBrand());
        order.setType(vehicleList.get(0).getType());
        Order newOrder = orderService.save(order);
        if (null == newOrder){
            model.addAttribute("errormess","数据保存失败");
            return "/orderEdit";
        }
        model.addAttribute("success",1);
        return "/orderManage";
    }

    /**
     * 用户下单保存
     * @param order
     * @param model
     * @return
     */
    @RequestMapping(value = "cusomersaveOrder",method = RequestMethod.POST)
    public String cusomersaveOrder(Order order,@RequestParam(value = "vehiclename",required = false)String vehicleName,
                            @RequestParam(value = "typeId",required = false)String typeId,@RequestParam(value = "brandId",required = false)String brandId,Model model){
        System.out.println(order);
        System.out.println(vehicleName);
        System.out.println(typeId);
        System.out.println(brandId);
        if (null == order){
            model.addAttribute("errorr","请输入有效数据");
            return "/orderEdit";
        }
        order.setState(0);//默认为 为接单状态
        Vehicle vehicle=new Vehicle();
        if (typeId!=null && brandId!=null){
            Brand brand=brandService.findById(Long.parseLong(brandId));
            Type type=typeService.findById(Long.parseLong(typeId));
            vehicle.setBrand(brand);
            vehicle.setType(type);
        }
        vehicle.setVehicleName(vehicleName);
        List<Vehicle> vehicleList=vehicleService.findByConditons(vehicle);
        if (vehicleList.size()<1){
            model.addAttribute("errormess","该类型车辆没有了");
            return "/customerOrder";
        }
        order.setVehicle(vehicleList.get(0));
        order.setBrand(vehicleList.get(0).getBrand());
        order.setType(vehicleList.get(0).getType());
        Order newOrder = orderService.save(order);
        if (null == newOrder){
            model.addAttribute("errormess","数据保存失败");
            return "/customerOrder";
        }
        model.addAttribute("success",1);
        return "app/home";
    }

    /**
     * 查看订单
     * @param orderId
     * @param model
     * @return
     */
    @RequestMapping("myorder")
    public String seeOrder(@RequestParam(value = "orderId",required=false)Long orderId,Model model){
        if (null == orderId){
            return null;
        }
        Order order = orderService.findById(orderId);
        model.addAttribute("order",order);
        return "retenal/orderShow";
    }

    /**
     * 确认订单
     * @param orderId
     * @param model
     * @return
     */
    @RequestMapping("confirmOrder")
    public String modifyOrder(@RequestParam(value = "orderId",required=false)Long orderId,Model model){

        if (null == orderId){
            return null;
        }
        Order order = orderService.findById(orderId);
        if (null == order){
            return null;
        }
        order.getVehicle().setVehicleState(1);//将该车辆的状态改为1 出租使用状态
        vehicleService.modify(order.getVehicle());
        order.setState(1);//将订单状态改为 派单中

        Order order1 = orderService.save(order);
        model.addAttribute("order1",order1);
        return "retenal/orderShow";
    }

    /**
     * 完成订单
     * @param orderId
     * @param model
     * @return
     */
    @RequestMapping("finshOrder")
    public String finishOrder(@RequestParam(value = "orderId",required=false)Long orderId,Model model){
        if (null == orderId){
            return null;
        }
        Order order = orderService.findById(orderId);
        if (null == order){
            return null;
        }
        order.setState(2);//将订单状态改为完成状态
        order.getVehicle().setVehicleState(0);//将车的状态改为0 //空闲状态
        vehicleService.modify(order.getVehicle());
        Long workHourTime = getWorkHourTime(order.getBeginTime(), order.getEndTime());
        order.setMoney(order.getVehicle().getVehiclePrice()*workHourTime);
        order.setIsComment(0);//将评价设为0  未评价状态
        Order finishorder = orderService.save(order);

        Comment comment = new Comment();
        comment.setOrder(finishorder);
        comment.setCommentState(0);//默认评价状态为 未评价
        commentService.save(comment);
        model.addAttribute("finishorder",finishorder);
        return "retenal/orderShow";
    }

    /**
     * 返回两个时间的时间差
     * @param startTime
     * @param endTime
     * @return
     */
    private Long getWorkHourTime(Date startTime,Date endTime){
        Long start=startTime.getTime();
        Long end=endTime.getTime();
        return (start-end)/(60*60*1000);
    }
}
