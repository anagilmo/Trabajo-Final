<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
    <head>
  
        <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
       
        <title>Editar Libro</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet">
         <script src="https://kit.fontawesome.com/c27ee9b7fe.js" crossorigin="anonymous"></script>
    </head>
    <body>
        <jsp:include page="WEB-INF/paginas/comunes/cabecera.jsp"/>
        <form action="${pageContext.request.contextPath}/servletControlador?accion=modificar&idLibro=${libro.idlibros}" method="POST"class="was-validated ">
            <jsp:include page="/WEB-INF/paginas/comunes/botonesNavEdicion.jsp"/>
            <section id="details">
                <div class="container">
                    <div class="row">
                        <div class="col">
                            <div class="card">
                                <div class="card-header">
                                    <h4> Editar Libro</h4>
                                </div>
                                
                                <div class="card-body">
                                 <div class="form-group">
                            <label for="nombre">Titulo</label>
                            <input type="text" class="form-control" name="nombre" required="" value="${libro.nombre}">
                        </div>
                        <div class="form-group">
                            <label for="autor">Autor</label>
                            <input type="text" class="form-control" name="autor" alue="${libro.autor}>
                        </div>
                        <div class="form-group">
                            <label for="cantPaginas">Cantidad de Paiginas</label>
                            <input type="number" class="form-control" name="cantPaginas" required="" value="${libro.cantPaginas}">
                        </div>
                        <div class="form-group">
                            <label for="precio">Valor del Libro</label>
                            <input type="currency" class="form-control" name="precio" required="" value="${libro.precio}>
                        </div>
                        <div class="form-group">
                            <label for="copias">Cantidad de Copias</label>
                            <input type="number" class="form-control" name="copias" required="" value="${libro.copias}">
                        </div>
                    </div>
                            </div>
                            
                        </div>
                    </div>
                </div>
            </section>
        </form>
     
        <jsp:include page="WEB-INF/paginas/comunes/piedepagina.jsp"/>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"></script>
   

    </body>
</html>