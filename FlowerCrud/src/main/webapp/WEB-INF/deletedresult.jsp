<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Flower Deleted</title>
</head>
<body>



<!-- CONFIRM FILM deleted -->
	<c:choose>
    <c:when test="${flowerDeleted}">
    <p> The selected flower was deleted.<p>
     </c:when>
    <c:otherwise>
      <p>The selected Flower was not  deleted.</p>
    </c:otherwise>
  </c:choose>
  
    <a href = "/"> Return to homepage</a>
   </body>  
      </head>
    </html>