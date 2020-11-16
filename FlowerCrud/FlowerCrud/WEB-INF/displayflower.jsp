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
<div class="container-sm">
<div class="container-sm">
  <div class="row">
    <div class="col">
  
    </div>
    <div class="col-6">
      <h3 style="text-align:center">${flower.name}</h3>
<%-- <p class ="text-centered"> ID: ${flower.id}</p>
 --%>
 <br>
 <br>
 
 <p class ="text-centered"> PRONOUNCIATION: ${flower.pronounciation}</p>
<p class ="text-centered"> FAMILY: ${flower.family}</p>
<p class ="text-centered"> APPROXIMATE NUMBER OF SPECIES: ${flower.noOfSpecies}</p>
<p class ="text-centered"> TYPE: ${flower.type}</p>
<p class ="text-centered"> EXAMPLE SPECIES: ${flower.exampleSpecies}</p>
<br>
<br>
    </div>
    <div class="col">
     
    </div>
  
  </div>
</div>
<div class="container-sm">
  <div class="row">
    <div class="col">
  
    </div>
    <div class="col-6">
<h4 style="text-align:center"> EDIT INFORMATION FOR THIS FLOWER</h4>

    </div>
    <div class="col">
     
    </div>
  
  </div>
</div>
<br>
<br>
<form action="UpdateFlower.do" method="GET">
<table>
<tr><td class ="text-centered"> ID to update <input type="text" name="id" value ="${flower.id}"/></td></tr> 
<tr><td> Enter a new name <input type="text" name="name" required="required" /></td></tr> 
<tr><td> Enter a new pronounciation <input type="text" name="pronounciation" required="required"/></td></tr> 
<tr><td> Enter a new family <input type="text" name="family" required="required"/></td></tr> 
<tr><td> Enter a new number of species <input type="number" name="noOfSpecies" required="required"/></td></tr> 
<tr><td> Enter a new type <input type="text" name="type" required="required"/></td></tr> 
<tr><td> Enter a new example species <input type="text" name="exampleSpecies" required="required"/></td></tr> 
 </table>
  <div style="text-align:center">
<input type="submit" value="Update" class="btn btn-light"/>
 </form>
  <br>
  <br>
  <div style="text-align:center">
<form action="DeleteGivenFlower.do" method="GET">
  Delete this flower:  <input type="radio" name="id"  checked="checked" value ="${flower.id}"/>
  <input type="submit" value="Delete" class="btn btn-light" />

</form> 
</div>
</div>

</div>



<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
</body>
</html> 