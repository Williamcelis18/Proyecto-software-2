<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true" %>
<!DOCTYPE html>
<html>
    <script type="text/javascript">
history.forward();
   </script>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <title>Login</title>
        <style>
            
            body{background-image:  url(img/Fondo.jpeg)}
            body{background-attachment:fixed }
            body{background-position: center}
            body{-webkit-background-size: cover;}
            body{-moz-background-size:cover;}
            body{-o-background-size: cover;}
            body{background-repeat: repeat;}
          
        </style>
    
    
    </head>
    <body>
       <%response.setHeader("Pragma", "no-cache");
         response.setHeader("Cache-Control", "no-cache");
        response.setDateHeader("Expires", 0); %>
    
        <div class="container mt-4 col-lg-4"style="margin-left: 35px;">
            
            <div class="card col-sm-10">
                <div class="card-body">
                    <form class="form-sign" action="Validar" method="POST">
                        <div class="form-group text-center">
                            <h3>Login</h3>
                            <img src="img/Login.jpg" alt="100" width="180"/>
          
                            <h3>Bienvenidos al Sistema</h3>
                        </div>
                        <div class="form-group">
                            <label>Usuario:</label>
                            <input type="text" name="txtuser" class="form-control"required>
                        </div>
                        <div class="form-group">
           
                            <label>Password:</label>
                            <input type="password" name="txtpass" class="form-control"required>
                        </div>
                        <input type="submit" name="accion" value="Ingresar" class="btn btn-primary btn-lg btn-block">
                        
                        <input type="reset" name="accion" value="Cancelar" class="btn btn-primary btn-lg btn-block">
                         
                               
                    </form>
                </div>
            </div>
        </div>

<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" ="crossoriginanonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
   
     
    </body>
</html>
