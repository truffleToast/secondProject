package kr.spring.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.spring.entity.day_blog;
import kr.spring.entity.day_user;
import kr.spring.service.DayService;

@Controller
@RequestMapping("/login/*")
public class loginController {
   
   @Autowired
   private DayService service;
   
   @RequestMapping("in")
   public String in() {
      System.out.println("로그인 페이지 이동");
      return "main/login";
   }
   
   @RequestMapping("loginProcess")
   public String login(day_user vo, HttpSession session) {
      
      day_user mvo = service.login(vo);
      
      if(mvo!=null) {
            session.setAttribute("mvo", mvo);
         }
      
       
      List<day_blog> list = service.follow(vo.getUser_id());
      
       session.setAttribute("list", list);
      
      
      
      return "redirect:/";
   }
   @RequestMapping("logoutProcess")
   public String logout(HttpSession session){
      
         session.invalidate();
      return "redirect:/";
   }
   
   @RequestMapping("join")
   public String join(day_user vo) {
      System.out.println("회원가입");
      service.join(vo);
      
      return "redirect:/login/in";
   }
   
   @RequestMapping("idCheck")
   public @ResponseBody Boolean idCheck(String user_id){
      Boolean result = service.idCheck(user_id);
      //System.out.println(result);
      return result;
   }
   
   @RequestMapping("nickCheck")
   public @ResponseBody Boolean nickCheck(String user_nick){
      Boolean result = service.nickCheck(user_nick);
      //System.out.println(result);
      return result;
   }
}