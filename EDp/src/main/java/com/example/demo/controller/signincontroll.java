package com.example.demo.controller;

import java.util.List;
import java.util.Optional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.TransactionStatus;
import org.springframework.transaction.support.*;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.demo.Course;
import com.example.demo.Enroll;
import com.example.demo.Marks;
import com.example.demo.sign;
import com.example.demo.StudentGrades;
import com.example.demo.dao.Enrollrepo;
import com.example.demo.dao.Marksrepo;
import com.example.demo.dao.StudentGradesrepo;
import com.example.demo.dao.courserepo;
import com.example.demo.dao.signrepo;


import jakarta.persistence.*;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import jakarta.transaction.Transactional;
import jakarta.websocket.Session;

import org.springframework.ui.Model; 

@Controller
public class signincontroll 
{
	   boolean login=false;
	   boolean course=false;
	   String loggedInUser;
	   
	   @Autowired
	   signrepo repo;
	   
	   @Autowired
	   courserepo repo1;
	   
	   @Autowired
	   Enrollrepo repo2;
	    
	   @Autowired
	   Marksrepo repo3;
	    
	   @Autowired
	   StudentGradesrepo repo4;
	   
	   @Autowired
	   private JdbcTemplate jdbcTemplate; 

	   @GetMapping("main")
	   public String main(Model model)
	    {
	    	model.addAttribute("name","User");
	    	return "main.jsp";
	    }
	    
	    @GetMapping("signup")
	    public String home() 
	    {
	        return "signup.jsp";
	        
	    }

	    @GetMapping("signcheck")
	    public String addsign(@ModelAttribute("user") sign user,Model model)
	    {
	    	model.addAttribute("errorMessage","");
	    	long count = repo.countByUsername(user.getUsername());
	    	if(count==0)
	    	{
	    		model.addAttribute("errorMessage","");
		        repo.save(user);
		        System.out.println(user+"saved to database");
		        model.addAttribute("saveMessage"," ");
		        model.addAttribute("name",user.getFirstName()+" "+user.getLastName());
		        executeCustomQuery();
		        loggedInUser=user.getUsername();
		        login=true;
		        return "main.jsp"; 
	    	}
	    	else if(!user.getUsername().equals(" "))
	    	{
	    		System.out.println(user+"aldready exist");
	    	    model.addAttribute("errorMessage","Username already exists.Please choose a different Username.");   
	    	    model.addAttribute("user", user);
	    	    return "signup.jsp"; 
	    	}
	    	else
	    	{
	    		 return "signup.jsp";
	    	}
	    }
	  
	    @GetMapping("login")
	    public String home1() 
	    {
	        return "login.jsp";
	    }
	    
	    int l=0;	    
	    @GetMapping("logcheck")
	    public String addlog(@RequestParam("username") String uname,@RequestParam("password") String pass,Model model)
	    {
	    	model.addAttribute("errorMessage","");
	    	long count =repo.countByPasswordAndUsername(pass,uname);
	    	if(count==1)
	    	{
	    		l=1;
	    		model.addAttribute("errorMessage","");
		        System.out.println("loged in succesfully");
		        String name=repo.findFullNameByUsername(uname);
		        System.out.println(name);
		        model.addAttribute("name",name);
		        login=true;
		        loggedInUser=uname; 
		        return "main.jsp";
		        
	    	}
	    	else 
	    	{
	    		System.out.println("wrong credentials");
	    	    model.addAttribute("errorMessage","wrong credentials");  
	    	    loggedInUser="";
	    	    login=false;
	    	    return "login.jsp";
	    	}
	         
	    }
	    			
	    @GetMapping("logout")
	    public String logout(HttpServletRequest request,Model model) 
	    {
	        HttpSession session = request.getSession(false);
	        if (session != null)
	        {
	            session.invalidate();
	        }
	        loggedInUser="";
	        login=false;
	        model.addAttribute("name","User");
	        return "main.jsp"; 
	    }

	    public void executeCustomQuery() {
	        String insertQuery = "INSERT INTO student (username) " +
	                             "SELECT DISTINCT s.username " +
	                             "FROM sign s LEFT JOIN student st ON s.username = st.username " +
	                             "WHERE st.username IS NULL";

	        jdbcTemplate.execute(insertQuery);
	    }
	    
