<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="org.utec.alumnos.BuscarAlumnos" %>
<%@ page import="org.utec.alumnos.Alumno" %>
<%
    String nombre = request.getParameter("nombre");
    String apellido = request.getParameter("apellido");
    String ciString = request.getParameter("ci");

    Integer ci = null;
    if (ciString != null && !ciString.isEmpty()) {
        ci = Integer.parseInt(ciString);
    }

    // Instanciar la clase BuscarAlumnos y utilizar el método buscarAlumno
    BuscarAlumnos buscarAlumnos = new BuscarAlumnos();
    Alumno alumno = buscarAlumnos.buscarAlumno(nombre, apellido, ci);
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <title>Mostrar Alumno</title>
</head>
<body>

    <header>
        <div class="container custom-container">
            <img src="assets/utec.jpg" alt="logo">
            <h1>Sistema de Gestión de Alumnos</h1>
            
        </div>
    </header>

    <body>
        <div class="container">
            <div class="titulo-body">
                <h4 class="custom-title">Selección de Alumnos</h4>
            </div>
            
            <div class="card bg-light">
                <div class="card-body">
                    <form >
                        <div class="row g-3 align-items-center custom-padding">
                            <div class="col-2">
                                <label for="form-text" >Nombre</label>
                            </div>
                            <div class="col-3">
                                <input type="text"  class="form-control" value="<%= alumno != null ? alumno.getNombre() : "" %>" >
                            </div>
                            <div class="col-7">
                               
                            </div>
                        </div>
                        <div class="row g-3 align-items-center custom-padding">
                            <div class="col-2">
                                <label for="form-text" >Apellido</label>
                            </div>
                            <div class="col-3">
                                <input type="text"  class="form-control" value="<%= alumno != null ? alumno.getApellido() : "" %>" >
                            </div>
                            <div class="col-7">
                                
                            </div>
                        </div>
                        <div class="row g-3 align-items-center custom-padding ">
                            <div class="col-2">
                                <label for="form-text">Cédula Identidad</label>
                            </div>
                            <div class="col-3">
                                <input type="number" class="form-control" value="<%= alumno != null ? alumno.getCi() : "" %>">
                            </div>
                            <div class="col-7">
                              
                                
                            </div>
                        </div>
                        <div class="row g-3 align-items-center custom-padding">
                            <div class="col-2">
                                <label for="form-text" >Codigo Carrera</label>
                            </div>
                            <div class="col-3">
                                <input type="text"  class="form-control" value="<%= alumno != null ? alumno.getCodigoCarrera() : "" %>" >
                            </div>
                            <div class="col-7">
                                
                            </div>
                        </div>
                        <div class="row g-3 align-items-center custom-padding">
                            <div class="col-2">
                                <label for="form-text" >Direccion</label>
                            </div>
                            <div class="col-3">
                                <input type="text"  class="form-control" value="<%= alumno != null ? alumno.getDireccion() : "" %>">
                            </div>
                            <div class="col-7">
                               
                            </div>
                        </div>
                        <div class="row g-3 align-items-center custom-padding ">
                            <div class="col-2">
                                <label for="form-text">Año Nacimiento</label>
                            </div>
                            <div class="col-3">
                                <input type="number" class="form-control" value="<%= alumno != null ? alumno.getAnioNacimiento() : "" %>">
                            </div>
                            <div class="col-7">
                               
                            </div>
                        </div>

                        <div class="row g-3 align-items-center custom-padding ">
                            <div class="col-2">
                                <label for="form-text">Archivo Foto de Alumno</label>
                            </div>
                            <div class="col-3">
                                <input type="text" class="form-control" value="<%= alumno != null ? alumno.getArchivoFoto() : "" %>">
                            </div>
                            <div class="col-7">
                               
                            </div>
                        </div>
                       
                    </form>
                </div>
            </div>
           
           
        </div>
    </body>
    
    

    <footer>
        <div class="container custom-footer">
            <p>Unidad Curricular de Programacion de Aplicaciones Web- UTEC-2023-Equipo El Nuevo Acrux</p>
        </div>
        
    </footer>
    
</body>
</html>