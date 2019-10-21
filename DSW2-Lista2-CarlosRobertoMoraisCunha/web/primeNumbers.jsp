<%-- 
    Document   : primeNumbers
    Created on : Oct 21, 2019, 12:32:26 PM
    Author     : Carlos
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="mine" uri="myTags" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Números Primos</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    </head>
    <body>
        <div class="container-fluid">
            <c:if test="${param.start != null && param.end != null}">
                <c:if test="${Integer.valueOf(param.start) > Integer.valueOf(param.end)}">
                    <div class="alert alert-warning alert-dismissible fade show" role="alert" id="alertFormat">
                        O valor inicial não pode ser maior que o valor final.
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                </c:if>
            </c:if>


            <div class="container d-flex justify-content-center">
                <p class="h1">Números Primos</p>
            </div>

            <div class="container d-flex justify-content-center">
                <form method="POST" class="w-100">
                    <div class="form-row justify-content-center">
                        <div class="form-group col">
                            <label for="start">Valor Inicial</label>
                            <input type="number" class="form-control" id="start" name="start" placeholder="Valor Inicial" required autocomplete="off" min="0">
                        </div>
                        <div class="form-group col">
                            <label for="end">Valor Final</label>
                            <input type="number" class="form-control" id="end" name="end" placeholder="Valor Final" required autocomplete="off" min="0">
                        </div>
                        <div class="form-group align-self-end">
                            <button type="submit" class="btn btn-primary">Gerar Número Primos</button>
                            <a class="btn btn-primary" href="index.html">Voltar</a>
                        </div>
                    </div>
                </form>
            </div>

            <c:if test="${param.start != null && param.end != null}">
                <c:if test="${Integer.valueOf(param.start) < Integer.valueOf(param.end)}">
                    <div class="container d-flex justify-content-left">
                        <mine:primeNumber start="${param.start}" end="${param.end}" />
                    </div>
                </c:if>
            </c:if>
        </div>

        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </body>
</html>
