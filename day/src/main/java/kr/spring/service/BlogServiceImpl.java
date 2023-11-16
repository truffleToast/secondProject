package kr.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.spring.entity.day_blog;
import kr.spring.mapper.BlogMapper;


@Service
public class BlogServiceImpl implements BlogService {
	
	@Autowired
	private BlogMapper mapper;

	@Override
	public void blogUpdate(day_blog blog) {
		// 블로그 수정
		mapper.updateBlog(blog);
		
	}

	@Override
	public day_blog get(String username) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<day_blog> getBlog() {
		// TODO Auto-generated method stub
		
		List<day_blog> blog = mapper.getBlog();
		return blog;
	}

	@Override
	public day_blog blogSetting(String username) {
		
		day_blog blog = mapper.blogSetting(username);
		
		return blog;
	}

	@Override
	public day_blog allblog(String username) {
		
		day_blog blog = mapper.allblog(username);
		// TODO Auto-generated method stub
		return blog;
	}

	
	

	
	
	
	
	
	
	
	
}
