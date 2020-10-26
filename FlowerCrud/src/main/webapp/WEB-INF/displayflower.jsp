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

<h4>Name: ${flower.name}</h4>
<p> ID: ${flower.id}</p>
<p> Pronounciation: ${flower.pronounciation}</p>
<p> Family: ${flower.family}</p>
<p> Approximate number of Species: ${flower.noOfSpecies}</p>
<p> Annual or perennial: ${flower.type}</p>
<p> Example species: ${flower.exampleSpecies}</p>
<br>
<br>
<h4> Edit information for this flower</h4>
<form action="UpdateFlower.do" method="GET">
<table>
<tr><td> ID to update<input type="text" name="id" value ="${flower.id}"/></td></tr> 
<tr><td> Enter a new name <input type="text" name="name" required="required" /></td></tr> 
<tr><td> Enter a new pronounciation <input type="text" name="pronounciation" required="required"/></td></tr> 
<tr><td> Enter a new family <input type="text" name="family" required="required"/></td></tr> 
<tr><td> Enter a new number of species <input type="number" name="noOfSpecies" required="required"/></td></tr> 
<tr><td> Enter a new type <input type="text" name="type" required="required"/></td></tr> 
<tr><td> Enter a new example species <input type="text" name="exampleSpecies" required="required"/></td></tr> 
<tr><td> <input type="submit" value="Update" /></td></tr> 
 </table>
 </form>
  <br>
  <br>
<form action="DeleteGivenFlower.do" method="GET">
  Delete this flower:  <input type="radio" name="id"  checked="checked" value ="${flower.id}"/>
  <input type="submit" value="Delete " />

</form> 

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
</body>
</html> 