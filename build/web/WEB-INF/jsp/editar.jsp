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
                    <form method="POST" action="doedit.htm" modelAttribute="Empleado">
                            <div class="form-group">
                                <label for="">Clave</label>
                                <input value = "${lista[0].clave}"type="text" class="form-control rounded-0" id="clave" name="clave" placeholder="Clave" required>
                            </div>
                            <div class="form-group">
                                <label for="">Nombre</label>
                                <input value = "${lista[0].nombre}" type="text" class="form-control rounded-0" id="nombre" name="nombre" placeholder="Nombre" required>
                            </div>
                            <div class="form-group">
                                <label for="">Sueldo</label>
                                <input value = "${lista[0].sueldo}" type="text" class="form-control rounded-0" id="sueldo" name="sueldo" placeholder="Sueldo" required>
                            </div>
                            <button type="submit" class="btn btn-warning rounded-0">Editar</button>
                        </form>
                </div>
            </div>
        </div>        
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>
