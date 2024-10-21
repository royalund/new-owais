<?php
session_start();


header("Cache-Control: no-cache, must-revalidate");
header("Expires: Mon, 26 Jul 1997 05:00:00 GMT");

// Check if the form is submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Get the input values
    $username = $_POST['name'];
    $password = $_POST['password'];

    // Validate credentials
    if ($username === $valid_username && $password === $valid_password) {
        // Set session variable or any other logic on successful login
        $_SESSION['loggedin'] = true;
        // Redirect to a dashboard or another page on successful login
        header("Admin Login/Adminlogin.php");
        exit();
    } else {
        // Debugging output
        // Uncomment the next line to see the error in your browser
        // echo "Invalid credentials. Redirecting to error page.";
        
        // Redirect to a specific path if login validation fails
        header("images"); // Specify your error page or path here
        exit();
    }
}
?>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Admin Login</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
            background-image: url('images/hola.gif');
            background-size: cover;
            padding: 50px;
        }
        .container {
            max-width: 400px;
            background: white;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            margin: auto;
        }
        .title {
            color: green;
            margin-bottom: 20px;
        }
        .submit {
            width: 100%;
            padding: 10px;
            background-color: green;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        .submit:hover {
            background-color: darkgreen;
        }
    </style>
</head>
<body>

<div class="container">
    <header>
        <h2>Admin Login Form</h2>
    </header>

    <form action="Admin Login/Adminlogin.php" method="post" enctype="multipart/form-data">
        <div class="mb-3">
            <label for="adminName" class="form-label">Name:</label>
            <input type="text" class="form-control" id="adminName" name="name" required>
        </div>
        <div class="mb-3">
            <label for="adminPassword" class="form-label">Password</label>
            <input type="password" class="form-control" id="adminPassword" name="password" required>
        </div>
        <div class="mb-3 form-check">
            <!-- <input type="checkbox" class="form-check-input" id="adminCheck">
            <label class="form-check-label" for="adminCheck">Check me out</label> -->
        </div>
        <div class="d-grid gap-2">
            <button class="submit" type="submit">Login</button>
        </div>
    </form>
</div>

</body>
</html>
