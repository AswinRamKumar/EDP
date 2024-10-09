<!DOCTYPE html>
<html lang="en">

<head>
  <style>
    body {
      background-color:rgb(228, 215, 203);
      font-family: system-ui, -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;

    }

    a {
      text-decoration: none;
      color: black;
      font-size: 18px;
    }

    nav {
      display: flex;
      justify-content: space-between;
      align-items: center;
      padding: 7px;
      box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
      background-color: #343a40;
      color: white;
      margin: -0.5rem;
      padding: 0.5rem;
    }

    .logo {
      height: 10px;
    }

    .logo p {
      margin-top: -15px;
    }

    nav ul {
      margin: 0;
      padding: 0;
      list-style: none;
      display: flex;
    }

    nav a {
      color: rgb(22, 26, 19);
      text-decoration: none;
      font-weight: 100;
    }

    nav a:hover {
      font-weight: bold;
      text-decoration: underline;
      cursor: pointer;
    }

    .othernav {
      display:flex;
      height: 3rem;
      font-size: 15px;
    }

    .othernav p {
      margin-right: 1rem;
      color: white;
    }

    .othernav p:hover {
      opacity: 1;
      cursor: pointer;
    }
    #home
    {
      margin-top:12px;
      text-decoration:none;
      margin-right: 1rem;
      color: white;
    }

    #home :hover
    {
      opacity: 1;
      cursor: pointer;
    }




    .othernav button {
      background-color: #007bff;
      color: white;
      width: 5.7rem;
      height:2.8rem;
      font-size: 14px;
      border-radius: 5px;

    }

    .mainbody {
      display: flex;
      margin-left: 1rem;
      margin-top: 3rem;
    }

    .sidebar {
      margin-right: 5rem;

    }

    .card {
      height: 100px;
      width: 650px;
      background-color:whitesmoke;
      display: flex;
      margin-left: 7rem;
      padding-left: 13rem;

    }

    .card1 {
      height: 120px;
      padding-bottom: 5rem;
    }

    h1 {
      margin-left: 30rem;
    }

    .text1 {
      margin-left: 1rem;
      line-height: 40%;
      padding: 15px;
    }

    .text2 {
      margin-left: 1.3rem;
      line-height: 90%;
      padding: 4px;
    }

    .highlights {
      width: 50rem;
      margin-left: 10rem;
      font-size: 17px;
      box-shadow: 3px 4px inset rgb(69, 1, 69);
      margin-top: 4rem;
    }

    .ceoprogram {
      margin-left: 10rem;
      margin-top: 4rem;
      width: 50rem;
      font-size: 17px;
    }

    .enroll {
      margin-top: 25rem;
      width: 8rem;
      height: 3rem;
      margin-right: -20rem;
      margin-left: 3rem;
      background-color: rgb(0, 105, 217);
      color: white;
      font-weight: bolder;
      border-radius: 3rem;
    }

    .mainbody1 {
      display: flex
    }

    .facultycard {
      display: flex;
      width: 40rem;
      margin-top: 3rem;
      margin-left: 3rem
    }

    .facultytext {
      margin-left: 1.5rem;
    }

    @import url('https://fonts.googleapis.com/css2?family=Noto+Sans:ital,wght@0,300;1,200&display=swap');

    a {
      display: block;
    }

    #title {
      font-size: 40px;
      margin-left: 10px;
    }

    .background-color {
      position: absolute;
      top: 50px;
      right: 50px;
      /* background-color: #b72626; */
      padding: 20px;
    }

    .heading {
      margin-top: 3%;
      margin-left: 2%;
    }

    .btn {
      margin-top: 22rem;
      margin-left: 3rem;
      height:2.4rem;
      width:6rem;
      background-color: rgb(0, 105, 217);
      color: white;
      font-weight: bolder;
      border-radius: 1rem;
      cursor: pointer;
    }

    .btn1 {
      margin-left: 3.2rem;
      height:2.4rem;
      width:6rem;
      background-color: rgb(0, 105, 217);
      color: white;
      font-weight: bolder;
      border-radius: 1rem;
      cursor: pointer;
    }
    .btn1:hover {
      background-color: #0f86f5;
      color: white;
    }

    .btn:hover {
      background-color: #0f86f5;
      color: white;
    }

    .viewfaculty{
      font-size: 16px;
    }

    .viewfaculty:hover{
      text-decoration: underline;
    }

    .signin{
      border:none;
      margin-right: 2px;;
      font-size: 14px; 
      cursor: pointer;
      height: 2.5rem;
      margin-top: 0.1rem;
      border-radius: 2px;
    }
    
    .message{
      color: red;
      margin-left: 3rem;
    }
  </style>
  <title>EDP</title>
</head>

<nav>
  <div class="logo">
    <p style="font-size: 22px;">Entrepreneurship Program</p>
  </div>
  <div class="othernav">
    <a id="home" href="main.jsp">Home</a>
    <p>Courses</p>
    <p>About</p>
    <p>Alumni</p>
    <p>Contact</p>
    <button class="signin">Sign In</button>
    <button class="signin">${name}</button>
  </div>
