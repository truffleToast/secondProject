package kr.spring.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.spring.entity.day_blog;
import kr.spring.entity.day_guestbook;
import kr.spring.entity.day_user;

@Mapper
public interface DayMapper {

      public day_user login(day_user vo);

      public void join(day_user vo);

      public day_user idCheck(String username);

      public day_user nickCheck(String nickname);

      public List<day_guestbook> all(String id);

      public day_blog getBlog(String username);

      public void profileUpdate(day_blog mvo);

      public void visitInsert(day_guestbook vo);

      public void makeblog(day_blog vo);

      public void del(int idx);

      public String get(int idx);
      
      public List<day_blog> follow(String username);


}