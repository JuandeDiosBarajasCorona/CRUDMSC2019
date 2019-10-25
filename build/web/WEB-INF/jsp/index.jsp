<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CRUD Hackathon</title>
        
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    
    </head>

    <body>
        
        <div class="container-fluid px-4 py-4">
            <div class="card border-info">
                <div class="card-header">
                    <button type="button" class="btn btn-primary rounded-0" data-toggle="modal" data-target="#exampleModal">
                        Agregar Empleado
                    </button>
                    <div class="card-body">
                        <table class="table table-hover">
                            <thead class="thead-dark">
                                <tr>
                                    <th>Clave</th>
                                    <th>Nombre</th>
                                    <th>Sueldo</th>
                                    <th>Opciones</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach var="reg" items="${lista}">
                                <tr>
                                    <td>${reg.clave}</td>
                                    <td>${reg.nombre}</td>
                                    <td>${reg.sueldo}</td>
                                    <td>                                                                                
                                        <a class="btn btn-warning rounded-0" href="<c:url value='/editar.htm?clave=${reg.clave}' />" >Editar</a>
                                        <a class="btn btn-danger rounded-0 " href="<c:url value='/delete.htm?clave=${reg.clave}' />">Borrar</a>
                                    </td> 
                                </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>        
        <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content rounded-0">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Agregar Empleado</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <form method="POST" action="agregar.htm" modelAttribute="Empleado">
                            <div class="form-group">
                                <label for="">Clave</label>
                                <input type="text" class="form-control rounded-0" id="clave" name="clave" placeholder="Clave" required>
                            </div>
                            <div class="form-group">
                                <label for="">Nombre</label>
                                <input type="text" class="form-control rounded-0" id="nombre" name="nombre" placeholder="Nombre" required>
                            </div>
                            <div class="form-group">
                                <label for="">Sueldo</label>
                                <input type="text" class="form-control rounded-0" id="sueldo" name="sueldo" placeholder="Sueldo" required>
                            </div>
                            <button type="submit" class="btn btn-primary rounded-0">Registrar</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>

    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>
