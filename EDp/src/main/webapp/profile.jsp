<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,900&display=swap" rel="stylesheet">
    <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css'>
    <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css'>
</head>
<style>
    body {
        background: #67B26F;
        background-color: #e4d7cb;
        padding: 0;
        margin: 0;
        font-family: system-ui, -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;
        color: #000;
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
        margin-right: 1rem;
    }

    .student-profile .card {
        border-radius: 10px;
    }

    .student-profile .card .card-header .profile_img {
        width: 150px;
        height: 150px;
        object-fit: cover;
        margin: 10px auto;
        border: 10px solid #ccc;
        border-radius: 50%;
    }

    .student-profile .card h3 {
        font-size: 20px;
        font-weight: 700;
    }

    .student-profile .table th,
    .student-profile .table td {
        font-size: 14px;
        padding: 5px 10px;
        color: #000;
    }

    .student-profile .card p {
        font-size: 16px;
        color: #000;
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
                    <a class="btn btn-primary signin" href="signup.jsp"
                        style="height: fit-content; border-radius: 3px;">Sign In</a>
                </c:when>
                <c:otherwise>
                    <div class="dropdown"
                        style="flex-direction: row-reverse; display: inline; height:min-content; width:fit-content">
                        <button class="btn btn-primary" style="border-radius: 3px; margin-top: 0.1rem;" type="button"
                            id="userDropdown" aria-haspopup="true" aria-expanded="false">
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
    <div class="student-profile py-4">
        <div class="container">
            <div class="row">
                <div class="col-lg-4">
                    <div class="card shadow-sm">
                        <div class="card-header bg-transparent text-center">
                            <img class="profile_img" src="https://source.unsplash.com/600x300/?student"
                                alt="student dp">
                            <h3></h3>
                        </div>
                        <div class="card-body">
                            <p class="mb-0"><strong class="pr-1">Student ID:</strong>edp23${id}</p>
                            <p class="mb-0"><strong class="pr-1">Number of courses completed:</strong>${comp}</p>
                            <p class="mb-0"><strong class="pr-1">Number of projects:</strong>2</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-8">
                    <div class="card shadow-sm">
                        <div class="card-header bg-transparent border-0">
                            <h3 class="mb-0"><i class="far fa-clone pr-1"></i>General Information</h3>
                        </div>
                        <div class="card-body pt-0">
                            <table class="table table-bordered">
                                <tr>
                                    <th width="30%">Username</th>
                                    <td width="2%">:</td>
                                    <td>${user.getUsername()}</td>
                                </tr>
                                <tr>
                                    <th width="30%">First Name</th>
                                    <td width="2%">:</td>
                                    <td>${user.getFirstName()}</td>
                                </tr>
                                <tr>
                                    <th width="30%">Last Name</th>
                                    <td width="2%">:</td>
                                    <td>${user.getLastName()}</td>
                                </tr>
                                <tr>
                                    <th width="30%">Ongoing Courses</th>
                                    <td width="2%">:</td>
                                    <td>${courses1}</td>
                                </tr>
                                <tr>
                                    <th width="30%">Completed Courses</th>
                                    <td width="2%">:</td>
                                    <td>${courses}</td>
                                </tr>
                            </table>
                        </div>
                    </div>
                    <div style="height: 26px"></div>
                    <div class="card shadow-sm">
                        <div class="card-header bg-transparent border-0">
                            <h3 class="mb-0"><i class="far fa-clone pr-1"></i>Projects</h3>
                        </div>
                        <div class="card-body pt-0">
                            <h3> THE CHALLENGES OF HOTEL BUSINESS</h3>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt
                                ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation
                                ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
                            <hr>
                        </div>
                        <div class="card-body pt-0">
                            <h3> CURBING UNEMPLOYMENT IN INDIA</h3>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt
                                ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation
                                ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>

</html>