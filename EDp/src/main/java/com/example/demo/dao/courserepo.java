package com.example.demo.dao;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import com.example.demo.Course;

public interface courserepo extends CrudRepository<Course, Integer>
{
	
	@Query("SELECT c.courseType FROM Course c WHERE c.courseType LIKE %:courseType%")
    List<String> findCourseTypeByLike(@Param("courseType") String courseType);
	
}
