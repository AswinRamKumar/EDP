</html>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Sign Up Page</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<style>
    body {
        background: linear-gradient(to bottom, #4facfe, #00f2fe);
        overflow: hidden;
        margin: 0;
    }
    .container {
        max-width: 500px;
        margin-top: 30px;
        margin-bottom: 40px;
        padding: 30px 45px;
        border-radius: 25px;
        border: 3px solid rgb(9, 9, 222);
        background: linear-gradient(to bottom, #ffffff, #f2f2f2);
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
<body>
    <div class="container" id="signupContainer">
        <h2 class="mb-4">Sign Up</h2>
        <form id="signupForm" action="signcheck">
            <p name="ssmsg" id="ssmsg" style="color:rgba(0, 149, 255, 0.415);">${saveMessage}</p>
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="firstname">First Name:</label>
                    <input type="text"  name="FirstName" class="form-control" id="FirstName" placeholder="Enter your first name" maxlength="20" required>
                    <div id="firstnameError" class="error-message"></div>
                </div>
                <div class="form-group col-md-6">
                    <label for="lastname">Last Name:</label>
                    <input type="text"name="LastName" class="form-control" id="LastName" placeholder="Enter your last name" maxlength="20" required>
                    <div id="lastnameError" class="error-message"></div>
                </div>
            </div>
            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" name="username" class="form-control" id="username" placeholder="Enter your email" maxlength="50" required>
                <p name="errmsg" style="color:red;">${errorMessage}</p>
                <div id="emailError" class="error-message"></div>
            </div>
            <div class="form-group">
                <label for="password" >Password:</label>
                <input type="password" name="password" class="form-control" id="password" placeholder="Enter your password" required>
                <div id="passwordError" class="error-message"></div>
            </div>
            <div class="form-group">
                <label for="confirmPassword">Confirm Password:</label>
                <input type="password" class="form-control" id="confirmPassword" placeholder="Confirm your password" required>
                <div id="confirmPasswordError" class="error-message"></div>
            </div>
            <button type="submit"  class="btn btn-primary" onclick="validateSignup()">Signin</button>
            <!--<a href="login.html" class="btn btn-link">Login</a>-->
            <a href="login.jsp" id="loginTransitionBtn" class="btn btn-primary">Login</a>
        </form>
     </div>

    <script>
        const signupContainer = document.getElementById('signupContainer');
        const loginTransitionBtn = document.getElementById('loginTransitionBtn');

        loginTransitionBtn.addEventListener('click', function(event) {
            event.preventDefault();
            signupContainer.classList.add('transition-effect');
            setTimeout(function() {
                window.location.href = 'login.jsp';
            }, 500); // Adjust the timing as needed
        });
    </script>
    <script>
        function validateSignup() {
    var firstname = document.getElementById('firstname').value;
    var lastname = document.getElementById('lastname').value;
    var email = document.getElementById('email').value;
    var password = document.getElementById('password').value;
    var confirmPassword = document.getElementById('confirmPassword').value;

    var firstnameError = document.getElementById('firstnameError');
    var lastnameError = document.getElementById('lastnameError');
    var emailError = document.getElementById('emailError');
    var passwordError = document.getElementById('passwordError');
    var confirmPasswordError = document.getElementById('confirmPasswordError');

    firstnameError.innerHTML = '';
    lastnameError.innerHTML = '';
    emailError.innerHTML = '';
    passwordError.innerHTML = '';
    confirmPasswordError.innerHTML = '';

    if (firstname.trim() === '') {
        firstnameError.innerHTML = 'First name is required';
    }

    if (lastname.trim() === '') {
        lastnameError.innerHTML = 'Last name is required';
    }

    if (email.trim() === '') {
        emailError.innerHTML = 'Email is required';
    } else if (!isValidEmail(email)) {
        emailError.innerHTML = 'Enter a valid email address';
    }

    if (password.trim() === '') {
        passwordError.innerHTML = 'Password is required';
    }

    if (confirmPassword.trim() === '') {
        confirmPasswordError.innerHTML = 'Confirm your password';
    } else if (password !== confirmPassword) {
        confirmPasswordError.innerHTML = 'Passwords do not match';
    }
    var save = document.getElementById('ssmsg').innerHTML;
    if(save===" ")
    {
        window.alert("Sign up Successful");
    }
}

function isValidEmail(email) {
    // Basic email validation
    var emailRegex = /\S+@\S+\.\S+/;
    return emailRegex.test(email);
    
}
    </script>
</body>
</html>

