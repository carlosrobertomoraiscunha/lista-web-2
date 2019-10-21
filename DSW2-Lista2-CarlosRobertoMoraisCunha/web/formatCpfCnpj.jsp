<%-- 
    Document   : formatar_cpf
    Created on : 21/10/2019, 08:13:14
    Author     : Carlos
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="mine" uri="myTags" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Formatar CPF/CNPJ</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    </head>
    <body>
        <div class="container-fluid">
            <c:if test="${param.valueInput != null}">
                <c:if test="${param.valueInput.length() != 11 && param.valueInput.length() != 14}">
                    <div class="alert alert-warning alert-dismissible fade show" role="alert" id="alertFormat">
                        O valor informado não é nem um CPF, nem um CNPJ.
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                </c:if>
            </c:if>

            <div class="container d-flex justify-content-center">
                <p class="h1">Formatar CPF/CNPJ</p>
            </div>

            <div class="container d-flex justify-content-center">
                <form method="POST" class="w-100" id="formCpfCnpj">
                    <div class="form-row justify-content-center">
                        <div class="form-group col-md-6">
                            <label for="valueInput">CPF/CNPJ</label>
                            <input type="text" class="form-control" id="valueInput" name="valueInput" pattern="[0-9]+$" placeholder="Digite seu cpf/cnpj" required autocomplete="off">
                        </div>
                        <div class="form-group align-self-end">
                            <button type="submit" class="btn btn-primary">Formatar</button>
                            <a class="btn btn-primary" href="index.html">Voltar</a>
                        </div>
                    </div>
                </form>
            </div>

            <c:if test="${param.valueInput != null}">
                <c:if test="${param.valueInput.length() == 11 || param.valueInput.length() == 14}">
                    <div class="container d-flex justify-content-center">
                        <c:choose>
                            <c:when test="${param.valueInput.length() == 11}">
                                <p class="h1">Seu CPF formatado é: <mine:formatCpfCnpj value="${param.valueInput}" /></p>
                            </c:when>
                            <c:when test="${param.valueInput.length() == 14}">
                                <p class="h1">Seu CNPJ formatado é: <mine:formatCpfCnpj value="${param.valueInput}" /></p>
                            </c:when>
                        </c:choose>
                    </div>
                </c:if>
            </c:if>
        </div>

        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </body>
</html>
