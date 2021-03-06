<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Acceso.aspx.cs" Inherits="Acceso" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

<!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/estilos.css" rel="stylesheet">
    <link href="css/estilos-fonts.css" rel="stylesheet">
    <title>SII</title>

</head>
<body>

    <header>
      <div class="header container-fluid">
          <div class="row align-items-center">
              <div class="imgHeader col-3">
              <a class="img" href="#" ><img src = "/imagenes/sep.png"  width= 50% ></a>
              </div>
              
              <div class="col-6">
                  <div class="row">
                      <div class="tituloSii text-center">
                          Sistema Integral de Información
                      </div>
                      <div class="tituloTex text-center">    
                          Instituto Tecnológico de Pachuca
                      </div>
                      <div class="tituloTex text-center">    
                          Portal de Alumnos
                      </div>
                  </div> 
              </div>
              <div class="imgHeader col-3">
              <a class="img" href="#" ><img src = "/imagenes/tecnm.png"  width= 50% ></a>
              </div>
          </div>
      </div>
      </header>


        <form id="form1" runat="server">
         <main>
                <div class="album py-5 bg-light">
                  <div class="container">
  
                    <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
                      <div class="col">
                        <div class="card shadow-sm">
                          <!--<svg class="bd-placeholder-img card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#55595c"/><text x="50%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text></svg>-->
  
                          <div class="">
                            <img src="imagenes/personal.jpg" alt="" width="96%">
                          </div>
  
                          <div class="card-body">
                            <p class="card-text">Personal</p>
  
                              <div class="text-center">
                                <button type="button" class="personal btn btn-block btn-sm btn-outline-secondary" data-bs-toggle="modal" data-bs-target="#acceso" onclick="cammbiarTexto(2); returnTipo(2);">Ingresar</button>
                              </div>
                          </div>
                        </div>
                      </div>
                      <div class="col">
                        <div class="card shadow-sm">
                          <!--<svg class="bd-placeholder-img card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#55595c"/><text x="50%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text></svg>-->
  
                          <div class="">
                            <img src="imagenes/alumnmos.jpg" alt="" width="100%">
                          </div>
  
                          <div class="card-body">
                            <p class="card-text">Alumnos</p>
  
                              <div class="text-center">
                                <button type="button" class="alumnos btn btn-block btn-sm btn-outline-secondary" data-bs-toggle="modal" data-bs-target="#acceso" onclick="cammbiarTexto(1); returnTipo(1);">Ingresar</button>
                              </div>
                          </div>
                        </div>
                      </div>
                      <div class="col">
                        <div class="card shadow-sm">
                          <!--<svg class="bd-placeholder-img card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#55595c"/><text x="50%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text></svg>-->
  
                          <div class="">
                            <img src="imagenes/aspirantes.jpg" alt="" width="100%">
                          </div>
  
                          <div class="card-body">
                            <p class="card-text">Aspirantes</p>
  
                              <div class="text-center">
                                <button type="button" class="aspirantes btn btn-block btn-sm btn-outline-secondary" data-bs-toggle="modal" data-bs-target="#acceso" onclick="cammbiarTexto(3); returnTipo(3);">Ingresar</button>
                              </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>

                <div class="modal fade" id="acceso" tabindex="-1" role="dialog">
                  <div class="modal-dialog">
                    <div class="modal-content rounded-5 shadow">
                      <div class="modal-header p-5 pb-4 border-bottom-0">
                        <!-- <h5 class="modal-title">Modal title</h5> -->
                        <h2 class="fw-bold mb-0">Acceso al Sistema</h2>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                      </div>
    
                      <div class="modal-body p-5 pt-0">
                        </div>
                          <div class="form-floating mb-3">
                            <input type="text" class="form-control rounded-4" id="floatingInput" placeholder="">

                              <!-- Variable usuario -->
                              <asp:HiddenField ID="usuarioFloat" Value="0" runat="server" />

                            <label id="user" for="floatingInput">No. de Control</label>
                          </div>
                          <div class="form-floating mb-3">
                            <input type="password" class="form-control rounded-4" id="floatingPassword" placeholder="">

                              <!-- Variable contraseña -->
                              <asp:HiddenField ID="contraFloat" Value="0" runat="server" />

                              <!-- Variable tipo -->
                              <asp:HiddenField ID="tipo" Value="0" runat="server" />

                              <script language="javascript" type="text/javascript">
                                   function returnStrings() {
                                       debugger;
                                       document.getElementById("usuarioFloat").value = document.getElementById('floatingInput').value;
                                       document.getElementById("contraFloat").value = document.getElementById('floatingPassword').value;
                                  }

                                  function returnTipo(num) {
                                      debugger;
                                      if (num == 1) {
                                          document.getElementById("tipo").value = "alumno";
                                      } else if (num == 2) {
                                          document.getElementById("tipo").value = "personal";
                                      } else if (num == 3) {
                                          document.getElementById("tipo").value = "aspirante";
                                      } 
                           
                           
                                   }
                              </script>

                            <label id="contra" for="floatingPassword">NIP</label>
                          </div>
                          

                        <asp:Button  class="w-100 mb-2 btn btn-lg rounded-4 btn-primary" ID="Button1" runat="server" OnClick="Button2_Click" OnClientClick="returnStrings()" Text="Ingresar" />
    
                      </div>
                    </div>
                  </div>
              </main>
    </form>
    
  
  <footer>
    <hr size="5">
        <div class="container">
          <div class="row align-items-center justify-content-center text-center">
            <div class="col-4"><i class="fa-solid fa-chalkboard-user"></i> Instituto Tecnológico de Pachuca ©</div>
            <div class="col-5"></div>
            <div class="col-3">
                <a href="https://www.facebook.com/tecnmpachuca/" target="_blank"><img src="/imagenes/facebook_1.png" width=10%></a>
                <a href="https://www.instagram.com/accounts/login/?next=/tecnmpachuca/" target="_blank"><img src="/imagenes/instagram_1.png" width=10%></a>
                <a href="https://goo.gl/maps/3niyRqNTjVnGJyVn6" target="_blank"><img src="/imagenes/mapa.png" width=10%></a>
                
              </div>

          </div><br>
        </div>
        
    
      </footer>
  


    <script src="js/bootstrap.min.js"></script>
    <script src="js/main.js"></script>




</body>
</html>
