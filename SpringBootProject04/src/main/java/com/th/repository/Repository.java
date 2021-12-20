package com.th.repository;

import org.springframework.data.jpa.repository.JpaRepository;
//import org.springframework.stereotype.*;
import com.th.model.Train;

@org.springframework.stereotype.Repository
public interface Repository extends JpaRepository<Train, Integer>{

}
