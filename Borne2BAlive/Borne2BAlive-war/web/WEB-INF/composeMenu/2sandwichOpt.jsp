<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" href="style/catalog.css">
        <link rel="stylesheet" href="style/composeMenuStyle.css">
        <title>Borne2BAlive</title>
    </head>
    <body>
        <c:url var="pageHead" value="MainController?section=catalog&zone=pageHead" />
        <c:import url="${pageHead}" />

        <div class="globalContent">
            <c:url var="zoneHead" value="MainController?section=composeMenu&step=2&zone=header" />
            <c:import url="${zoneHead}" />

            <div class="centerStage">
                <c:forEach var="o" items="${currentSandwichOptions}">
                    <div class="row">
                        
                        <c:url var="remove" value="MainController?section=composeMenu&step=2&option=${o.id}" />
                        
                        <div class="col-md-3"></div>

                        <div class="col-md-2 centerContent"><a href="${remove}"><img src="${o.ingredient.img}" alt="${o.ingredient.name}" height="80"></a></div>
                        
                        <div class="col-md-1 centerContent"><a href="${remove}"><img src="Img/pictograms/delete.jpg" alt="retirer du sandwich" width="40"></a></div>

                        <div class="col-md-3 centerContent"><a href="${remove}" class="btn btn-outline-success" role="button">Retirer l'ingrédient ${o.ingredient.name}</a></div>

                        <div class="col-md-3"></div>
                    </div>
                </c:forEach>



            </div>

            <br><br>

            <c:url var="pageFoot" value="MainController?section=composeMenu&step=2&zone=footer" />
            <c:import url="${pageFoot}" />

            <br>
        </div>



        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>


    </body>
</html>


