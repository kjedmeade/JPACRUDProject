<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home Page</title>
</head>
<body>
<h1> Flowers </h1>

<!-- <form action="getFlowerById.do" method="GET">
Find a Flower by it's id <input type="text" name="fid" />
  <input type="submit" value="Get Info" />
  
 -->
<form action="GetFlowerById.do" method="GET">
<table>
<c:forEach var="flowerIndiv" items="${flowerList}">
<tr>

<td> ${flowerIndiv.name}<input type="radio" name = "fid" value= "${flowerIndiv.id}" />
 <input type="submit" value="Get Info" />
 </tr>
 <tr>

</c:forEach>
</table>
</form>

<!-- <h4>Create New Flower</h4>
<form action="CreateNewFlower.do" method="GET">
<ul>
 Enter a Name <li><input type="text" name="name" required="required" /></li>
 Enter a pronounciation <li><input type="text" name="pronounciation" required="required"/></li>
 Enter a family <li><input type="text" name="family" required="required"/></li>
 Enter a Species count <li><input type="text" name="noOfSpecies" required="required"/></li>
 Enter a Type <li><input type="text" name="type" required="required"/></li>
 Enter a Example Species <li><input type="text" name="exampleSpecies" required="required"/></li>

  <input type="submit" value="Create" />
  </ul>
  </form> -->



</body>
</html> 