	    @GetMapping("search")
	    public String Searchbox(@RequestParam("courseType") String cname,Model model)
	    {
	    	  if(cname.length()>=3)
	    	  {
	      	  List<String> matchingCourseTypes = repo1.findCourseTypeByLike(cname);

	    	    if (!matchingCourseTypes.isEmpty())
	    	    {
	    	        model.addAttribute("error", matchingCourseTypes);
	    	        return "main.jsp";
	    	    } else
	    	    {
	    	        model.addAttribute("error", "Searched course not found");
	    	        return "main.jsp";
	    	    }
	    	  }
	    	  else
	    	  {
	    		   model.addAttribute("error", "Searched course not found");
	    	       return "main.jsp";

	    	  }

	    	}
	    
	    
	    String ctype="";
	    
	    @GetMapping("course1")
	    public String course1(Model model) 
	    {   
	    	if(login)
	    	{
	    	String name=repo.findFullNameByUsername(loggedInUser);
 		    model.addAttribute("name",name);
	    	}
	    	else
	    	{
	    		model.addAttribute("name","User");
	    	}
	    	course=true;
	    	ctype="Global CEO Program";
	        return "course.jsp";
	    }
	    
	    @GetMapping("course2")
	    public String course2(Model model) 
	    {   
	    	if(login)
	    	{
	    	String name=repo.findFullNameByUsername(loggedInUser);
 		    model.addAttribute("name",name);
	    	}
	    	else
	    	{
	    		model.addAttribute("name","User");
	    	}
	    	course=true;
	    	ctype="Businesses for Inclusive Lab";
	        return "course2.jsp";
	    }
	    
	    @GetMapping("course3")
	    public String course3(Model model) 
	    {   
	    	if(login)
	    	{
	    	String name=repo.findFullNameByUsername(loggedInUser);
 		    model.addAttribute("name",name);
	    	}
	    	else
	    	{
	    		model.addAttribute("name","User");
	    	}
	    	course=true;
	    	ctype="Leading Strategic Change";
	        return "course3.jsp";
	           
	    } 
	    @GetMapping("course4")
	    public String course4(Model model) 
	    {   
	    	if(login)
	    	{
	    	String name=repo.findFullNameByUsername(loggedInUser);
 		    model.addAttribute("name",name);
	    	}
	    	else
	    	{
	    		model.addAttribute("name","User");
	    	}
	    	course=true;
	    	ctype="Women's Leadership Program";
	        return "course4.jsp";
	    } 
	    
	    @GetMapping("course5")
	    public String course5(Model model) 
	    {   
	    	if(login)
	    	{
	    	String name=repo.findFullNameByUsername(loggedInUser);
 		    model.addAttribute("name",name);
	    	}
	    	else
	    	{
	    		model.addAttribute("name","User");
	    	}
	    	course=true;
	    	ctype="Algorithmic Business Thinking";
	        return "course5.jsp";
	    } 
	    
	    @GetMapping("course6")
	    public String course6(Model model) 
	    {   
	    	if(login)
	    	{
	    	String name=repo.findFullNameByUsername(loggedInUser);
 		    model.addAttribute("name",name);
	    	}
	    	else
	    	{
	    		model.addAttribute("name","User");
	    	}
	    	course=true;
	    	ctype="Embracing the Unexpected";
	        return "course6.jsp";
	    }
	    

	    
	    
