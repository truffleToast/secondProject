package kr.spring.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import kr.spring.entity.day_board;
import kr.spring.service.BoardService;

@RequestMapping("/board")
@RestController
public class BoardRestController {

   @Autowired
   private BoardService service;
   
   @GetMapping("/golife")
   public @ResponseBody List<day_board> lifeList() {
      
      List<day_board> list = service.getLifeList();
      
      
      return list;
   }
   @GetMapping("/travel")
   public @ResponseBody List<day_board> travelList() {
      
      List<day_board> list = service.gettravelList();
      
      return list;
   }
   @GetMapping("/culture")
   public @ResponseBody List<day_board> cultureList() {
      
      List<day_board> list = service.getcultureList();
      
      return list;
   }
   @GetMapping("/it")
   public @ResponseBody List<day_board> itList() {
      
      List<day_board> list = service.getitList();
      
      return list;
   }
   @GetMapping("/sport")
   public @ResponseBody List<day_board> sportList() {
      
      List<day_board> list = service.getsportList();
      
      return list;
   }
   @GetMapping("/issue")
   public @ResponseBody List<day_board> issueList() {
      
      List<day_board> list = service.getissueList();
      
      return list;
   }
   
   
   
   
   
}