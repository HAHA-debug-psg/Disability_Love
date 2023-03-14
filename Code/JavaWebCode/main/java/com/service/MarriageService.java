package com.service;


import com.entities.Marriage;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface MarriageService {
    List<Marriage> selectAll();

}
