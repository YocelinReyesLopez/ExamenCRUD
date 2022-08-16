<%--
  Created by IntelliJ IDEA.
  User: yocel
  Date: 15/08/2022
  Time: 07:25 p. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Registrar</title>
    <jsp:include page="templates/head.jsp"/>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>

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
                                                ¡Campo obligatorio!
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group mb-3">
                                        <div class="col">
                                            <label class="fw-bold" for="surname">Apellidos</label>
                                            <input name="surname" id="surname" required
                                                   class="form-control"/>
                                            <div class="invalid-feedback">
                                                ¡Campo obligatorio!
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
                                                ¡Campo obligatorio!
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group mb-3">
                                    <div class="row">
                                        <div class="col-12">
                                            <label for="birthday">Cumpleaños</label>
                                            <input type="date" name="birthday"
                                                   class="form-control"
                                                   id="birthday" required/>
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
