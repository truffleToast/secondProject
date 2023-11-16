package kr.spring.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import kr.spring.entity.day_blog;
import kr.spring.entity.day_guestbook;
import kr.spring.entity.day_user;
import kr.spring.service.DayService;

@Controller
@RequestMapping("/myblog/*")
public class MydiaryController {
   // 마이블로그 관련 컨트롤러 
   
   @Autowired
   private DayService service;
   
   // 페이지 이동
   @RequestMapping("in")
   public String in(HttpSession session, Model model) {
      System.out.println("마이블로그 페이지 이동");
      day_user mvo = (day_user)session.getAttribute("mvo");
        
           // DB에서 블로그 정보 싹다 가져오기 (아이디 기준)
       day_blog myblog = service.getBlog(mvo.getUser_id());
       System.out.println(myblog.toString());
        
        model.addAttribute("myblog",myblog);
      return "blog/mydiary";
   }
   
   // 방명록 전체 띄우기
   @RequestMapping("getVisit")
   public @ResponseBody List<day_guestbook> getVisit(String id) {
      List<day_guestbook> list = service.getVisit(id);
      return list;
   }
   
   // 내 블로그 생성폼 이동
   @RequestMapping("/makeForm")
   public String makeForm() {
      return "blog/make";
   }
   
   // 내블로그 생성
   @RequestMapping("/makemyblog")
   public String makemyblog(HttpServletRequest request, RedirectAttributes rttr) {
      
      MultipartRequest multi = null;
      // MultiPartRequest 객체를 생성하기 위해서는 5개의 정보가 필요
      // (1)요청 데이터 (2)저장경로 (3)최대크기 (4)인코딩 (5)파일명 중복제거

      // 1. 요청 데이터 : request 객체 안에 다 담겨있음(요청에 대한 정보)
      // 2. 저장경로
      String savePt = request.getRealPath("resources/upload");
      System.out.println(savePt);

      // 3. 이미지 최대크기
      int fileMaxSize = 10 * 1024 * 1024 * 10;

      // 유효성 검사
      // 기존 해당 프로필 이미지 삭제
      // -> 현재 로그인한 사람의 프로필 값을 가져와야 함

      // session.getAttribute("mvo") -> Member로 다운캐스팅 -> .getMemId() : mvo getter 사용
      //String username = ((DayUser) session.getAttribute("mvo")).getUsername();
      
      // 4. 인코딩 : UTF-8
      // 5. 파일명 중복제거 : 동일 파일명에 +1을 해줌 ( DefaultFileRenamePolicy() )
      // ☆★예외사항 처리 : 파일 업로드에 대한 예외 처리는 IOException이 해줌!
      try {
         multi = new MultipartRequest(request, savePt, fileMaxSize, "UTF-8", new DefaultFileRenamePolicy());
      } catch (IOException e) {
         // TODO Auto-generated catch block
         e.printStackTrace();
      }
      
      String username = multi.getParameter("user_id");
      String usernick = multi.getParameter("user_nick");
      String blog_intro = multi.getParameter("blog_greetings");
      String blog_body = multi.getParameter("blog_main");
      String blog_side = multi.getParameter("blog_sidebar");
      String blog_title = multi.getParameter("blog_title");
      
      // 업로드한 파일의 이름 가져오는 코드
      File file = multi.getFile("blog_profile");
      File headerfile = multi.getFile("blog_header");
      
      if (file != null) {
         System.out.println(file.getName());
         String ext = file.getName().substring(file.getName().lastIndexOf(".") + 1);
         System.out.println(ext);
         // file.getName().substring("." + 1) 이렇게만 해도 되지만
         // . 이 여러개 있는 경우
         // 마지막 . 뒤에 있는 확장자명만 가져오기 위해

         // 확장자가 소문자 , 대문자 인 경우 통일시켜주기 위해
         ext = ext.toUpperCase();

         if (!(ext.equals("PNG") || ext.equals("GIF") || ext.equals("JPG"))) {
            // 위 확장자명이 아니면 삭제해라
            if (file.exists()) {
               file.delete();
               rttr.addFlashAttribute("msgType", "실패 메세지");
               rttr.addFlashAttribute("msg", "이미지 파일만 가능합니다.(PNG, JPG, GIF)");
               return "redirect:/myblog/makeForm";
            }
         }
      }
      if (headerfile != null) {
         System.out.println(headerfile.getName());
         String ext = headerfile.getName().substring(headerfile.getName().lastIndexOf(".") + 1);
         System.out.println(ext);
         // file.getName().substring("." + 1) 이렇게만 해도 되지만
         // . 이 여러개 있는 경우
         // 마지막 . 뒤에 있는 확장자명만 가져오기 위해
         
         // 확장자가 소문자 , 대문자 인 경우 통일시켜주기 위해
         ext = ext.toUpperCase();
         
         if (!(ext.equals("PNG") || ext.equals("GIF") || ext.equals("JPG"))) {
            // 위 확장자명이 아니면 삭제해라
            if (file.exists()) {
               file.delete();
               rttr.addFlashAttribute("msgType", "실패 메세지");
               rttr.addFlashAttribute("msg", "이미지 파일만 가능합니다.(PNG, JPG, GIF)");
               return "redirect:/myblog/makeForm";
            }
         }
      }

      // 업로드한 파일의 이름을 가져오는 코드 : (key값) -> key값의 이름을 가져올 수 있음
      String newProfile = multi.getFilesystemName("blog_profile");
      // System.out.println(memId + "/" + newProfile);
      String blog_header = multi.getFilesystemName("blog_header");
      
      day_blog vo = new day_blog();
      vo.setUser_id(username);
      vo.setUser_nick(usernick);
      vo.setBlog_profile(newProfile);
      vo.setBlog_sidebar(blog_side);
      vo.setBlog_title(blog_title);
      vo.setBlog_greetings(blog_intro);
      vo.setBlog_header(blog_header);
      vo.setBlog_main(blog_body);
      
      // insert해라 서비스야
      service.makeBlog(vo);
      
      
      // 사진 업데이트 후 수정된 회원정보를 다시 가져와서 세션에 담기
      // 아이디랑 일치하는 회원정보 가져오는 getMember 메서드 이용하기!
      //Member m = mapper.getMember(memId);
      //session.setAttribute("mvo", m);
      //model.addAttribute("myblog", vo);
      
      rttr.addFlashAttribute("msgType", "성공 메세지");
      rttr.addFlashAttribute("msg", "프로필 사진 변경 완료!");
      return "redirect:/";
   }

