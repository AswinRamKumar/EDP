<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
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
</head>
<body>
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
                                    <a class="dropdown-item" href="profile">Profile</a>
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
    
</body>
</html>