<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>404 Error - Page Not Found</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            flex-direction: column;
            text-align: center;
        }
        .container {
            max-width: 800px;
            background: #fff;
            padding: 40px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
        }
        .container img {
            width: 100%;
            border-radius: 10px;
        }
        h1 {
            font-size: 3em;
            margin: 30px 0;
            color: #333;
        }
        p {
            font-size: 1.5em;
            margin-bottom: 30px;
            color: #666;
        }
        .btn {
            display: inline-block;
            padding: 15px 30px;
            font-size: 1.2em;
            color: #fff;
            background-color: #007bff;
            border: none;
            border-radius: 5px;
            text-decoration: none;
            transition: background-color 0.3s ease;
        }
        .btn:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="container">
        <img src="https://viralsolutions.net/wp-content/uploads/2021/09/VS-404-page-not-found-1024x512-1.jpg" alt="404 Error">
        <h1>Oops! Page Not Found</h1>
        <p>Sorry, but the page you were trying to view does not exist.</p>
        <a href="{{url('/')}}" class="btn">Go to Homepage</a>
    </div>
</body>
</html>
