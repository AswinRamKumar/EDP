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
    }

    .table {
        display: flex;
        border: 1px solid black;
        width: 55rem;
        margin-left: 5rem;
        margin-top: 5rem;
        padding: 2.5rem;
        background-color: wheat;
        border-radius: 10px;
        box-shadow: 10px 10px 5px lightblue;
    }

    .insidetable {
        margin-left: 3rem;
    }

    .heading {
        font-weight: 600;
        font-size: 26px;
    }

    .text {
        font-size: 20px;

    }
</style>

<body>

    <div class="table">
        <div class="insidetable">
            <p class="heading">Student Name</p>
            <p class="text">${name}</p>
        </div>
        <div class="insidetable">
            <p class="heading">Course Name</p>
            <p class="text">${obj.getCourseType()}</p>
        </div>
        <div class="insidetable">
            <p class="heading">Total marks</p>
            <p class="text">${obj.getTotalmarks()}</p>
        </div>
        <div class="insidetable">
            <p class="heading">Grades</p>
            <p class="text">${obj.getGrade()}</p>
        </div>
    </div>
    <center>
    <form action="certificate">
        <button type="submit" style="margin-top:40px;background-color:skyblue;height:40px;">Click Here to get Certificate</button>
    </form>
</center>
</body>

</html>