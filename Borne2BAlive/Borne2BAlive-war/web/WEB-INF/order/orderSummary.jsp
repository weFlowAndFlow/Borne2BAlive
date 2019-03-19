<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Votre commande</h1>
        <c:forEach var="l" items="${lines}">
            
            <p>${l.menu.name}${l.product.name} ${l.qty} ${preTaxPrice}</p>
        
        </c:forEach>
        
        <br>
        Prix hors taxe : ${preTaxPrice}
        <br>
        Tva Appliquée : ${order.appliedVAT}
        <br>
        Prix toutes taxes comprises : ${priceVAT}
        <br>
        <br>
        
        
        <a href="MainController?section=cart&order=${order}">Modifier</a>
        <br>
        <a href="MainController?section=kill">Abandonner</a>
        <br>
        <a href="MainController?section=orderCheckOut&order=${order}&priceVAT=${priceVAT}&preTaxPrice=${preTaxPrice}">Confirmer</a>
        <br>
        
    </body>
</html>
