

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <title>Lista de Invitados</title>
    </head>
    <body>
        <h1 class="text-center">Lista de Invitados</h1>
         <div class="card" col-sm-8>
            <div class="card-body">
                <form action="Validar" method="POST">
        <div style="margin: 0 auto;" class="col-sm-8">
            <table style="margin:0 auto;"class="table table-hover">
                <thead>
                      
                    <tr>
                        <th>Id</th>
                        <th>Nombre</th>
                        <th>Apellido</th>
                        <th>Id_inmueble</th> 
                    </tr>
                </thead>
           <tbody>
               <c:forEach var="in" items="${invitados}">       
                <tr>
                         <td>${in.getId()}</td>
                         <td>${in.getNombre()}</td>
                         <td>${in.getApellido()}</td>
                         <td>${in.getId_inmueble()}</td>

                       </tr>
            </c:forEach>        
                    <td>
                    <input type="submit" name="accion" value="Atras" class="btn btn-info">
                    </td> 
           </tbody>
        </table>
            
          </div> 
            </form>
        </div>
   
          <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
          <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
          <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
        
    </body>
</html>
