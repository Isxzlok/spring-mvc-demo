package com.huluwa.mvc.controller;

import com.huluwa.mvc.domain.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;


@Controller
public class IndexController {
    @RequestMapping("/index")
    public String index(){
        return "index";
    }

    @RequestMapping("/toAdd")
    public String add(){
        return "add";
    }

    /**
     * 接受int类型参数
     * @param id
     * @return
     */
    @RequestMapping("/receive")
    public String receive(Integer id){
        System.out.println(id);
        return "index";
    }

    /**
     * 接受字符串类型参数
     */
    @RequestMapping("/receiveStr")
    public String receiveStr(@RequestParam(defaultValue = "ahhahah", value="sss", required = true) String name){
        System.out.printf(name);
        return "success";
    }

    /**
     * 接受pojo
     */
    @RequestMapping("receivePoJo")
    public String receive(User user){
        System.out.println(user);
        return "success";

    }

    /**
     * 接收数组
     */
    @RequestMapping("/receiveArr")
    public String receive(Integer[] a1){
        System.out.println(a1);
        return "success";
    }

    @RequestMapping("/toJson")
    public String toJson(){
        return "requestJson";
    }

    /**
     * 接收json格式数据，使用requestBody把json格式数据封装到User对象
     * 返回User对象，使用responseBody把User对象转换成json对象
     *
     */

    @RequestMapping("/requestJson")
    public @ResponseBody User requestJson(@RequestBody User user){
        System.out.println(user);
        return user;
    }

}