	    @GetMapping("enrolls")
	    public String course(Model model)
	    {
	    	System.out.println("Course: " + ctype);
	        System.out.println("Login status: " + login);
	        String x=""; 
	    	if(course && login)
	    	{
	    		    model.addAttribute("name","User");
	    		    Enroll enrollment = new Enroll();
	    		    int count = repo2.countEnrollByUsernameAndCourseType(loggedInUser,ctype);
	    		    int count1=repo2.countEnrollByUsernameAndStatus(loggedInUser,1);
	    		    int currentstatus=repo2.countEnrollByUsernameAndCourseTypeAndNegativeStatus(loggedInUser,ctype);
	    		    if(count==0 && count1<3)
	    		    {
		                enrollment.setUser(repo.findByUsername(loggedInUser));
		                enrollment.setCourse(ctype);
		                enrollment.setStatus(1);
		                repo2.save(enrollment);
		                model.addAttribute("message", "Enrollment request sent for course: " + ctype);
		                
	                }
	    		    else if(count1==3 && currentstatus==0)
	    		    {
	    		    	model.addAttribute("message", "Maximum Courses that can be enrolled at a time is 3, "
	    		    			+ "complete atleast one course to enroll in this course" );
	    		    }
	    		    else if(count==1 && currentstatus==0)
	    		    {
	    		    	model.addAttribute("message", "Aldready enrolled " + ctype);
	    		    }
	    		    else if(currentstatus!=0 )
	    		    {
	    		    	model.addAttribute("message", "Completed " + ctype);
	    		    }
	                
	                System.out.println(enrollment);
	                
	              if(ctype=="Global CEO Program")
	  	    	  {
	  	    		 return "course.jsp";	    		

	  	    	  }
	  	    	 else if(ctype=="Businesses for Inclusive Lab")
	  	    	  {
	  	    		 return "course2.jsp";	    		
	  	    		
	  	    	  }
	  	    	 else if(ctype=="Leading Strategic Change")
	  	    	  {
	  	    		 return "course3.jsp";	    		

	  	    	  }
	  	    	 else if(ctype=="Women's Leadership Program")
	  	    	  {
	  	    		 return "course4.jsp";	    		
	  	    		
	  	    	  }
	  	    	 else if(ctype=="Algorithmic Business Thinking")
	  	    	  {
	  	    		 return "course5.jsp";	    		
	  	    		
	  	    	  }
	  	    	 else //if(ctype=="Embracing the Unexpected")
	  	    	  {
	  	    		 return "course6.jsp";	    		
	  	    		
	  	    	  }
	    	}
	    	else
	    	{
	             return "login.jsp";
	    	}
	    	
	    }
	    
	    
	    @GetMapping("gocourse")
	    public String gocourse(Model model)
	    {
	    	String x="";    
	    	 try {
	    	        
	    	        if (loggedInUser == null) {
	    	            throw new IllegalArgumentException("LoggedIn user cannot be null");
	    	        }

	    	        
	    	        if (ctype == null) {
	    	            throw new IllegalArgumentException("Course type cannot be null");
	    	        }

	    	int count = repo2.countEnrollByUsernameAndCourseType(loggedInUser,ctype);
	    	String fname=repo.findNameByUsername(loggedInUser);
 		    model.addAttribute("name",fname);
	    	if(count==1)
	    	{
	    	  if(ctype=="Global CEO Program")
	    	  {
	    		 return "course1full.jsp";	    		
	    		
	    	  }
	    	 else if(ctype=="Businesses for Inclusive Lab")
	    	  {
	    		 return "course2full.jsp";	    		
	    		
	    	  }
	    	 else if(ctype=="Leading Strategic Change")
	    	  {
	    		 return "course3full.jsp";	    		
	    		
	    	  }
	    	 else if(ctype=="Women's Leadership Program")
	    	  {
	    		 return "course4full.jsp";	    		
	    		
	    	  }
	    	 else if(ctype=="Algorithmic Business Thinking")
	    	  {
	    		 return "course5full.jsp";	    		
	    		
	    	  }
	    	 else //if(ctype=="Embracing the Unexpected")
	    	  {
	    		 return "course6full.jsp";	    		
	    		
	    	  }
	    	}
	    	else
	    	{
	    		  model.addAttribute("name","User");
	    		  model.addAttribute("message1", "Enroll to view course");
	    		  if(ctype=="Global CEO Program")
	    		  {
		    		
		    	  }
		    	 else if(ctype=="Businesses for Inclusive Lab")
		    	  {
		    		 x="2";   		
		    		
		    	  }
		    	 else if(ctype=="Leading Strategic Change")
		    	  {
		    		 x="3"; 		
		    		
		    	  }
		    	 else if(ctype=="Women's Leadership Program")
		    	  {
		    		 x="4";   		
		    		
		    	  }
		    	 else if(ctype=="Algorithmic Business Thinking")
		    	  {
		    		 x="5";   		
		    		
		    	  }
		    	 else //if(ctype=="Embracing the Unexpected")
		    	  {
		    		 x="6";	    		
		    		
		    	  }
	    		  return "course"+x+".jsp";
	    		 
	    	}
	    	 }
	    	 catch (IllegalArgumentException e)
	    	 {
	    	        System.err.println("Did not login");
	    	        return "login.jsp";
	    	 }
	    	
	    	
	    }
	    
	    
	    @GetMapping("Quiz")
	    public String handleQuizResult(
	            @RequestParam(required = false) String question1,
	            @RequestParam(required = false) String question2,
	            @RequestParam(required = false) String question3,
	            @RequestParam(required = false) String question4,
	            @RequestParam(required = false) String question5,
	            @RequestParam int testId,Model model) 
	    {
	    		
	    	Marks existingMarks = repo3.findByUsernameAndCourseTypeAndTestId(loggedInUser,ctype,testId);

	        int c = 0;

	        String[] correctAnswers = {"C", "C", "B", "B", "D"};

	        question1 = (question1 == null) ? "false" : question1;
	        question2 = (question2 == null) ? "false" : question2;
	        question3 = (question3 == null) ? "false" : question3;
	        question4 = (question4 == null) ? "false" : question4;
	        question5 = (question5 == null) ? "false" : question5;

	        boolean C1 = correctAnswers[0].equals(question1);
	        boolean C2 = correctAnswers[1].equals(question2);
	        boolean C3 = correctAnswers[2].equals(question3);
	        boolean C4 = correctAnswers[3].equals(question4);
	        boolean C5 = correctAnswers[4].equals(question5);

	        if (C1) c++;
	        if (C2) c++;
	        if (C3) c++;
	        if (C4) c++;
	        if (C5) c++;
	        
	        if(testId==1005)
        	{
        		c=c*16;
        	}
	        
	 
	        if (existingMarks != null) 
	        {
	            int existingMaxMarks = existingMarks.getSecuredMarks();
	            if(existingMarks.getAttempts()<3)
	            {
		            int ac=existingMarks.getAttempts()+1;
		            existingMarks.setAttempts(ac);
		            repo3.save(existingMarks);
		            if (c > existingMaxMarks) 
		            { 
		                existingMarks.setSecuredMarks(c);
		                repo3.save(existingMarks);
			            model.addAttribute("score"+testId, "Your Highest score is " + c);
			           
		            }
	            }
	            else if(existingMarks.getAttempts()>=3)
	            {
	            	 model.addAttribute("score"+testId, "Your completed your 3 attempts for the test ,Your final score is"+existingMaxMarks);		            	
	            }
	            else 
	            {	
	                model.addAttribute("score"+testId, "Your Highest score remains " + existingMaxMarks);
	            	
	            }
	        } 
	        else
	        {
	            Marks newMark = new Marks();
	            newMark.setCourseType(ctype);
	            newMark.setUsername(loggedInUser);
	            newMark.setTestId(testId);
	            newMark.setSecuredMarks(c);
	            newMark.setAttempts(1);
	            repo3.save(newMark);
	            model.addAttribute("score"+testId, "Your Highest score is " + c);
	           
	        }
	        
	        String name=repo.findFullNameByUsername(loggedInUser);
 		    model.addAttribute("name",name);
	        if(ctype=="Global CEO Program")
	    	  {
	    		 return "course1full.jsp";	    		
	    		
	    	  }
	    	 else if(ctype=="Businesses for Inclusive Lab")
	    	  {
	    		 return "course2full.jsp";	    		
	    		
	    	  }
	    	 else if(ctype=="Leading Strategic Change")
	    	  {
	    		 return "course3full.jsp";	    		
	    		
	    	  }
	    	 else if(ctype=="Women's Leadership Program")
	    	  {
	    		 return "course4full.jsp";	    		
	    		
	    	  }
	    	 else if(ctype=="Algorithmic Business Thinking")
	    	  {
	    		 return "course5full.jsp";	    		
	    		
	    	  }
	    	 else //if(ctype=="Embracing the Unexpected")
	    	  {
	    		 return "course6full.jsp";	    		
	    		
	    	  }
	    }
        
