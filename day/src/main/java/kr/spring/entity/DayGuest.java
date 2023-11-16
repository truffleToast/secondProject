package kr.spring.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class DayGuest {
   private int idx; 
    private String host;
      private String visitor;
    private String indate;
    private String content;
}