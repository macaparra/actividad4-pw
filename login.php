<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" href="assets/pdvsa.png" type="image/x-icon"/>
    <link rel="stylesheet" href="styles/login.css">
    <title>PDVSA</title>
</head>
<body>
    <div class="vid-container">
    <video class="bgvid" autoplay="autoplay" muted="muted" preload="auto" loop>
        <source src="assets/video.mp4" type="video/webm">
    </video>
    <div class="inner-container">
        <video class="bgvid inner" autoplay="autoplay" muted="muted" preload="auto" loop>
        <source src="assets/video.mp4" type="video/webm">
        </video>
        <div class="box">
            <img class="img-logo" src="assets/1280px-PDV_S.A._logo.svg.png">
            <form action="index.php" method="post">
              <input type="email" id="email" pattern=".+@pdvsa\.com" size="30" required placeholder="Ej: juanmedina@pdvsa.com"/>
              <input type="password" name="pwd" required="required" size="10" placeholder="Contraseña"/>
                <button type="submit" class="btn" name="crear" value="crear" styles="margin-left: 20px;">Iniciar Sesion</button>
            </form>
            <p>No eres miembro? <span>Registrate</span></p>
        </div>
    </div>
    </div>
</body>
</html>