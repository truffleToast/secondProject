package kr.spring.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.spring.entity.day_board;

@Mapper
public interface BoardMapper {

      public List<day_board> getLifeList();

      public List<day_board> gettravelList();

      public List<day_board> getcultureList();

      public List<day_board> getitList();

      public List<day_board> getsportList();

      public List<day_board> getissueList();
      
}