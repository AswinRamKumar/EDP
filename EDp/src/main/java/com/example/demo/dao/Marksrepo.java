package com.example.demo.dao;

import com.example.demo.Marks;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

public interface Marksrepo extends CrudRepository<Marks,Long> 
{

    @Query("SELECT MAX(m.securedMarks) FROM Marks m WHERE m.username = :username AND m.courseType = :courseType AND m.testId = :testId")
    Integer findMaxMarksByUsernameAndCourseAndTestId(@Param("username")String username,@Param("courseType") String courseType,@Param("testId") int testId
    );
    
    @Modifying
    @Query("UPDATE Marks m SET m.securedMarks = :SecuredMarks WHERE m.username = :username AND m.courseType = :courseType AND m.testId = :testId")
    void updateSecuredMarks(
            @Param("username") String username,
            @Param("courseType") String courseType,
            @Param("testId") int testId,
            @Param("SecuredMarks") int SecuredMarks
    );

    Marks findByUsernameAndCourseTypeAndTestId(String username,String CourseType,int testId); 
    
    @Query("SELECT SUM(m.securedMarks) FROM Marks m WHERE m.username = :username AND m.courseType = :courseType")
    Integer findSumMarksByUsernameAndCourse(@Param("username")String username,@Param("courseType") String courseType);
    
    @Query("SELECT COUNT(m.securedMarks) FROM Marks m WHERE m.username = :username AND m.courseType = :courseType")
    Integer findCountMarksByUsernameAndCourse(@Param("username")String username,@Param("courseType") String courseType);
}