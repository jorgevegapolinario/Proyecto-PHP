<!DOCTYPE html>
<html xml:lang="es">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
  <link rel="stylesheet" type="text/css" href="entradas.css"></link>
  <title>Entradas</title>
</head>
<center>
<body>
  <div id="Principal">
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
    <div id="Comprar">
      <div id="Formulario">
        <form class="Tabla" action="index.html" method="post">
          <table border="1px solid black" cellspacing="20">
            <tr>
              <td class="TitTabla"><b>ENTRADAS</b></td>
              <th class="TitTabla" style="width:200px">CANTIDAD</th>
              <th class="TitTabla">PRECIO</th>
            </tr>
            <tr>
              <td style="width:700px"><span class="texto">Abono Dunas Festival 2018</span></td>
              <th>
                <select class="cantidad" name="Cantidad">
                  <option value="0">0</option>
                  <option value="1">1</option>
                  <option value="2">2</option>
                  <option value="3">3</option>
                  <option value="4">4</option>
                  <option value="5">5</option>
                </select>
              </th>
              <td><span class="texto">x 11 €</span></td>
            </tr>
            <tr>
              <td colspan="2"><span class="texto">Gastos de Gestión</span></td>
              <td><span class="texto">x 1'50 €</span></td>
            </tr>
            <tr>
              <td colspan="2"><span class="texto"><b>TOTAL</b> impuestos incluidos</span></td>
              <td style="width:100px;"><span class="total">x 12'50 €</span></td>
            </tr>
          </table>
          <br><input type="button" name="" value="Comprar" class="botoncompra">
        </form>
      </div>
    </div>
    <hr style="margin:0px; width: 1024px">
    <div id="Patrocinadores">
      <img id="Patro" src="Patrocinadores.png" alt="Patrocinadores">
    </div>
    <div id="Footer">
      <marquee direction="right" spellcheck="200" id="Mensaje"> Bienvenidos a la web, disfruten...</marquee>
    </div>
  </div>
</center>
</body>
<script>

</script>
</html>
