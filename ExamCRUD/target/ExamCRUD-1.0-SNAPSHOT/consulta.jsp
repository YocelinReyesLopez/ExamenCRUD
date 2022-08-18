<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Consultas</title>
    <jsp:include page="./templates/head.jsp"/>

</head>
<body>
<div class="container mt-5">
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-header">
                    <div class="row">
                        <div class="col-6">PERSONAS</div>
                        <div class="col-6 text-end">
                            <a href="create-persona" class="btn btn-outline-success btn-sm">
                                Registrar persona
                            </a>
                        </div>
                        <c:if test="${param['result']}">
                            <p><c:out value="${param['message']}"></c:out></p>
                        </c:if>
                    </div>
                </div>
                <div class="card-body">
                    <table class="table table-sm table-hover" id="datatable">
                        <thead>

                        <th>#</th>
                        <th>Nombre</th>
                        <th>Apellido</th>
                        <th>Curp</th>
                        <th>Cumpleaños</th>
                        <th>Acciones</th>
                        </thead>
                        <tbody>
                        <c:forEach var="persona" items="${personas}" varStatus="status">
                            <tr>
                                <td>
                                    <c:out value="${status.count}"></c:out>
                                </td>
                                <td>
                                    <c:out value="${persona.nombre}"></c:out>
                                </td>
                                <td>
                                    <c:out value="${persona.surname}"></c:out>
                                </td>
                                <td>
                                    <c:out value="${persona.curp}"></c:out>
                                </td>
                                <td>
                                    <c:out value="${persona.birthday}"></c:out>
                                </td>
                                <td>
                                    <a href="get-persona?id=${persona.id}" class="btn btn-warning
                                    btn-sm">Modificar</a>
                                    <form action="delete-persona" method="post" class="d-inline">
                                        <input type="hidden" value="${persona.id}" name="id"/>
                                        <button type="submit" class="btn btn-danger btn-sm">
                                            Eliminar
                                        </button>
                                    </form>
                                </td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>

<script>
    $(document).ready(() => {
        $('#datatable').DataTable({
            language: {
                url: 'https://cdn.datatables.net/plug-ins/1.11.5/i18n/es-MX.json',
            },
        });

    })
</script>

<jsp:include page="templates/footer.jsp"/>
</body>
</html>
