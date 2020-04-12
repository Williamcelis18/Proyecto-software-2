<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <title>Gestionar Usuarios</title>
    </head>
    <body>
        
        <div class="d-flex">
              <div class="card" col-sm-8>
            <div class="card-body">
                <form action="Controlador?menu=Usuarios" method="POST">
                    <div class="form-group text-center"> 
                    <h3>Registrar Nuevo Usuario</h3>
                            <img src="img/Usuario.png" alt="64" width="64"/>
                    </div>        
                    <div class="form-group">
                        <label>Id</label>
                        <input type="text"  value="${usuario.getId()}" name="txtId" class="form-control"required>
                    </div>
                    <div class="form-group">
                        <label>Nombre</label>
                        <input type="text"value="${usuario.getNombre()}" name="txtNombre" class="form-control"required>
                    </div>
                    <div class="form-group">
                        <label>Apellido</label>
                        <input type="text"  value="${usuario.getApellido()}"name="txtApellido" class="form-control"required>
                    </div>
                    <div class="form-group">
                        <label>Tipo</label>
                        <input type="text" value="${usuario.getTipo()}"name="txtTipo" class="form-control"required>
                    </div>
                    <div class="form-group">
                        <label>Telefono</label>
                        <input type="text" value="${usuario.getTelefono()}"name="txtTelefono" class="form-control"required>
                    </div>
                    <div class="form-group">
                        <label>Email</label>
                        <input type="text" value="${usuario.getEmail()}"name="txtEmail" class="form-control"required>
                       
                    </div>
                    <input type="submit" name="accion" value="Agregar" class="btn btn-info">
                    <input type="submit" name="accion" value="Actualizar" class="btn btn-success">
                    <input type="reset" name="accion" value="Cancelar" class="btn btn-info">
                    
                         
                 </form>
            </div> 
        </div>
        <div class="col-sm-9">
            <table class="table table-hover">
                <thead>
                    <tr>
                        <th>Id</th>
                        <th>Nombre</th>
                        <th>Apellido</th>
                        <th>Tipo</th>
                        <th>Telefono</th>
                        <th>Email</th> 
                        <th>Accion</th> 
                    </tr>
                </thead>
           <tbody>
               <c:forEach var="us" items="${usuarios}">       
                <tr>
                         <td>${us.getId()}</td>
                         <td>${us.getNombre()}</td>
                         <td>${us.getApellido()}</td>
                         <td>${us.getTipo()}</td>
                         <td>${us.getTelefono()}</td>
                         <td>${us.getEmail()}</td>
                         
                         <td>
                             <a class="btn btn-warning"href="Controlador?menu=Usuarios&accion=Editar&id=${us.getId()}">Editar</a>
                             <a class="btn btn-danger"href="Controlador?menu=Usuarios&accion=Eliminar&id=${us.getId()}">Eliminar</a> 
                         </td>
                       </tr>
                         
                       
            </c:forEach>
                   
                        
           </tbody>
        </table>
            <form action="Validar" method="POST">
               <div class="form-group"> 
                     <input type="submit" name="accion" value="Atras" class="btn btn-info">
                    </div>        
           </form>    
          </div>      
        </div>
   
          <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
          <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
          <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

    </body>
    
</html>
