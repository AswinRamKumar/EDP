package com.example.demo.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.example.demo.StudentGrades;

public interface StudentGradesrepo extends JpaRepository<StudentGrades,Long>
{
	 @Query("SELECT COUNT(m.grade) FROM StudentGrades m WHERE m.username = :username AND m.courseType = :courseType")
	 Integer findGradeByUsernameAndCourse(@Param("username")String username,@Param("courseType") String courseType);
	 
	 @Query("SELECT s FROM StudentGrades s WHERE s.totalmarks = (SELECT MAX(sg.totalmarks) FROM StudentGrades sg WHERE sg.username = :username AND sg.courseType = :courseType)")
	 StudentGrades findSingleByMaxMarksByUsernameAndCourseType(@Param("username") String username, @Param("courseType") String courseType);
	
	 @Query("SELECT m FROM StudentGrades m WHERE m.username = :username AND m.courseType = :courseType")
	 StudentGrades findByUsernameAndCourseType(@Param("username")String username,@Param("courseType") String courseType);
}
