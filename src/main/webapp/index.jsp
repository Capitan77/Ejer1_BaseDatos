<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>

<!DOCTYPE html>
<html>
<head>
    <title>Bienvenido al Sistema</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

    <div class="container mt-5">
           <h1>Listado de Productos</h1>
           <a href="registro.jsp" class="btn btn-success mb-3">Agregar nuevo Producto</a>
           <!--Bloque listado de productos-->

  <div class="card-group">
     <%
         List<String[]> items = (List<String[]>) request.getAttribute("ListaProductos");
         if (items != null && !items.isEmpty()) {
             for (String[] item : items) {
     %>
                 <div class="col-md-4 d-inline p-2 ">
                   <div class="card border-secondary p-5 ">
                     <p><strong>Id:</strong>        <%= item[0] %></p>
                     <p><strong>Nombre:</strong>    <%= item[1] %></p>
                     <p><strong>Precio:</strong> S/  <%= item[2] %></p>
                     <p><strong>Stock:</strong>     <%= item[3] %></p>
                     <p><strong>Descuento:</strong> <%= item[4] %></p>
                     <a class="btn btn-primary">Editar</a>
                     <a class="btn btn-dark">Eliminar</a>
                    </div>
                 </div>
     <%
             }
         } else {
     %>
             <p>No hay productos disponibles.</p>
     <%
         }
     %>
</div>
</body>
</html>