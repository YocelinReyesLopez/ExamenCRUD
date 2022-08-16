<%--
  Created by IntelliJ IDEA.
  User: yocel
  Date: 15/08/2022
  Time: 07:26 p. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Consultas</title>
    <jsp:include page="./templates/head.jsp"/>

</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-12">
            <div class="card mt-5">
                <div class="card-header">REGISTRAR</div>
                <div class="card-body">
                    <div class="row">
                        <div class="col-12">
                            <form class="needs-validation" novalidate action="add" method="post">
                                <div class="row">
                                    <div class="form-group mb-3">
                                        <div class="col">
                                            <label class="fw-bold" for="nombre">Nombre</label>
                                            <input name="nombre" id="nombre" required
                                                   class="form-control"/>
                                            <div class="invalid-feedback">
                                                Campo obligatio
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group mb-3">
                                        <div class="col">
                                            <label class="fw-bold" for="surname">Apellidos</label>
                                            <input name="surname" id="surname" required
                                                   class="form-control"/>
                                            <div class="invalid-feedback">
                                                Campo obligatio
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group mb-3">
                                    <div class="row">
                                        <div class="col">
                                            <label class="fw-bold" for="curp">curp</label>
                                            <input name="curp" id="curp" required
                                                   class="form-control"/>
                                            <div class="invalid-feedback">
                                                Campo obligatio
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group mb-3">
                                    <div class="row">
                                        <div class="col-12">
                                            <label for="cumple">Cumpleaños</label>
                                            <input type="date" name="cumple"
                                                   class="form-control"
                                                   id="cumple" required/>
                                            <div class="invalid-feedback">
                                                Campo obligatorio
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group mb-3">
                                    <div class="row">
                                        <div class="col-12 text-end">
                                            <button type="button" class="btn btn-danger btn-sm">Cancelar</button>
                                            <button type="submit" class="btn btn-success btn-sm">Guardar</button>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<jsp:include page="templates/footer.jsp"/>
</body>
</html>
