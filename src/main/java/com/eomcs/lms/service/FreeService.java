package com.eomcs.lms.service;

import java.util.List;
import com.eomcs.lms.domain.Free;

public interface FreeService {
  List<Free> list(int pageNo, int pageSize);
  int add(Free free);
  Free get(int no);
  List<Free> search(String keyword);
  Free getUpdate(int no);
  int update(Free free);
  int delete(int no);
  int size();
}