</nav>

<body>

  <div class="mainbody">
    <div class="sidebar">
      <ul type="none">
        <li>
          <a class="a" href="#course"><img
              src="https://cdn-icons-png.flaticon.com/512/633/633816.png?w=740&t=st=1679996267~exp=1679996867~hmac=b70e1a85ef306959940e85a8cb3b72a4a1f59ed7f7226a28244bd68cd769929a"
              height="20"> Course Details</a>
        </li>
        <li><a class="a" href="#question"><img src="https://img.icons8.com/ios-filled/256/star.png" height="20">
            Faculty</a></li>
      </ul>

    </div>
    <div class="mainpic">
      <img src="course3.png" alt="image" height="300"
          style="border: 10px solid black;position: absolute; z-index: 1;">
          <form action="enrolls">
            <button class="btn" type="submit">Enroll</button>
            <p style="margin-right:-5px;">${message}</p>
        </form>  
        <form action="gocourse">
          <button class="btn1" type="submit">View Course</button>
          <p style="margin-right:-5px;">${message1}</p>
        </form>
      </div>

    <div class="maintext">
      <h1>Leading Strategic Change</h1><br><br>
      <div class="card" style="padding-top: 4rem;">
        <div class="text1">
          <h4><b>Course Dates</b></h4>
          <p>Jun 10-14, 2024</p>
          
        </div>
        <div class="text1">
          <h4><b>Format </b></h4>
          <p>In</p>
          <p>Person</p>
        </div>

        <div class="text1">
          <h4><b>Duration </b></h4>
          <p>5 weeks </p>
        </div>
        <div class="text1">
          <h4><b>Time Commitment</b></h4>
          <p>5 one-week</p>
          <p>modules</p>
        </div>
      </div>
      <div class="card card1">
        <div class="text2">
          <h4>Tracks</h4>
          <p>Management and Leadership</p>
          <br>
        </div>
        <div class="text2">
          <h4>Certificate Credits</h4>
          <br>
          <p>5.0 EEUs</p>
        </div>
        <div class="text2">
          <h4>Topics</h4>
          <p>- Negotiation & Communication</p>
          <p>- Organizations & Leadership </p>
          <p> - Systems Thinking</p>
        </div>
      </div>
    </div>
  </div>

  <div class="mainbody1">
    <div class="highlights" id="course"><br>
      <h3 style="margin-left: 1rem;">Course Highlights</h3>
      <ul>
        <li>Delivered in person over 4.5 days</li>
        <li>Explains the four critical steps required to deliver strategic change and sustained performance improvement</li>
        <li>Debunks existing advice on leading strategic change and provides a new, proven model for success</li>
        <li>Engages participants in case studies, group work, and real-world examples </li>
        <li>Results in an actionable, comprehensive plan for change that can be put into immediate practice
        </li>
        <li>Confers a certificate of course completion from MIT Sloan Executive Education</li>
      </ul>
    </div>
    <div class="faculty">
      <div class="facultycard">
        <div class="pic">
          <img src="faculty4.jpg" alt="" height="150">
        </div>
        <div class="facultytext">
          <h4> Elsbeth Johnson</h4>
          <p>Senior Lecturer, Technological Innovation, Entrepreneurship, and Strategic Management</p>
          <p>Sloan School of Management</p>
          <a href="" class="viewfaculty">View More</a>
        </div>
      </div>
      <div class="facultycard">

        <div class="pic">
            <img src="faculty5.jpg" alt="" height="150">
        </div>
        <div class="facultytext">
          <h4>Nelson P. Repenning</h4>
          <p>School of Management Distinguished Professor of System Dynamics and Organization Studies</p>
          <p>Sloan School of Management</p>
          <a href="" class="viewfaculty">View More</a>
        </div>
      </div>

    </div>

  </div>


  <div class="ceoprogram" id="question">
    <h3>Why attend the <i>Leading Strategic Change</i></h3>
    <p>Many strategic change efforts fail, and almost all are harder to execute than they need to be. Why? And what can leaders do to increase the chances that their change effort is successful?

        This new 4.5-day course explains the four critical steps required to deliver strategic change and sustained performance improvement. Centered around a proven but sometimes counter-intuitive change model, the course enables participants to work on their own strategic change throughout the week and to leave with a detailed plan that they can immediately put into practice. Led by renowned MIT faculty and thought leaders in organizational change, the course makes extensive use of case studies, table discussions, group work, and reflection.  
        
        The course is based on the “Step Up, Step Back” approach to leading strategic change, created by Dr. Elsbeth Johnson, the Faculty Director for this course. This approach requires leaders to step up and do more than they typically do in the early stages of the change and then do less than they typically do in its later stages. As a participant in Leading Strategic Change, you will also learn what’s wrong with the existing advice we’ve given leaders about how to lead change and why many of our most common beliefs about change set up organizations, and the people in them, to fail.  </div>
  <div>
  </div>
</body>

</html>