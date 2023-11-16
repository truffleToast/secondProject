package kr.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.spring.entity.day_blog;
import kr.spring.entity.day_guestbook;
import kr.spring.entity.day_user;
import kr.spring.mapper.DayMapper;

@Service
public class DayServiceImpl implements DayService {
   
   @Autowired
   private DayMapper mapper;

   @Override
   public day_user login(day_user vo) {
      // 로그인하는 기능
      day_user mvo = mapper.login(vo);
      
      return mvo;
   }

   @Override
   public void join(day_user vo) {
      mapper.join(vo);
      
   }

   @Override
   public Boolean idCheck(String username) {
      day_user vo = mapper.idCheck(username);
      if(vo != null) {
         return true;
      }
      return false;
   }

   @Override
   public Boolean nickCheck(String nickname) {
      day_user vo = mapper.nickCheck(nickname);
      if(vo != null) {
         return true;
      }
      return false;
   }

   @Override
   public List<day_guestbook> getVisit(String id) {
      List<day_guestbook> list = mapper.all(id);
      return list;
   }

   @Override
   public day_blog getBlog(String username) {
      // getMember 메서드는 memId와 일치하는 회원의 정보 (Member)를 가져옴
      day_blog vo = mapper.getBlog(username);
      return vo;
   }

   @Override
   public void profileUpdate(day_blog mvo) {
      // 해당되는 아이디의 프로필 값을 바꿔줌
      mapper.profileUpdate(mvo);
      
   }

   @Override
   public void visitIn(day_guestbook vo) {
      mapper.visitInsert(vo);
   }

   @Override
   public void makeBlog(day_blog vo) {
      mapper.makeblog(vo);
      
   }

   @Override
   public String delGet(int idx) {
      String hostId = mapper.get(idx);
      mapper.del(idx);
      return hostId;
   }

   @Override
   public List<day_blog> follow(String user_id) {
      List<day_blog> list = mapper.follow(user_id);
      
      return list;
   }
   
   
   
}