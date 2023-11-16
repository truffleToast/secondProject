package kr.spring.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.spring.entity.day_blog;

@Mapper
public interface BlogMapper {

	public void updateBlog(day_blog blog);
	
	public day_blog getUsername(String username);
	
	public List<day_blog> getBlog();

	public day_blog blogSetting(String username);

	public day_blog allblog(String username);


		
}
