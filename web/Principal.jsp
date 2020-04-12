<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true"%>
<!DOCTYPE html>
<html>
   <script type="text/javascript">
    history.forward();
   </script>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        
        <title>Pagina Principal</title>
      
        <style>
             
            body{background-image: url(img/fondo_1.jpg)}
        </style>
    </head>
    <body>
        <%response.setHeader("Pragma", "no-cache");
         response.setHeader("Cache-Control", "no-cache");
        response.setDateHeader("Expires", 0); 
        request.getSession().invalidate();
      
        
        if(request.getAttribute("usuario")==null){
        response.sendRedirect("index.jsp");
        }
        %>
        <nav class="navbar navbar-expand-lg navbar-light bg-info">
  <a class="navbar-brand" href="#">SETWARE</a>
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav">
            <li class="nav-item active">
                <a style="margin-left: 10px; border: none"class="btn btn-outline-light" href="Controlador?menu=Inicio" target="myFrame">Inicio
                  <img src="img/inmueble.png" alt="20" width="20"/>
                </a>
                
            </li>
           <div class="dropdown">
               <Button style="margin-left: 10px; border: none" class="btn btn-outline-light dropdown-toggle"  type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Usuarios
               <img src="img/logousuario.png" alt="20" width="20"/>
               </button>
                
               <div class="dropdown-menu text-center">
                  <a  style="margin-right: 10px; border: none" class="dropdown-item" href="Controlador?menu=ListarUsuarios&accion=Listar">Listar Usuarios</a>
                  <a  style="margin-right: 10px; border: none" class="dropdown-item" href="Controlador?menu=Usuarios&accion=Listar">Gestionar Usuarios</a>
                  <div class="dropdown-divider"></div>
                </div>   
            </div>
           <div class="dropdown">
               <Button style="margin-left: 10px; border: none" class="btn btn-outline-light dropdown-toggle"  type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Invitados
                   <img src="img/logousuario.png" alt="20" width="20"/>
               </button>
                <div class="dropdown-menu text-center">
                  <a  style="margin-right: 10px; border: none" class="dropdown-item" href="Controlador?menu=ListarInvitados&accion=Listar">Listar Invitados</a>
                  <a  style="margin-right: 10px; border: none" class="dropdown-item" href="Controlador?menu=Invitados&accion=Listar">Gestionar Invitados</a>
                  <div class="dropdown-divider"></div>
                </div>   
            </div>
           
            <li class="nav-item">
              <a style="margin-left: 10px; border: none" class="btn btn-outline-light" href="Controlador?menu=Inmuebles"target=>Inmuebles
                <img src="img/inmueble.png" alt="20" width="20"/>
              </a>
            
            </li>
    </ul>
      <div class="dropdown">
        <button style="border:none"class="btn btn-outline-light dropdown-toggle"  type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
              <img src="img/sesion.png" alt="20" width="20"/> 
              ${usuario.getNombre()}
        </button>
                <div class="dropdown-menu text-center">
                 <a class="dropdown-item" href="#">
                       <img src="img/user.png" alt="60" width="60"/> 
                    </a>
                  <a class="dropdown-item" href="#">${usuario.getNombre()}</a>
                  <a class="dropdown-item" href="#">${usuario.getEmail()}</a>
                  <div class="dropdown-divider"></div>
                  <form action="Validar" method="POST">
                      <Button name="accion" value="Salir" class="dropdown-item" href="#">Salir
                         <img src="img/exit_1.png" alt="20" width="20"/>
                      </Button>
                   
                  </form>
                </div>
             </div>
          </div>
        </nav>                 
        <div class="mt-4" style="height: 570px;">
            <iframe name="myFrame" style="height: 100%; width: 100%; border:none" href="nuevo.jsp"></iframe> 
             
        </div> 
                 
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" ="crossoriginanonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
   
     </body>
    
</html>
