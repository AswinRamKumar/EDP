package com.example.demo.dao;

import com.example.demo.Enroll;
import com.example.demo.sign;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

public interface Enrollrepo extends JpaRepository<Enroll, Long> 
{
	@Query("SELECT COUNT(e) FROM Enroll e WHERE e.user.username = :username AND e.status= :status")
	int countEnrollByUsernameAndStatus(@Param("username") String username,@Param("status") int status);
	
    List<Enroll> findAll();
    
    Optional<Enroll> findByUser(sign i);
    
    @Query("SELECT COUNT(e) FROM Enroll e WHERE e.user.username = :username AND e.Course_type = :Course_type")
    int countEnrollByUsernameAndCourseType(@Param("username") String username, @Param("Course_type") String Course_type);
    
    @Modifying
    @Query("UPDATE Enroll e SET e.status =0 WHERE e.user.username = :username AND e.Course_type = :Course_type")
    void updateStatusByUsernameAndCourseType(@Param("username") String username, @Param("Course_type") String Course_type);
    
    @Query("SELECT COUNT(e) FROM Enroll e WHERE e.user.username = :username AND e.Course_type = :Course_type AND e.status=0")
    int countEnrollByUsernameAndCourseTypeAndNegativeStatus(@Param("username") String username, @Param("Course_type") String Course_type);
    
    @Query("SELECT e.Course_type FROM Enroll e WHERE e.user.username = :username AND e.status=0")
    List<String> findAllCourseTypeByUsernameAndNegativeStatus(@Param("username") String username);

    @Query("SELECT COUNT(e) FROM Enroll e WHERE e.user.username = :username AND e.status=0")
    int countAllCourseTypeByUsernameAndNegativeStatus(@Param("username") String username);
    
    @Query("SELECT COUNT(e) FROM Enroll e WHERE e.user.username = :username AND e.status=1")
    int countAllCourseTypeByUsernameAndPositiveStatus(@Param("username") String username);
    
    @Query("SELECT e.Course_type FROM Enroll e WHERE e.user.username = :username AND e.status=1")
    List<String> findAllCourseTypeByUsernameAndPositiveStatus(@Param("username") String username);

}