   // 블로그 관리(내블로그 정보 수정)
   @RequestMapping("/blogUpdate")
   public String imgUpdate(HttpServletRequest request, HttpSession session, RedirectAttributes rttr) {
      // 이전에는 Request 객체를 따로 불러오지 않아도 내부적으로 스프링이 request.getParameter 해서 vo 묶어줬었음
      
      
      // 파일 업로드를 할 수 있게 도와주는 객체 필요 : cos.jar
      // (session, request 처럼 내장 객체 X -> 직접 만들어줘야 함)
      
      MultipartRequest multi = null;
      // MultiPartRequest 객체를 생성하기 위해서는 5개의 정보가 필요
      // (1)요청 데이터 (2)저장경로 (3)최대크기 (4)인코딩 (5)파일명 중복제거

      // 1. 요청 데이터 : request 객체 안에 다 담겨있음(요청에 대한 정보)
      // 2. 저장경로
      String savePt = request.getRealPath("resources/upload");
      System.out.println(savePt);

      // 3. 이미지 최대크기
      int fileMaxSize = 10 * 1024 * 1024 * 10;

      // 유효성 검사
      // 기존 해당 프로필 이미지 삭제
      // -> 현재 로그인한 사람의 프로필 값을 가져와야 함

      // session.getAttribute("mvo") -> Member로 다운캐스팅 -> .getMemId() : mvo getter 사용
      //String username = ((DayUser) session.getAttribute("mvo")).getUsername();
      
      // 4. 인코딩 : UTF-8
      // 5. 파일명 중복제거 : 동일 파일명에 +1을 해줌 ( DefaultFileRenamePolicy() )
      // ☆★예외사항 처리 : 파일 업로드에 대한 예외 처리는 IOException이 해줌!
      try {
         multi = new MultipartRequest(request, savePt, fileMaxSize, "UTF-8", new DefaultFileRenamePolicy());
      } catch (IOException e) {
         // TODO Auto-generated catch block
         e.printStackTrace();
      }
      
      String username = multi.getParameter("user_id");
      
      day_blog oldImg = service.getBlog(username);

      // -> 기존 프로필 사진 삭제
      // 해당 저장 경로 안에 이전의 사진 값을 삭제 하겠다
      File oldfile1 = new File(savePt + "/" + oldImg.getBlog_profile());
      File oldfile2 = new File(savePt + "/" + oldImg.getBlog_header());
      
      if (oldfile1.exists()) {
         // 있을때만 삭제하겠다!
         // 없을 때 삭제하면 500 에러남
         oldfile1.delete();
      }else if(oldfile2.exists()) {
         oldfile2.delete();
      }
      
      String usernick = multi.getParameter("user_nick");
      String blog_intro = multi.getParameter("blog_greetings");
      String blog_body = multi.getParameter("blog_main");
      String blog_side = multi.getParameter("blog_sidebar");
      String blog_title = multi.getParameter("blog_title");
      
      // 업로드한 파일의 이름 가져오는 코드
      File file = multi.getFile("blog_profile");
      File headerfile = multi.getFile("blog_header");
      
      if (file != null) {
         System.out.println(file.getName());
         String ext = file.getName().substring(file.getName().lastIndexOf(".") + 1);
         System.out.println(ext);
         // file.getName().substring("." + 1) 이렇게만 해도 되지만
         // . 이 여러개 있는 경우
         // 마지막 . 뒤에 있는 확장자명만 가져오기 위해

         // 확장자가 소문자 , 대문자 인 경우 통일시켜주기 위해
         ext = ext.toUpperCase();

         if (!(ext.equals("PNG") || ext.equals("GIF") || ext.equals("JPG"))) {
            // 위 확장자명이 아니면 삭제해라
            if (file.exists()) {
               file.delete();
               rttr.addFlashAttribute("msgType", "실패 메세지");
               rttr.addFlashAttribute("msg", "이미지 파일만 가능합니다.(PNG, JPG, GIF)");
               return "redirect:/";
            }
         }
      }
      if (headerfile != null) {
         System.out.println(headerfile.getName());
         String ext = headerfile.getName().substring(headerfile.getName().lastIndexOf(".") + 1);
         System.out.println(ext);
         // file.getName().substring("." + 1) 이렇게만 해도 되지만
         // . 이 여러개 있는 경우
         // 마지막 . 뒤에 있는 확장자명만 가져오기 위해
         
         // 확장자가 소문자 , 대문자 인 경우 통일시켜주기 위해
         ext = ext.toUpperCase();
         
         if (!(ext.equals("PNG") || ext.equals("GIF") || ext.equals("JPG"))) {
            // 위 확장자명이 아니면 삭제해라
            if (file.exists()) {
               file.delete();
               rttr.addFlashAttribute("msgType", "실패 메세지");
               rttr.addFlashAttribute("msg", "이미지 파일만 가능합니다.(PNG, JPG, GIF)");
               return "redirect:/";
            }
         }
      }

      // 업로드한 파일의 이름을 가져오는 코드 : (key값) -> key값의 이름을 가져올 수 있음
      String newProfile = multi.getFilesystemName("blog_profile");
      // System.out.println(memId + "/" + newProfile);
      String blog_header = multi.getFilesystemName("blog_header");
      
      day_blog vo = new day_blog();
      vo.setUser_id(username);
      vo.setUser_nick(usernick);
      vo.setBlog_profile(newProfile);
      vo.setBlog_sidebar(blog_side);
      vo.setBlog_title(blog_title);
      vo.setBlog_greetings(blog_intro);
      vo.setBlog_header(blog_header);
      vo.setBlog_main(blog_body);
      System.out.println(vo.toString());
      
      // 새로운 프로필로 바꿔라 서비스야
      service.profileUpdate(vo);
      
      
      // 사진 업데이트 후 수정된 회원정보를 다시 가져와서 세션에 담기
      // 아이디랑 일치하는 회원정보 가져오는 getMember 메서드 이용하기!
      //Member m = mapper.getMember(memId);
      //session.setAttribute("mvo", m);
      //model.addAttribute("myblog", vo);
      
      rttr.addFlashAttribute("msgType", "성공 메세지");
      rttr.addFlashAttribute("msg", "프로필 사진 변경 완료!");
      return "redirect:/myblog/in";
   }
}