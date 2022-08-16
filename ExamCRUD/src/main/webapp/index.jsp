<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Iniciar sesión</title>
    <jsp:include page="./templates/head.jsp"/>
</head>
<body>
<div class="container-fluid">
    <div class="row">
        <div class="col align-middle">
            <div class="card position-absolute top-50 start-50 translate-middle" style="width: 30%">
                <div class="card-header border-success">Registrar</div>
                <div class="card-body">
                    <form action="login" method="post">
                        <div class="form-group mb-3">
                            <label for="nombre">Nombre</label>
                            <input name="nombre" placeholder="nombre" id="nombre" class="form-control" type="text" required/>
                        </div>
                        <div class="form-group mb-3">
                            <label for="surname">Apellidos</label>
                            <input name="surname" placeholder="surname" id="surname" class="form-control" type="text" required/>
                        </div>
                        <div class="form-group mb-3">
                            <label for="curp">Curp</label>
                            <input name="curp" placeholder="curp" id="curp" class="form-control" type="text" required/>
                        </div>
                        <div class="form-group mb-3">
                            <label for="birthday">Cumpleaños</label>
                            <input name="birthday" placeholder="birthday" id="birthday" class="form-control" type="text" required/>
                        </div>

                        <button class="btn btn-info btn-sm col-md-12" type="submit">
                            <i data-feather="log-in"></i> Registrar
                        </button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<jsp:include page="./templates/footer.jsp"/>
<script>
    $(document).ready(() => {
        document.getElementById("loaderDiv").style.display = "none";
    });
    feather.replace();
</script>
<jsp:include page="templates/footer.jsp"/>
</body>
</html>