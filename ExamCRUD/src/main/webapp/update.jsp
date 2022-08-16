<%--
  Created by IntelliJ IDEA.
  User: yocel
  Date: 15/08/2022
  Time: 07:27 p. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Modificar</title>
    <jsp:include page="templates/head.jsp"/>
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
                            <form class="needs-validation" novalidate action="save" method="post">
                                <div class="form-group mb-3">
                                    <div class="row">
                                        <div class="col">
                                            <label class="fw-bold" for="nombre">Nombre</label>
                                            <input name="nombre" id="nombre" required
                                                   class="form-control" value="${persona.nombre}"/>
                                            <div class="invalid-feedback">
                                                ¡Campo obligatorio!
                                            </div>
                                            <input type="hidden" name="id" value="${persona.id}"/>
                                        </div>
                                        <div class="col">
                                            <label class="fw-bold" for="surname">Apellidos</label>
                                            <input name="surname" id="surname" required
                                                   class="form-control" value="${persona.surname}"/>
                                            <div class="invalid-feedback">
                                                ¡Campo obligatorio!
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group mb-3">
                                    <div class="row">
                                        <div class="col">
                                            <label class="fw-bold" for="curp">Curp</label>
                                            <input name="curp" id="curp" required
                                                   class="form-control" value="${persona.curp}"/>
                                            <div class="invalid-feedback">
                                                ¡Campo obligatorio!
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group mb-3">
                                    <div class="row">
                                        <div class="col">
                                            <label class="fw-bold" for="birthday">Cumpleaños</label>
                                            <input name="birthday" id="birthday" required
                                                   class="form-control" type="date" value="${persona.birthday}"/>
                                            <div class="invalid-feedback">
                                                ¡Campo obligatorio!
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group mb-3">
                                    <div class="row">
                                        <div class="col-12 text-end">
                                            <button type="button" class="btn btn-danger btn-sm">Cancelar</button>
                                            <button type="submit" class="btn btn-warning btn-sm">Actualizar</button>
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