	   /* 
	    @GetMapping("Quizdisplay")
	    public String displaydetail(Model model,@RequestParam int testId)
	    {
	    	//ModelAndView mv=new ModelAndView();
	    	Marks existingMarks = repo3.findByUsernameAndTestId(loggedInUser,testId);
	    	Integer total =repo3.findSumMarksByUsernameAndCourseAndTestId(loggedInUser,ctype);
	    	if (existingMarks != null) 
	    	{
	    		 model.addAttribute("score"+testId, "Your Highest score is " +existingMarks );	    		
	    	}
	    	if(existingMarks.getAttempts()>3)
	    	{
	    		model.addAttribute("score"+testId, "Max attempts 3 completed, your score is"+total);
	    	}
	    	else
	    	{
	    		 model.addAttribute("score"+testId, "Write test to get certificate");
	    	}
	    	return "#";
	    	 
	    }
	    */
	    int eligible = 0;

	    @GetMapping("grading")
	    @Transactional
	    public ModelAndView Grading(Model model) {
	        ModelAndView mv = new ModelAndView();
	        try {
	            Integer total = repo3.findSumMarksByUsernameAndCourse(loggedInUser, ctype);
	            Integer countEnrolled = repo3.findCountMarksByUsernameAndCourse(loggedInUser, ctype);
	            
	            if (total != null && countEnrolled == 5) {
	                String sql = "SELECT CalculateGrade(?) AS Grade";
	                String grade = jdbcTemplate.queryForObject(sql, String.class, total);
	                StudentGrades newgrade = new StudentGrades();
	                Integer existingGrade = repo4.findGradeByUsernameAndCourse(loggedInUser, ctype);

	                if (!grade.equals("F")) {
	                    eligible = 1;
	                }

	                if (existingGrade != null)
	                {
	                    StudentGrades existingGradeRecord = repo4.findByUsernameAndCourseType(loggedInUser, ctype);

	                    if (existingGradeRecord != null) 
	                    {
	                        existingGradeRecord.setTotalmarks(total);
	                        existingGradeRecord.setGrade(grade);
	                        repo4.save(existingGradeRecord);

	                        mv.addObject("obj", existingGradeRecord);
	                        mv.setViewName("gradesheet.jsp");
	                    }
	                    else
	                    {
		                    // Create a new grade record if existingGrade is null
		                    newgrade.setCourseType(ctype);
		                    newgrade.setUsername(loggedInUser);
		                    newgrade.setTotalmarks(total);
		                    newgrade.setGrade(grade);
		                    repo4.save(newgrade);

		                    mv.addObject("obj", newgrade);
		                    mv.setViewName("gradesheet.jsp");
		                }
	                    
	                } 
	                else {
	                    // Create a new grade record if existingGrade is null
	                    newgrade.setCourseType(ctype);
	                    newgrade.setUsername(loggedInUser);
	                    newgrade.setTotalmarks(total);
	                    newgrade.setGrade(grade);
	                    repo4.save(newgrade);

	                    mv.addObject("obj", newgrade);
	                    mv.setViewName("gradesheet.jsp");
	                }

	                if (!grade.equals("F")) {
	                    repo2.updateStatusByUsernameAndCourseType(loggedInUser, ctype);
	                }

	                String name = repo.findFullNameByUsername(loggedInUser);
	                model.addAttribute("name", name);
	            } else {
	                mv.setViewName("empty.jsp");
	                model.addAttribute("errorsubmit", "Attempt all tests");
	            }
	        } catch (DataAccessException e) {
	            System.err.println("DataAccessException occurred: " + e.getMessage());
	            mv.setViewName("empty.jsp");
	            model.addAttribute("errorMessage", "Error processing the grading. Please try again later.");
	        }
	        return mv;
	    }

	    
	    @GetMapping("profile")
	    public ModelAndView profile(Model model)
	    {
	    	 ModelAndView mv = new ModelAndView();
	    	 try 
	    	 {
	    	String fname=repo.findNameByUsername(loggedInUser);
 		    model.addAttribute("name",fname);
	 		 
	 		
	 		 sign user=repo.findAllByUsername(loggedInUser);
	 		 List<String> courses=repo2.findAllCourseTypeByUsernameAndNegativeStatus(loggedInUser);
	 		 
	 		String courses_ = String.join(", ",courses);
	 		 
	 		 String sql = "SELECT student_id from student where username=?";
             String id = jdbcTemplate.queryForObject(sql,String.class,loggedInUser); 		 
	 		 model.addAttribute("id",id);
	 		 
	 		 mv.addObject("user",user);
	    	 //mv.addObject("c1",courses);
	    	
	    	 for (int i = 0; i < courses.size(); i++) {
	             System.out.println(courses.get(i));
	         }
	    	 if(courses.size()!=0)
	    	 model.addAttribute("courses",courses_);
	    	 else
	         model.addAttribute("courses","None");
	    	 
	    	 
	    	 int cc=repo2.countAllCourseTypeByUsernameAndNegativeStatus(loggedInUser);
	    	 model.addAttribute("comp",cc);
	    	 
	    	 List<String> courses1=repo2.findAllCourseTypeByUsernameAndPositiveStatus(loggedInUser);
	    	 String courses1_ = String.join(", ",courses1);
	    	 model.addAttribute("courses1",courses1_);
	    	 
	    	 mv.setViewName("profile.jsp");
	    	 }
	    	 catch (EmptyResultDataAccessException e) 
	    	 {
	    	        
	    	        System.err.println("Error: Username not found or invalid");

	    	        mv.setViewName("login.jsp");

	    	 }
	    	 
	    	 return mv;
	    	 
	    }
	    @GetMapping("certificate")
	    public String certificate(Model model)
	    {
	    	if(eligible==1)
	    	{
	    		String name=repo.findFullNameByUsername(loggedInUser);
	 		    model.addAttribute("name",name);
	 		   model.addAttribute("coursetype",ctype);
	    	    return "certificate.jsp";
	    	}
	    	else
	    	{
    		model.addAttribute("errmsg","Your not eligible for certicicate");
    		return "empty.jsp";
	    	}
	    	
	    }
    
}


	    
	    	

