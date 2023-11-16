package kr.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import kr.spring.entity.day_board;
import kr.spring.mapper.BoardMapper;

@Service
public class BoardServiceImpl implements BoardService {
   
   @Autowired
   private BoardMapper mapper;
   
   
   @Override
   public List<day_board> getLifeList() {
      
      List<day_board> list = mapper.getLifeList();
      
         return list;
   }


   @Override
   public List<day_board> gettravelList() {
      
      List<day_board> list = mapper.gettravelList();
      
      return list;
   }


   @Override
   public List<day_board> getcultureList() {
      
      List<day_board> list = mapper.getcultureList();
      
      return list;
   }


   @Override
   public List<day_board> getitList() {
      
      List<day_board> list = mapper.getitList();
      
      return list;
   }


   @Override
   public List<day_board> getsportList() {
      
      List<day_board> list = mapper.getsportList();
      
      return list;
   }


   @Override
   public List<day_board> getissueList() {
      
      List<day_board> list = mapper.getissueList();
      
      return list;
   }

   
   
   
   
   
}