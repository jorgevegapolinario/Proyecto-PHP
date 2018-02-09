<?php
  session_start();
?>
<?php
  if (isset($_POST["Usuario"])) {

    //CREAMOS LA CONEXIÓN.
    $connection = new mysqli("localhost", "root", "Admin2015", "FestivalBolonia", "3316");

    //PROBAMOS QUE ESTÉ CORRECTA LA CONEXIÓN.
    if ($connection->connect_errno) {
        printf("Connection failed: %s\n", $connection->connect_error);
        exit();
    }

    //HACEMOS LA CONSULTA.
    //Pass cifrada con md5.
    $consulta="SELECT * FROM Usuario WHERE
    Nombre='".$_POST["Usuario"]."' and Pass=md5('".$_POST["Pass"]."');";

    //PROBAMOS LA CONSULTA.
    if ($result = $connection->query($consulta)) {

        //No retorna líneas.
        if ($result->num_rows===0) {
          echo "LOGIN INVÁLIDO";
        } else {
          //Login válido.
          $_SESSION["Usuario"]=$_POST["Usuario"];
          $_SESSION["language"]="es";

          if ($POST["Permisos"]=="Administrador") {
            header("Location: /Administrador/home.php");
          } else{
            header("Location: /Usuario/home.php");
          }
        }

    } else {
      echo "Consulta No Válida.";
    }
}
?>

<!DOCTYPE html>
<html xml:lang="es">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
  <link rel="stylesheet" type="text/css" href="registro.css"></link>
  <title>Registro</title>
</head>
<body>
  <div id="Principal">
    <center>
    <div id="Header">
      <div id="Logo">
        <img src="LogoDunasFestival.png" alt="Logo"/>
      </div>
      <div id="LinksHeader">
        <label><a href="registro.php">Iniciar Sesión</a> <span>-</span> </label>
        <label><a href="registro.php">Regístrate</a></label>
      </div>
      <div id="Menu">
        <table>
          <tr>
            <div id="Redes">
              <a class="nav" href="https://www.Twitter.es/Seguir">
                <input type="image" src="BotonTwitter.png"></input>
              </a>
              <a class="nav" href="https://www.Facebook.es/Megusta">
                <input type="image" src="BotonFacebook.png"></input>
              </a>
              <a class="nav" href="https://www.Google.es/SocialGoogle">
                <input type="image" src="BotonGoogle.png"></input>
              </a>
            </div>
          </tr>
          <tr>
            <hr>
            <ul style="list-style:none">
              <td><a href="home.php" class="nav">Home</a></td>
              <td><a href="entradas.php" class="nav">Entradas</a></td>
              <td><a href="cartel.php" class="nav">Cartel</a></td>
              <td><a href="servicios.php" class="nav">Servicios</a></td>
              <td><a href="info.php" class="nav">Info</a></td>
            </ul>
          </tr>
        </table>
      </div>
    </div>
    <hr style="margin:0px; width: 1024px">
    </center>
    <center>
    <div id="Registro">
      <form method="post" name="FormRegistro">
        <fieldset class="fieldset">
          <legend><b>Registro de Usuario<span>*</span></b></legend>

          <label>Usuario<span>*</span></label><br>
          <input type="text" name="UserReg" placeholder="Usuario" required><br>

          <label>Contraseña<span>*</span></label><br>
          <input type="password" name="PassReg1" placeholder="Contraseña" required><br>

          <label>Confirmar contraseña<span>*</span></label><br>
          <input type="password" name="PassReg2" placeholder="Contraseña" required><br>

          <label>Teléfono</label><br>
          <input type="text" name="TlfReg" placeholder="Teléfono"><br>

          <label>Correo<span>*</span></label><br>
          <input type="email" name="" placeholder="Correo" required>

          <label>Sexo<span>*</span></label><br>
          <select class="" name="Sexo" required>
            <option>Masculino</option>
            <option>Femenino</option>
            <option>Otro</option>
          </select><br><br>

          <input type="submit" name="CompletarRegistro" value="Registrarme" id="BotonReg">
        </fieldset>
      </form>
    </div>
    <div id="ContInicio">
      <div id="Inicio">
        <form method="post" name="InicioSesion" >
          <p class="pinicio"><b>¿Ya tienes cuenta?<br>¡Conéctate!</b></p>
          <img src="IconoPerfil.png" alt="Perfil"><br>
          <input type="text" name="Usuario" placeholder="Usuario" id="Inputusuario"><br><br>
          <input type="password" name="Pass" placeholder="Contraseña">
          <input type="submit" name="IniciarSesion" value="Conectarse" id="BotonConectarse">
        </form>
      </div>
    </div>
    </center>
    <center>
    <div id="Patrocinadores">
      <img id="Patro" src="Patrocinadores.png" alt="Patrocinadores">
    </div>
    <div id="Footer">
      <marquee direction="right" spellcheck="200" id="Mensaje"> Bienvenidos a la web, disfruten...</marquee>
    </div>
    </center>
  </div>
</body>
<script>

</script>
</html>
