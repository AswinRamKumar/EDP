<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        * {
            margin: 0;
            padding: 0;
        }

        body {
            margin-bottom: 4rem;
            background-color: #e4d7cb;
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
            width: 100%;
            height: 4.8rem;
        }

        .logo {
            height: 10px;
        }

        .logo p {
            margin-top: -10px;
            margin-left: 0.5rem;
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
            display: flex;
            height: 3rem;
            font-size: 18px;
            padding-top: 1rem;
        }

        .othernav p {
            margin-right: 1rem;
            color: white;
        }

        .othernav p:hover {
            opacity: 1;
            cursor: pointer;
        }

        .othernav button {
            background-color: #007bff;
            color: white;
            width: 4.5rem;
            font-size: 14px;
            border-radius: 5px;

        }

        .signin {
            border: none;
            font-size: 14px;
            cursor: pointer;
            height: 2.5rem;
            border-radius: 2px;
            margin-top: -0.5rem;
            margin-right: 1rem;
        }

        .mainbody {
            display: flex;
        }

        .card {
            margin-left: 15rem;
            width: 50rem;
            padding: 2rem;
            border: 1px solid black;
            margin-top: 5rem;
            box-shadow: 2px 4px 8px;
            background-color:#f5f5f5;
        }

        .heading {
            font-size: 18px;
        }

        .cardinside {
            display: flex;
            margin-top: 1rem;
        }

        .checkbox {
            margin-top: 1rem;
        }

        .cardtext {
            margin-left: 10px;
        }

        .cardtext2 {
            display: flex;
        }

        .week-section {
            display: none;
        }

        .btn-class,
        .btn-quiz {
            margin-top: 1rem;
            margin-right: 1rem;
        }

        #videoIframe {
            width: 100%;
            height: 400px;
            /* Adjust the height as needed */
        }

        .sidebar {
            border-right: 2px solid black;
            height: 100vh;
            padding-left: 3rem;
            padding-top: 4rem;
            padding-right: 3rem;
            margin-top: 7px;
        }
        .grade{
            background-color: rgb(21, 115, 71);
            padding: 6px;
            border-radius: 5px;
            color: white;
        }

        .quiz{
            margin-top: -0.4rem;
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
    #home
    {
      text-decoration:none;
      margin-right: 1rem;
      color: white;
    }

    #home :hover
    {
      opacity: 1;
      cursor: pointer;
    }
    </style>
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <title>Course Handling Website</title>
</head>

<body>
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
            <c:choose style="margin-top: -0.2rem;">
                <c:when test="${empty name}">
                    <a class="btn btn-primary signin" href="signup.jsp" style="height: fit-content; border-radius: 3px;">Sign In</a>
                </c:when>
                <c:otherwise>
                    <div class="dropdown" style="flex-direction: row-reverse; display: inline; height:min-content; width:fit-content">
                        <button class="btn btn-primary" style="border-radius: 3px; margin-top: 0.1rem;" type="button" id="userDropdown"
                            aria-haspopup="true" aria-expanded="false">
                            ${name}
                        </button>
                        <div class="dropdown-menu" aria-labelledby="userDropdown">
                            <a class="dropdown-item" href="profile">Profile</a>
                            <form action="logout">
                                <button class="dropdown-item" type="submit">Logout</button>
                            </form>
                        </div>
                    </div>
                </c:otherwise>
            </c:choose>
        </div>
    </nav>
    

    <div class="mainbody">
        <div class="sidebar">
            <h3>Course Material</h3>
            <ul type="none">
                <li>
                    <button onclick="showWeek(1)" class="btn btn-primary btn-class">Week 1</button>
                </li>
                <li>
                    <button onclick="showWeek(2)" class="btn btn-primary btn-class">Week 2</button>
                </li>
                <li>
                    <button onclick="showWeek(3)" class="btn btn-primary btn-class">Week 3</button>
                </li>
                <li>
                    <button onclick="showWeek(4)" class="btn btn-primary btn-class">Week 4</button>
                </li>
                <li>
                    <button onclick="showWeek(5)" class="btn btn-primary btn-class" onclick="openQuizModal()">End
                        Sem</button>
                </li>
            </ul>
        </div>
        <div class="card">
            <h2>Course details</h2>
            <p>The BILT-Lab is a research, education, and action learning opportunity for business leaders who want to tackle their company’s talent needs and accelerate regional innovation and resilience. The course will bring together both private and public sector leaders to share and learn how to design and accelerate inclusive local talent development programs, reduce barriers to workforce participation, improve the local quality of life, and boost energy security and ecosystem health.

                Ideal participants are invested in building the prosperity of their local communities and are ready, willing, and able to analyze existing initiatives and identify programs that are ready to scale. Participants should be willing to approach problems with curiosity, and to share experiences openly with peers to support shared learning.
                
                Led by renowned researchers and industry-tested professionals, the BILT-Lab will identify and highlight impactful, place-based investments that produce measurable economic, social, and environmental outcomes. Particpants will learn about and implement solutions for inclusive talent development and community health that companies can deploy inside their walls as well as outside in the communities where they operate.
                
                By bringing business leaders and their academic, non-profit, or government partners together participants will help regions and cities find new and innovative solutions to local problems, and generate a clearinghouse of best practice case examples. 
                
                Completing this course will allow participants to build trusted, working relationships across sectors with the goal of helping their communities thrive.</p>
            <hr>
            <!-- Week 1 Section -->
            <div class="week-section" id="week1">
                <div class="cardinside">
                    <div class="checkbox">
                        <input type="checkbox">
                    </div>
                    <div class="cardtext">
                        <p class="heading">Businesses for  Thriving Lab</p>
                        <div class="cardtext2">
                            <p>Explore the challenges and opportunities of leadership.</p>
                            <p style="margin-left: 1rem;"> 5 min</p>
                        </div>
                    </div>
                </div>
                <!-- Add more content for Week 1 as needed -->
                <button class="btn btn-success btn-class" onclick="openVideo('./video.mp4')">Class Video</button>
                <button class="btn btn-warning btn-quiz" onclick="openQuizModalWeek1()">Quiz</button>
            </div>

            <!-- Week 2 Section -->
            <div class="week-section" id="week2">
                <div class="cardinside">
                    <div class="checkbox">
                        <input type="checkbox">
                    </div>
                    <div class="cardtext">
                        <p class="heading">Innovation Mindset</p>
                        <div class="cardtext2">
                            <p>Think like an entrepreneur to identify relevant trends</p>
                            <p style="margin-left: 1rem;">5min</p>
                        </div>
                    </div>
                </div>
                <!-- Add more content for Week 2 as needed -->
                <button class="btn btn-success btn-class" onclick="openVideo('./video.mp4')">Class Video</button>
                <button class="btn btn-warning btn-quiz" onclick="openQuizModalWeek2()">Quiz</button>
            </div>

            <div class="week-section" id="week3">
                <div class="cardinside">
                    <div class="checkbox">
                        <input type="checkbox">
                    </div>
                    <div class="cardtext">
                        <p class="heading">Systems Thinking</p>
                        <div class="cardtext2">
                            <p>Heighten your decision-making skills</p>
                            <p style="margin-left: 1rem;">5min</p>
                        </div>
                    </div>
                </div>
                <!-- Add more content for Week 3 as needed -->
                <button class="btn btn-success btn-class" onclick="openVideo('./video.mp4')">Class Video</button>
                <button class="btn btn-warning btn-quiz" onclick="openQuizModalWeek3()">Quiz</button>
            </div>

            <div class="week-section" id="week4">
                <div class="cardinside">
                    <div class="checkbox">
                        <input type="checkbox">
                    </div>
                    <div class="cardtext">
                        <p class="heading">Communication</p>
                        <div class="cardtext2">
                            <p>Clearly articulate and communicate your corporate purpose and vision</p>
                            <p style="margin-left: 1rem;">5min</p>
                        </div>
                    </div>
                </div>
                <!-- Add more content for Week 4 as needed -->
                <button class="btn btn-success btn-class" onclick="openVideo('./video.mp4')">Class Video</button>
                <button class="btn btn-warning btn-quiz" onclick="openQuizModalWeek4()">Quiz</button>
            </div>

            <div class="week-section" id="week5">
                <div class="cardinside">
                    <div class="checkbox">
                        <input type="checkbox">
                    </div>
                    <div class="cardtext">
                        <p class="heading">End Semester </p>
                        <div class="cardtext2">
                            <p>Exam Time</p>
                            <p style="margin-left: 1rem;">5min</p>
                        </div>
                    </div>
                </div>
                <!-- Add more content for Week 5 as needed -->
                <div style="display: flex;">
                    <button class="btn btn-warning btn-quiz" style="height: min-content;" onclick="openQuizModalWeek5()">Quiz</button>
                <form action="grading" onsubmit="openPopup(event)" style="margin-left:45%;">
                    <button type="submit" style="margin-top: 1.15rem;" class="btn btn-success" onclick="openPopup()">Submit for Grading</button>
                    <p>${errorsubmit}</p>
                </form>
                </div>

            </div>
        </div>
    </div>

    <!-- Video Modal -->
    <div class="modal fade" id="videoModal" tabindex="-1" aria-labelledby="videoModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="videoModalLabel">Class Video</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"
                        onclick="closeVideo()"></button>
                </div>
                <div class="modal-body">
                    <!-- Embedded Video -->
                    <video id="videoContainer" width="100%" height="315" controls>
                        <source src="" type="video/mp4">
                        Your browser does not support the video tag.
                    </video>
                </div>

                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal"
                        onclick="closeVideo()">Close</button>
                </div>
            </div>
        </div>
    </div>

    <!-- Quiz Modal -->
    <div class="modal fade" id="quizModalWeek1" tabindex="-1" aria-labelledby="quizModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="quizModalLabel">Quiz</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"
                        onclick="closeQuizModal()"></button>
                </div>
                <div class="modal-body">
                    <form id="quizForm" action="Quiz">
                        <div class="mb-3">
                            <label for="question1">Question 1: What is a business plan in the context of
                                entrepreneurship?</label><br>
                            <input type="radio" name="question1" value="A"> A) A marketing strategy<br>
                            <input type="radio" name="question1" value="B"> B) A financial report<br>
                            <input type="radio" name="question1" value="C"> C) A roadmap for the business<br>
                            <input type="radio" name="question1" value="D"> D) A product prototype<br>
                        </div>
                        <div class="mb-3">
                            <label for="question2">Question 2: Which of the following is a characteristic of a
                                successful entrepreneur?</label><br>
                            <input type="radio" name="question2" value="A"> A) Risk aversion<br>
                            <input type="radio" name="question2" value="B"> B) Resistance to change<br>
                            <input type="radio" name="question2" value="C"> C) Strong problem-solving skills<br>
                            <input type="radio" name="question2" value="D"> D) Reliance on others for
                            decision-making<br>
                        </div>
                        <div class="mb-3">
                            <label for="question3">Question 3: What does MVP stand for in the startup world?</label><br>
                            <input type="radio" name="question3" value="A"> A) Most Valuable Player<br>
                            <input type="radio" name="question3" value="B"> B) Minimum Viable Product<br>
                            <input type="radio" name="question3" value="C"> C) Market Validation Plan<br>
                            <input type="radio" name="question3" value="D"> D) Maximum Venture Profit<br>
                        </div>
                        <div class="mb-3">
                            <label for="question4">Question 4: What is the primary purpose of market research in
                                entrepreneurship?</label><br>
                            <input type="radio" name="question4" value="A"> A) To increase production costs<br>
                            <input type="radio" name="question4" value="B"> B) To identify potential customers and their
                            needs<br>
                            <input type="radio" name="question4" value="C"> C) To avoid competition<br>
                            <input type="radio" name="question4" value="D"> D) To create a monopoly<br>
                        </div>
                        <div class="mb-3">
                            <label for="question5">Question 5: What is the term for funds invested in a startup by the
                                founders themselves?</label><br>
                            <input type="radio" name="question5" value="A"> A) Venture capital<br>
                            <input type="radio" name="question5" value="B"> B) Seed funding<br>
                            <input type="radio" name="question5" value="C"> C) Angel investment<br>
                            <input type="radio" name="question5" value="D"> D) Bootstrapping<br>
                        </div>
                        <input type="hidden" name="testId" value="1001">
                        <button type="submit" class="btn btn-primary">Submit</button>
                        <p>${score1001}</p>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="quizModalWeek2" tabindex="-1" aria-labelledby="quizModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="quizModalLabel">Quiz</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"
                        onclick="closeQuizModal()"></button>
                </div>
                <div class="modal-body">
                    <form id="quizForm" action="Quiz">
                        <div class="mb-3">
                            <label for="question1">Question 1: What is a business plan in the context of
                                entrepreneurship?</label><br>
                            <input type="radio" name="question1" value="A"> A) A marketing strategy<br>
                            <input type="radio" name="question1" value="B"> B) A financial report<br>
                            <input type="radio" name="question1" value="C"> C) A roadmap for the business<br>
                            <input type="radio" name="question1" value="D"> D) A product prototype<br>
                        </div>
                        <div class="mb-3">
                            <label for="question2">Question 2: Which of the following is a characteristic of a
                                successful entrepreneur?</label><br>
                            <input type="radio" name="question2" value="A"> A) Risk aversion<br>
                            <input type="radio" name="question2" value="B"> B) Resistance to change<br>
                            <input type="radio" name="question2" value="C"> C) Strong problem-solving skills<br>
                            <input type="radio" name="question2" value="D"> D) Reliance on others for
                            decision-making<br>
                        </div>
                        <div class="mb-3">
                            <label for="question3">Question 3: What does MVP stand for in the startup world?</label><br>
                            <input type="radio" name="question3" value="A"> A) Most Valuable Player<br>
                            <input type="radio" name="question3" value="B"> B) Minimum Viable Product<br>
                            <input type="radio" name="question3" value="C"> C) Market Validation Plan<br>
                            <input type="radio" name="question3" value="D"> D) Maximum Venture Profit<br>
                        </div>
                        <div class="mb-3">
                            <label for="question4">Question 4: What is the primary purpose of market research in
                                entrepreneurship?</label><br>
                            <input type="radio" name="question4" value="A"> A) To increase production costs<br>
                            <input type="radio" name="question4" value="B"> B) To identify potential customers and their
                            needs<br>
                            <input type="radio" name="question4" value="C"> C) To avoid competition<br>
                            <input type="radio" name="question4" value="D"> D) To create a monopoly<br>
                        </div>
                        <div class="mb-3">
                            <label for="question5">Question 5: What is the term for funds invested in a startup by the
                                founders themselves?</label><br>
                            <input type="radio" name="question5" value="A"> A) Venture capital<br>
                            <input type="radio" name="question5" value="B"> B) Seed funding<br>
                            <input type="radio" name="question5" value="C"> C) Angel investment<br>
                            <input type="radio" name="question5" value="D"> D) Bootstrapping<br>
                        </div>
                        <input type="hidden" name="testId" value="1002">
                        <button type="submit" class="btn btn-primary">Submit</button>
                        <p>${score1002}</p>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="quizModalWeek3" tabindex="-1" aria-labelledby="quizModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="quizModalLabel">Quiz</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"
                        onclick="closeQuizModal()"></button>
                </div>
                <div class="modal-body">
                    <form id="quizForm" action="Quiz">
                        <div class="mb-3">
                            <label for="question1">Question 1: What is a business plan in the context of
                                entrepreneurship?</label><br>
                            <input type="radio" name="question1" value="A"> A) A marketing strategy<br>
                            <input type="radio" name="question1" value="B"> B) A financial report<br>
                            <input type="radio" name="question1" value="C"> C) A roadmap for the business<br>
                            <input type="radio" name="question1" value="D"> D) A product prototype<br>
                        </div>
                        <div class="mb-3">
                            <label for="question2">Question 2: Which of the following is a characteristic of a
                                successful entrepreneur?</label><br>
                            <input type="radio" name="question2" value="A"> A) Risk aversion<br>
                            <input type="radio" name="question2" value="B"> B) Resistance to change<br>
                            <input type="radio" name="question2" value="C"> C) Strong problem-solving skills<br>
                            <input type="radio" name="question2" value="D"> D) Reliance on others for
                            decision-making<br>
                        </div>
                        <div class="mb-3">
                            <label for="question3">Question 3: What does MVP stand for in the startup world?</label><br>
                            <input type="radio" name="question3" value="A"> A) Most Valuable Player<br>
                            <input type="radio" name="question3" value="B"> B) Minimum Viable Product<br>
                            <input type="radio" name="question3" value="C"> C) Market Validation Plan<br>
                            <input type="radio" name="question3" value="D"> D) Maximum Venture Profit<br>
                        </div>
                        <div class="mb-3">
                            <label for="question4">Question 4: What is the primary purpose of market research in
                                entrepreneurship?</label><br>
                            <input type="radio" name="question4" value="A"> A) To increase production costs<br>
                            <input type="radio" name="question4" value="B"> B) To identify potential customers and their
                            needs<br>
                            <input type="radio" name="question4" value="C"> C) To avoid competition<br>
                            <input type="radio" name="question4" value="D"> D) To create a monopoly<br>
                        </div>
                        <div class="mb-3">
                            <label for="question5">Question 5: What is the term for funds invested in a startup by the
                                founders themselves?</label><br>
                            <input type="radio" name="question5" value="A"> A) Venture capital<br>
                            <input type="radio" name="question5" value="B"> B) Seed funding<br>
                            <input type="radio" name="question5" value="C"> C) Angel investment<br>
                            <input type="radio" name="question5" value="D"> D) Bootstrapping<br>
                        </div>
                        <input type="hidden" name="testId" value="1003">
                        <button type="submit" class="btn btn-primary">Submit</button>
                        <p>${score1003}</p>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="quizModalWeek4" tabindex="-1" aria-labelledby="quizModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="quizModalLabel">Quiz</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"
                        onclick="closeQuizModal()"></button>
                </div>
                <div class="modal-body">
                    <form id="quizForm" action="Quiz">
                        <div class="mb-3">
                            <label for="question1">Question 1: What is a business plan in the context of
                                entrepreneurship?</label><br>
                            <input type="radio" name="question1" value="A"> A) A marketing strategy<br>
                            <input type="radio" name="question1" value="B"> B) A financial report<br>
                            <input type="radio" name="question1" value="C"> C) A roadmap for the business<br>
                            <input type="radio" name="question1" value="D"> D) A product prototype<br>
                        </div>
                        <div class="mb-3">
                            <label for="question2">Question 2: Which of the following is a characteristic of a
                                successful entrepreneur?</label><br>
                            <input type="radio" name="question2" value="A"> A) Risk aversion<br>
                            <input type="radio" name="question2" value="B"> B) Resistance to change<br>
                            <input type="radio" name="question2" value="C"> C) Strong problem-solving skills<br>
                            <input type="radio" name="question2" value="D"> D) Reliance on others for
                            decision-making<br>
                        </div>
                        <div class="mb-3">
                            <label for="question3">Question 3: What does MVP stand for in the startup world?</label><br>
                            <input type="radio" name="question3" value="A"> A) Most Valuable Player<br>
                            <input type="radio" name="question3" value="B"> B) Minimum Viable Product<br>
                            <input type="radio" name="question3" value="C"> C) Market Validation Plan<br>
                            <input type="radio" name="question3" value="D"> D) Maximum Venture Profit<br>
                        </div>
                        <div class="mb-3">
                            <label for="question4">Question 4: What is the primary purpose of market research in
                                entrepreneurship?</label><br>
                            <input type="radio" name="question4" value="A"> A) To increase production costs<br>
                            <input type="radio" name="question4" value="B"> B) To identify potential customers and their
                            needs<br>
                            <input type="radio" name="question4" value="C"> C) To avoid competition<br>
                            <input type="radio" name="question4" value="D"> D) To create a monopoly<br>
                        </div>
                        <div class="mb-3">
                            <label for="question5">Question 5: What is the term for funds invested in a startup by the
                                founders themselves?</label><br>
                            <input type="radio" name="question5" value="A"> A) Venture capital<br>
                            <input type="radio" name="question5" value="B"> B) Seed funding<br>
                            <input type="radio" name="question5" value="C"> C) Angel investment<br>
                            <input type="radio" name="question5" value="D"> D) Bootstrapping<br>
                        </div>
                        <input type="hidden" name="testId" value="1004">
                        <button type="submit" class="btn btn-primary">Submit</button>
                        <p>${score1004}</p>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="quizModalWeek5" tabindex="-1" aria-labelledby="quizModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="quizModalLabel">Quiz</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"
                        onclick="closeQuizModal()"></button>
                </div>
                <div class="modal-body">
                    <form id="quizForm" action="Quiz">
                        <div class="mb-3">
                            <label for="question1">Question 1: What is a business plan in the context of
                                entrepreneurship?</label><br>
                            <input type="radio" name="question1" value="A"> A) A marketing strategy<br>
                            <input type="radio" name="question1" value="B"> B) A financial report<br>
                            <input type="radio" name="question1" value="C"> C) A roadmap for the business<br>
                            <input type="radio" name="question1" value="D"> D) A product prototype<br>
                        </div>
                        <div class="mb-3">
                            <label for="question2">Question 2: Which of the following is a characteristic of a
                                successful entrepreneur?</label><br>
                            <input type="radio" name="question2" value="A"> A) Risk aversion<br>
                            <input type="radio" name="question2" value="B"> B) Resistance to change<br>
                            <input type="radio" name="question2" value="C"> C) Strong problem-solving skills<br>
                            <input type="radio" name="question2" value="D"> D) Reliance on others for
                            decision-making<br>
                        </div>
                        <div class="mb-3">
                            <label for="question3">Question 3: What does MVP stand for in the startup world?</label><br>
                            <input type="radio" name="question3" value="A"> A) Most Valuable Player<br>
                            <input type="radio" name="question3" value="B"> B) Minimum Viable Product<br>
                            <input type="radio" name="question3" value="C"> C) Market Validation Plan<br>
                            <input type="radio" name="question3" value="D"> D) Maximum Venture Profit<br>
                        </div>
                        <div class="mb-3">
                            <label for="question4">Question 4: What is the primary purpose of market research in
                                entrepreneurship?</label><br>
                            <input type="radio" name="question4" value="A"> A) To increase production costs<br>
                            <input type="radio" name="question4" value="B"> B) To identify potential customers and their
                            needs<br>
                            <input type="radio" name="question4" value="C"> C) To avoid competition<br>
                            <input type="radio" name="question4" value="D"> D) To create a monopoly<br>
                        </div>
                        <div class="mb-3">
                            <label for="question5">Question 5: What is the term for funds invested in a startup by the
                                founders themselves?</label><br>
                            <input type="radio" name="question5" value="A"> A) Venture capital<br>
                            <input type="radio" name="question5" value="B"> B) Seed funding<br>
                            <input type="radio" name="question5" value="C"> C) Angel investment<br>
                            <input type="radio" name="question5" value="D"> D) Bootstrapping<br>
                        </div>
                        <input type="hidden" name="testId" value="1005">
                        <button type="submit" class="btn btn-primary">Submit</button>
                        <p>${score1005}</p>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <script>
        function openVideo(videoLink) {
            var videoContainer = document.getElementById('videoContainer');
            videoContainer.src = videoLink; // Set the video source
            $('#videoModal').modal('show');
        }

        function closeVideo() {
            var videoContainer = document.getElementById('videoContainer');
            videoContainer.src = ''; // Clear the video source
            $('#videoModal').modal('hide');
        }

        function showWeek(weekNumber) {
            var weekSections = document.querySelectorAll('.week-section');
            weekSections.forEach(function (section) {
                section.style.display = 'none';
            });

            var selectedWeek = document.getElementById('week' + weekNumber);
            if (selectedWeek) {
                selectedWeek.style.display = 'block';
            }
        }

        // Function to open the quiz modal for Week 1
        function openQuizModalWeek1() {
            $('#quizModalWeek1').modal('show');
        }

        // Function to open the quiz modal for Week 2
        function openQuizModalWeek2() {
            $('#quizModalWeek2').modal('show');
        }

        // Function to open the quiz modal for Week 3
        function openQuizModalWeek3() {
            $('#quizModalWeek3').modal('show');
        }

        // Function to open the quiz modal for Week 4
        function openQuizModalWeek4() {
            $('#quizModalWeek4').modal('show');
        }

        // Function to open the quiz modal for Week 5
        function openQuizModalWeek5() {
            $('#quizModalWeek5').modal('show');
        }

        // Close Quiz Modal
        function closeQuizModal() {
            $('#quizModal').modal('hide');
        }

        // Function to open the quiz modal
        function openQuizModal() {
            $('#quizModal').modal('show');
        }

        // Function to close the quiz modal
        function closeQuizModal() {
            $('#quizModal').modal('hide');
        }

        function openPopup(event) {
            event.preventDefault(); // Prevents the default form submission
            window.open("grading", "PopupWindow", "width=850px,height=350px");
        }
        
    </script>
</body>

</html>