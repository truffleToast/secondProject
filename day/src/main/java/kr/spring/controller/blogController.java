package kr.spring.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartRequest;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import kr.spring.entity.day_blog;
import kr.spring.mapper.BlogMapper;
import kr.spring.service.BlogService;

@Controller //현재 클래스를 핸들러 맵핑이 찾기위해 컨트롤러로 등록하는 부분 (어노테이션)
@RequestMapping("/blog/*")
public class blogController {

	@Autowired
	private BlogService service;
	
	@Autowired
	private BlogMapper mapper;
	
	
	
	@GetMapping("/blogUpdate")
	public String blogUpdate(@RequestParam("username") String username, Model model) {
		
		day_blog blog = service.get(username);  // 해당되는 username의 blog 정보 가져오기
		model.addAttribute("blog", blog);  // blog(vo)를 model에 담아서 수정 페이지로 보내줌
		
		
		
		return "blog/list1";
	}
	
	
	@PostMapping("/blogUpdate")
	public String blogUpdate(@ModelAttribute("blog") day_blog blog, RedirectAttributes rttr) {
		System.out.println(blog.toString());
		service.blogUpdate(blog);
		
		
		return "redirect:/blog";
	}
	@GetMapping("/edit")
	public String edit() {
		
		return "blog/edit";
	}
	
	
	
}
