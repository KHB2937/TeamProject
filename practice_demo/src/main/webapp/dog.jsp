<!DOCTYPE html>
<html lang="es" dir="ltr">
<head>
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0">
    <meta charset="utf-8">
    <title>Welcome to Sanduo</title>
    <link rel="stylesheet" type="text/css" href="css/dog.css">
    <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
    <h1>Welcome to Sanduo</h1>
    <div class="main">
        <div class="dog">
            <div class="dog__paws">
                <div class="dog__bl-leg leg">
                    <div class="dog__bl-paw paw"></div>
                    <div class="dog__bl-top top"></div>
                </div>
                <div class="dog__fl-leg leg">
                    <div class="dog__fl-paw paw"></div>
                    <div class="dog__fl-top top"></div>
                </div>
                <div class="dog__fr-leg leg">
                    <div class="dog__fr-paw paw"></div>
                    <div class="dog__fr-top top"></div>
                </div>
            </div>
            <div class="dog__body">
                <div class="dog__tail"></div>
            </div>
            <div class="dog__head">
                <div class="dog__snout">
                    <div class="dog__nose"></div>
                    <div class="dog__eyes">
                        <div class="dog__eye-l"></div>
                        <div class="dog__eye-r"></div>
                    </div>
                </div>
                <div class="dog__head-c">
                    <div class="dog__ear-l"></div>
                    <div class="dog__ear-r"></div>
                </div>
            </div>
        </div>
        <button class="btn btn--large btn--blue" id="goToIndexBtn">Homepage</button>
    </div>
    <script>
        // go to index button
        document.getElementById("goToIndexBtn").addEventListener("click", function() {
            window.location.href = "index.jsp";
        });
    </script>
</body>
</html>
