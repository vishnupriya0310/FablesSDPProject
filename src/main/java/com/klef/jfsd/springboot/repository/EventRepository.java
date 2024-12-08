package com.klef.jfsd.springboot.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import com.klef.jfsd.springboot.model.Event;

@Repository
public interface EventRepository extends CrudRepository<Event, Integer> {
}


