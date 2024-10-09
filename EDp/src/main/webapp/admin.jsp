<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Your head content -->
</head>
<body>
    <div class="container mt-5">
        <h2>Enrollment Requests</h2>
        <table class="table">
            <thead>
                <tr>
                    <th>Student Email</th>
                    <th>Requested Course</th>
                    <th>No of Courses Requested</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <!-- Iterate through enrollments -->
                <c:forEach items="${enrollment}" var="enrollment">
                    <tr>
                        <input type="hidden" name="user" value=${enrollment.user}>
                        <td >${enrollment.user}</td>
                        <td>${enrollment.requestedCourse}</td>
                        <td>${enrollment.numCourses}</td>
                        <td>
                            <form action="admin">
                                <input type="hidden" name="enrollmentId" value="${enrollment.id}">
                                <button type="submit" name="action" value="accept">Accept</button>
                                <button type="submit" name="action" value="reject">Reject</button>
                            </form>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</body>
</html>
