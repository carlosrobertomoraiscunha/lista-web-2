<%-- 
    Document   : primeNumber
    Created on : Oct 21, 2019, 12:39:59 PM
    Author     : Carlos
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="mine" uri="myTags" %>
<%@tag description="put the tag description here" pageEncoding="UTF-8"%>

<%-- The list of normal or fragment attributes can be specified here: --%>
<%@attribute name="start" required="true" type="java.lang.Integer" rtexprvalue="true"%>
<%@attribute name="end" required="true" type="java.lang.Integer" rtexprvalue="true"%>

<%-- any content can be specified here e.g.: --%>
<ul class="list-group w-50">
    <li class="list-group-item">Números Primos</li>
        <c:forEach begin="${start}" end="${end}" var="number">
            <c:if test="${mine:isPrime(number)}">
            <li class="list-group-item">${number}</li>
            </c:if>
        </c:forEach>
</ul>