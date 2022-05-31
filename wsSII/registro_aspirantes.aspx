<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="registro_aspirantes.aspx.cs" Inherits="registro_aspirantes" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

<!-- Required meta tags -->
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>

    <!-- Bootstrap CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/estilos-fonts.css" rel="stylesheet">
        <link href="css/estilos.css" rel="stylesheet">
        <link href="css/estilos-sidebar.css" rel="stylesheet">
        <link href="css/estilos-sidebarDp.css" rel="stylesheet">
        <link href="css/modulos.css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/fontawesome.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/regular.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
    <title>SII</title>

</head>
<body>

    <header>
      <div class="header container-fluid">
          <div class="row align-items-center">
              <div class="imgHeader col-3">
              <a class="img" href="#" ><img src = "/imagenes/sep.png"  width= 50% /></a>
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

     
    <div class="principal container-fluid">

       
        <div class="paddingt row ">
         <div class="col-md-7 col-lg-8">
        <h3 class="mb-3">Registro del alumno</h3>
        <h6 class="mb-3" id="titulodatos" >Información del alumno</h6>
           </div>
          <div class="row g-3">

            

            <div class="row g-3">
                <div class="col-sm-4">
                  <label for="firstName" class="form-label">Nombre (s)</label>
                  <input type="text" class="form-control" placeholder="" id="nomb" />
                  <div class="invalid-feedback">
                  Introduce tu nombre.
                  </div>
                </div>
            </div>

                 <!-- Variable nombre -->
              <asp:HiddenField ID="nombre" Value="0" runat="server" />

            <div class="col-sm-4">
              <label for="lastName" class="form-label">Apellido Paterno</label>
              <input type="text" class="form-control" placeholder="" id="pate"/>
              <div class="invalid-feedback">
              Introduce tu apellido paterno.
              </div>
            </div>

                 <!-- Variable paterno -->
              <asp:HiddenField ID="paterno" Value="0" runat="server" />

            <div class="col-sm-4">
              <label for="lastName" class="form-label">Apellido Materno</label>
              <input type="text" class="form-control" placeholder="" id="mate" />
              <div class="invalid-feedback">
              Introduce tu apellido materno.
              </div>
            </div>

                 <!-- Variable materno -->
              <asp:HiddenField ID="materno" Value="0" runat="server" />

            <h6 class="mb-3" id="titulosfec">Fecha de Nacimiento</h6>

            <div class="col-3">
              <label for="address" class="form-label">Fecha de nacimiento</label>
              <input type="text" class="form-control"  placeholder="AAAA-MM-DD" id="fec"/>
              <div class="invalid-feedback">
                Introduce tu fecha de nacimiento
              </div>
            </div>

                 <!-- Variable fecha -->
              <asp:HiddenField ID="fecha" Value='0000-00-00' runat="server" />

            <h6 class="mb-3" id="tituloinfo">Información de contacto</h6>

            <div class="col-3">
              <label for="address" class="form-label">Teléfono</label>
              <input type="text" class="form-control" placeholder="" id="telf"/>
              <div class="invalid-feedback">
                Introduce un número telefónico
              </div>
            </div>

                 <!-- Variable telefono -->
              <asp:HiddenField ID="tel" Value="0" runat="server" />
            
            <div class="col-sm-6">
              <label for="lastName" class="form-label">Dirección</label>
              <input type="text" class="form-control"  placeholder=""  id="dire"/>
              <div class="invalid-feedback">
              Introduce tu dirección.
              </div>
            </div>

                 <!-- Variable direccion -->
              <asp:HiddenField ID="dir" Value="0" runat="server" />
              <asp:HiddenField ID="noaspirante" Value="0" runat="server" />
            <h6 class="mb-3" id="titulocar">Carrera a elegir</h6>

            

               
</div>
              

           
</div>
            
          
        <div class="col-sm-6">
            <hr class="my-4"/>
            
            <asp:Button class="w-100 btn btn-primary btn-lg" ID="Button1" runat="server" Text="Registrar" OnClientClick="returnstrings()"/>
       </div>



    



</div>
 </main>
    </form>

    <!-- El code de abajo es para el index -->
    <footer>
    <hr size="5"/>
        <div class="container">
          <div class="row align-items-center justify-content-center text-center">
            <div class="col-4"><i class="fa-solid fa-chalkboard-user"></i> Instituto Tecnológico de Pachuca ©</div>
            <div class="col-5"></div>
            <div class="col-3">
                <a href="https://www.facebook.com/tecnmpachuca/" target="_blank"><img src="/imagenes/facebook_1.png" width=10%></a>
                <a href="https://www.instagram.com/accounts/login/?next=/tecnmpachuca/" target="_blank"><img src="/imagenes/instagram_1.png" width=10%></a>
                <a href="https://goo.gl/maps/3niyRqNTjVnGJyVn6" target="_blank"><img src="/imagenes/mapa.png" width=10%></a>
                
              </div>

          </div><br/>
        </div>
        
    
      </footer>
  


    <script src="js/bootstrap.min.js"></script>
    <script src="js/main.js"></script>

    <script language="javascript" type ="text/javascript">
        function returnstrings()
        {
            debugger;
            document.getElementById("noaspirante").value = document.getElementById(Session["user"]).value;
            document.getElementById("nombre").value = document.getElementById("nomb").value;
            document.getElementById("paterno").value = document.getElementById("pate").value;
            document.getElementById("materno").value = document.getElementById("mate").value;
            document.getElementById("fecha").value = document.getElementById("fec").value;
            document.getElementById("tel").value = document.getElementById("telf").value;
            document.getElementById("dir").value = document.getElementById("dire").value;
            
        }
    </script>
    <script src="/js/sidebaran.js"></script>
            <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
            <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/js/all.min.js"></script>
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
            <script src="/js/bootstrap.min.js"></script> 
            <script src="/js/main.js"></script> 

</body>
</html>
