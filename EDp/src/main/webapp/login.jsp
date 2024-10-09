<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Login Page</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <style>
        body {
            margin: 0;
            padding: 0;
            background: linear-gradient(to bottom, #4facfe, #00f2fe);
            height: 100vh; /* Ensure body takes full viewport height */
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .container {
            max-width: 500px;
            padding: 45px;
            border-radius: 25px;
            border: 3px solid rgb(9, 9, 222);
            background: linear-gradient(to bottom, #ffffff, #f2f2f2); /* Apply the linear gradient */
        }
        .error-message {
            color: #dc3545;
            font-size: 0.8rem;
            margin-top: 0.25rem;
        }
        .transition-effect {
            transition: transform 0.4s ease-in-out, opacity 0.4s ease-in-out;
            transform: scale(0.9);
            opacity: 0;
        }
    </style>
</head>
<body>
    <div class="container" id="loginContainer">
        <h2 class="mb-4">Login</h2>
        <form id="loginForm" action="logcheck">
            <div class="form-group">
                <label for="username" name="">Username:</label>
                <input type="text" name="username" class="form-control" id="username" placeholder="Enter your username" maxlength="30" required>
                <div id="usernameError" class="error-message"></div>
            </div>
            <div class="form-group">
                <label for="password">Password:</label>
                <input type="password" name="password" class="form-control" id="password" placeholder="Enter your password" required>
                <div id="passwordError" class="error-message"></div>
            </div>
            <p name="errmsg" style="color:red;">${errorMessage}</p>
            <button type="submit" class="btn btn-primary" onclick="validateLogin()">Login</button>
            <a href="signup.jsp" id="signupTransitionBtn" class="btn btn-primary">Sign Up</a>
            <!--<a href="signup.html" class="btn btn-link">Sign Up</a>-->
            <!-- Your form content -->
        </form>
    </div>

    <script>
        const loginContainer = document.getElementById('loginContainer');
        const signupTransitionBtn = document.getElementById('signupTransitionBtn');

        signupTransitionBtn.addEventListener('click', function(event) {
            event.preventDefault();
            loginContainer.classList.add('transition-effect');
            setTimeout(function() {
                window.location.href = 'signup.jsp';
            }, 500); // Adjust the timing as needed
        });
    </script>
    <script>
        function validateLogin() {
    var username = document.getElementById('username').value;
    var password = document.getElementById('password').value;

    var usernameError = document.getElementById('usernameError');
    var passwordError = document.getElementById('passwordError');

    usernameError.innerHTML = '';
    passwordError.innerHTML = '';

    if (username.trim() === '') 
    {
        usernameError.innerHTML = 'Username is required';
    }

    if (password.trim() === '')
    {
        passwordError.innerHTML = 'Password is required';
    }
}
    </script>
</body>
</html>

