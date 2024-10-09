<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Entrepreneurship Development Program</title>
    <!-- Add Bootstrap CSS link -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <!-- Add Font Awesome CSS link for icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <!-- jQuery (required for Bootstrap JavaScript) -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <!-- Popper.js (required for Bootstrap's dropdowns and popovers) -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
    <!-- Bootstrap JavaScript -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <!-- Add custom CSS stylesheet -->
    <link rel="stylesheet" href="styles.css">
    <style>
        .alumni-content
         {
          color: black;
         }
         #alumni
         {
           background-color:rgba(230, 222, 222);
           border-radius:10px;
         }
    body{
    background-image: url(bg.jpeg);
    background-repeat:no-repeat;
    background-size:cover;
    background-attachment:fixed;
    margin: 0;
    padding: 0;
}
.about-section {
    display: flexbox;
    flex-direction: column;
    justify-content: space-between;
}

.social-media {
    flex: 1;
}

.image-gallery {
    flex: 1;
    display: flex;
    flex-wrap: wrap;
    justify-content: center;
    align-items: center;
}

.gallery-image {
    width: 80px; /* Decreased image size */
    height: auto; /* Adjust height automatically */
    margin: 5px;
}

.social-link {
    display: block;
    text-decoration: none;
    color: #333; /* Change link color as needed */
    margin: 5px;
}
.custom-select {
  appearance: none;
  background-color:dodgerblue ;
  -webkit-appearance: none;
  -moz-appearance: none;
  padding: 8px;
  border: 1px solid #ccc;
  border-radius: 4px;
  font-size: 16px;
  width: 200px;
}

/* Style for the select element when active */
.custom-select-active {
  border-color: #000;
  box-shadow: 0 0 5px rgba(0, 0, 0, 0.3);
  outline: none;
}

    </style>
</head>
<body>
<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <a class="navbar-brand" href="#">Entrepreneurship Program</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav ml-auto">
            <li class="nav-item">
                <a class="nav-link" href="#main">Home</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#courses">Courses</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#about">About</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#alumni">Alumni</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">Contact</a>
            </li>
            <li class="nav-item">
                <c:choose>
                    <c:when test="${empty name}">
                        <a class="btn btn-primary" href="signup.jsp">Sign In</a>
                    </c:when>
                    <c:otherwise>
                        <div class="dropdown" style="flex-direction: row-reverse; display: inline;">
                            <button class="btn btn-primary dropdown-toggle" type="button" id="userDropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                ${name}
                            </button>
                            <div class="dropdown-menu" aria-labelledby="userDropdown">
                            <form action="profile">
                                <button class="dropdown-item" type="submit">Profile</button>
                            </form>
                                <form action="logout">
                                    <button class="dropdown-item" type="submit">Logout</button>
                                </form>
                            </div>
                        </div>
                    </c:otherwise>
                </c:choose>                
            </li>
        </ul>
    </div>
</nav>
<div class="container mt-5" id="main">
    <div class="jumbotron">
        <h1>Welcome to the Entrepreneurship Development Program</h1>
        <p>Explore our courses and start your journey as an entrepreneur.</p>
        <form class="form-inline my-2 my-lg-0" action="search">
            <input class="form-control mr-sm-2" type="text" name="courseType" placeholder="Search" aria-label="Search" required>
            <button class="btn btn-primary my-2 my-sm-0" type="submit">Search</button>
        </form>
        <p>${error}</p>
    </div>
</div>

<div class="container mt-5 bg-light" id="courses" style="border-radius:10px;">
    <h2>Featured Courses</h2>
    <div class="row">
        <!-- Course -->
        <div class="col-md-4">
            <div class="card mb-4">
                <img src="course1.jpg" class="card-img-top" alt="Course 1">
                <div class="card-body">
                    <h5 class="card-title">CEO Development programme</h5>
                    <p class="card-text">Course 1 description goes here.</p>
                    <form action="course1">
                        <button  class="btn btn-primary" type="submit">Learn More</button>
                    </form>
                </div>
            </div>
        </div>

        <div class="col-md-4">
            <div class="card mb-4">
                <img src="course2.jpg" class="card-img-top" alt="Course 2">
                <div class="card-body">
                    <h5 class="card-title">Businesses for Inclusive Lab</h5>
                    <p class="card-text">Course 2 description goes here.</p>
                    <form action="course2">
                        <button  class="btn btn-primary" type="submit">Learn More</button>
                    </form>
                </div>
            </div>
        </div>

        <div class="col-md-4">
            <div class="card mb-4">
                <img src="course3.png" class="card-img-top" alt="Course 3">
                <div class="card-body">
                    <h5 class="card-title">Leading Strategic Change</h5>
                    <p class="card-text">Course 3 description goes here.</p>
                    <form action="course3">
                        <button  class="btn btn-primary" type="submit">Learn More</button>
                    </form>
                </div>
            </div>
        </div>

        <div class="col-md-4">
            <div class="card mb-4">
                <img src="course4.png" class="card-img-top" alt="Course 4">
                <div class="card-body">
                    <h5 class="card-title">Women's Leadership Program</h5>
                    <p class="card-text">Course 4 description goes here.</p>
                    <form action="course4">
                        <button  class="btn btn-primary" type="submit">Learn More</button>
                    </form>
                </div>
            </div>
        </div>

        <div class="col-md-4">
            <div class="card mb-4">
                <img src="course5.jpg" class="card-img-top" alt="Course 5">
                <div class="card-body">
                    <h5 class="card-title">Algorithmic Business Thinking</h5>
                    <p class="card-text">Course 5 description goes here.</p>
                    <form action="course5">
                        <button  class="btn btn-primary" type="submit">Learn More</button>
                    </form>
                </div>
            </div>
        </div>

        <div class="col-md-4">
            <div class="card mb-4">
                <img src="course6.jpg" class="card-img-top" alt="Course 6">
                <div class="card-body">
                    <h5 class="card-title">Embracing the Unexpected</h5>
                    <p class="card-text">Course 6 description goes here.</p>
                    <form action="course6">
                        <button  class="btn btn-primary" type="submit">Learn More</button>
                    </form>
                </div>
            </div>
        </div>
        <!-- Add more course cards here -->
    </div>
</div>

<div class="container mt-5  text-white" id="alumni" style="padding:10px;">
    <h2 style="color:black;">Alumni</h2>
    <div class="row">
        <!-- Alumni -->
        <div class="col-md-4">
            <div class="card mb-4">
                <img src="alumni1.webp" class="card-img-top" alt="Alumni 1">
                <div class="card-body alumni-content">
                    <h5 class="card-title">Elon Musk</h5>
                    <p class="card-text"></p>
                    <a href="#" class="btn btn-light">Learn More</a>
                </div>
            </div>
        </div>

        <div class="col-md-4">
            <div class="card mb-4">
                <img src="alumni2.jpg" class="card-img-top" alt="Alumni 2" height="225" width="300">
                <div class="card-body alumni-content">
                    <h5 class="card-title">Manoj Subba Reddy</h5>
                    <p class="card-text"></p>
                    <a href="#" class="btn btn-light">Learn More</a>
                </div>
            </div>
        </div>

        <div class="col-md-4">
            <div class="card mb-4">
                <img src="alumni3.webp" class="card-img-top" alt="Alumni 3" >
                <div class="card-body alumni-content">
                    <h5 class="card-title">Jeff Bezos</h5>
                    <p class="card-text"></p>
                    <a href="#" class="btn btn-light">Learn More</a>
                </div>
            </div>
        </div>

        <div class="col-md-4">
            <div class="card mb-4">
                <img src="alumni4.jpg" class="card-img-top" alt="Alumni 4" height="225">
                <div class="card-body alumni-content">
                    <h5 class="card-title">Jagadeesh</h5>
                    <p class="card-text"></p>
                    <a href="#" class="btn btn-light">Learn More</a>
                </div>
            </div>
        </div>

        <div class="col-md-4">
            <div class="card mb-4">
                <img src="alumni5.jpeg" class="card-img-top" alt="Alumni 5">
                <div class="card-body alumni-content">
                    <h5 class="card-title">Sanjiv Bajaj</h5>
                    <p class="card-text"></p>
                    <a href="#" class="btn btn-light">Learn More</a>
                </div>
            </div>
        </div>

        <div class="col-md-4">
            <div class="card mb-4">
                <img src="alumni6.jpg" class="card-img-top" alt="Alumni 6"  height="225">
                <div class="card-body alumni-content">
                    <h5 class="card-title">Revant Reddy</h5>
                    <p class="card-text"></p>
                    <a href="#" class="btn btn-light">Learn More</a>
                </div>
            </div>
        </div>
        <!-- Add more alumni cards here -->
    </div>
</div>

<div class="container mt-5 bg-light" id="about" class="about-section" style="padding:10px;margin-bottom:10px;border-radius:10px;">
    <h2 style="padding-left:40px;">About</h2>
   <!--img-->
    <div class="social-media" style="padding-left:40px;">
    <p><i class="fas fa-map-marker-alt"></i> Address: Coimbatore</p>
    <p><i class="fas fa-phone"></i> Phone Number: 9876120845</p>
    <p><i class="fab fa-twitter"></i><a href="#"> @ManojSubbareddy123</a></p>
    <p><i class="fab fa-facebook"></i><a href="#">RevantReddy</a></p>
    <p><i class="fab fa-linkedin"></i><a href="#">AswinRamkumar</a></p>
    <p><i class="fab fa-instagram"></i><a href="#"> @Revant__reddy</a></p>
</div>
</div>

</body>
</html>
