package kr.spring.service;

import java.util.List;

import kr.spring.entity.day_blog;

public interface BlogService {

	public void blogUpdate(day_blog blog);
	
	public day_blog get(String username);
	
	public List<day_blog> getBlog();

	public day_blog blogSetting(String username);

	public day_blog allblog(String username);

}
