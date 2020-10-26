<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Flower site</title>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
</head>
<body>
<h1> View Flowers </h1>

<!-- <form action="getFlowerById.do" method="GET">
Find a Flower by it's id <input type="text" name="fid" />
  <input type="submit" value="Get Info" />
  
 -->
<form action="GetFlowerById.do" method="GET">
<table>
<c:forEach var="flowerIndiv" items="${flowerList}">
<tr>
<td> <input type="radio" name = "fid" value= "${flowerIndiv.id}" /> ${flowerIndiv.name}<td>
 </tr>
 <tr>
</c:forEach>
</table>
<input type="submit" value="Get Info" />
</form>
<br>
<br>
<h4>Create New Flower</h4>
<form action="CreateNewFlower.do" method="GET">
<table>
<tr> <td>Enter a name <input type="text" name="name" required="required" /></td></tr> 
 <tr><td> Enter a pronounciation<input type="text" name="pronounciation" required="required" /><td></tr> 
<tr><td> Enter a family <input type="text" name="family" required="required"/></td></tr> 
  <tr><td>Enter a species count<input type="number" name="noOfSpecies" required="required" /></td></tr> 
  <tr><td>Enter a type <input type="text" name="type" required="required" /></td></tr> 
  <tr><td>Enter a example species <input type="text" name="exampleSpecies" required="required" /></td></tr> 

  <tr><td> <input type="submit" value="Create" /> </tr></td>
</table>
  </form> 



<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
</body>
</html> 