<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<style>
    body {
        font-family: system-ui, -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;
        color: rgb(12, 12, 56);
    }

    .mainbody {
        background-color: aqua;
        text-align: center;
        padding: 0.5rem;
        margin-top: 2rem;
        border: 5px solid black;
        border-radius: 50px;
        width: 70%;
        margin-left: 14rem;
        box-shadow: 10px 10px 5px lightblue;
    }

    hr {
        height: 4px;
        background-color: blue;
        border: none;
    }

    .mainheading {
        line-height: 300%;
    }

    .bottom {
        display: flex;
        justify-content: space-evenly;
    }

    .lastname {
        line-height: 50%;
    }

    .sign{
        margin-top: 4rem;
    }
    body, html {
            height: 100%;
            width: 100%;
            margin: 0;
            padding: 0;
        }
</style>

<body>
    <div class="mainbody">
        <div class="mainheading">
            <h1 style="font-size: 50px;">Certificate of Completion</h1>
            <hr>
            <h3 style="font-size: 20px; margin-top:-1rem;">ENTREPRENEURSHIP DEVELOPMENT PROGRAM</h3>
        </div>

        <div class="insideinfo">
            <h3 style="font-size: 30px; margin-top:3rem;">On December 12th, 2023</h3>
            <i>
                <h3 style="font-size: 40px; margin-top:-1rem;">${name}</h3>
            </i>
            <h3 style="margin-top:-2rem;">${coursetype}</h3>
        </div>
        <div class="bottom">
            <div class="sign" style="margin-left: -5rem;">
                <img src="sign1.jpg" alt="" height="100">
                <h3>SUBBA REDDY,CEO - EDP</h3>
            </div>
            <img src="university.jpg" alt="" style="border-radius: 40rem; margin-left:3rem;">
            <div class="lastname">
                <h3 style="font-size: 50px; margin-top:6rem;">ED</h3>
                <h3 style="font-size: 50px; margin-top:-1rem;">Programs</h3>
            </div>
        </div>
    </div>
</body>

</html>