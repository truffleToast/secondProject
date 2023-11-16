package kr.spring.controller;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;


@Controller //현재 클래스를 핸들러 맵핑이 찾기위해 컨트롤러로 등록하는 부분 (어노테이션)
public class HomeController {
   
   
      
      
      @RequestMapping("/") // 요청 url로 들어왔을때 아래 기능을 수행하겠다.
      
      public String home() {
         
         
         
         return "main/main";
         
      }
      @RequestMapping("story") // 요청 url로 들어왔을때 아래 기능을 수행하겠다.
      
      public String story() {
         
         
         return "main/story";
         
      }
      @RequestMapping("follow") // 요청 url로 들어왔을때 아래 기능을 수행하겠다.
      
      public String follow() {
         
         
         
         
         return "main/follow";
         
      }
      @RequestMapping("main") // 요청 url로 들어왔을때 아래 기능을 수행하겠다.
      
      public String main() {
         
         
         return "main/main";
         
      }

}