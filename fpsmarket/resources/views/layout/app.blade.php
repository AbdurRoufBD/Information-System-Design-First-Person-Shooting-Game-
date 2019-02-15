<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="/css/app.css">
    <title>Market Place</title>
</head>
<body>
    
    @include('inc.navbar')
    
    <div class="container">
        <br>
        <br>
        <br>


        <div class="row">
            <div class="col-md-8 col-lg-8">
                @yield('content')
            </div>
        </div>

        
            
        
    </div>
    

    <footer id="footer" class="text-center">
        <p>All rights reserved 2019 &copy;FPS Game Corporation</p>
    </footer>
   
    
</body>
</html>