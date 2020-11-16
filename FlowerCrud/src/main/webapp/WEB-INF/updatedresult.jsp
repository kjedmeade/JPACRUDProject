<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Flower Site</title>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
</head>
<body>
<br> 
<br> 
<br> 
<br> 

 <div class="container">
  <div class="row">
    <div class="col">
      
    </div>
    <div class="col">
     <h4 style ="text-align:center; color:gray">FLOWER UPDATED</H4>
<br>
<h4 style ="text-align:center"> ${updatedFlower.name}</h4>
<p> PRONOUNCIATION: ${updatedFlower.pronounciation}</p>
<p> FAMILY: ${updatedFlower.family}</p>
<p> NUMBER OF SPECIES: ${updatedFlower.noOfSpecies}</p>
<p> TYPE: ${updatedFlower.type}</p>
<p> EXAMPLE SPECIES: ${updatedFlower.exampleSpecies}</p>
<br>
<br>
    </div>
    <div class="col">
      
    </div>
  </div>
<%-- 
<h4 style ="text-align:center; color:gray">FLOWER UPDATED</H4>
<br>
<h4 style ="text-align:center"> ${updatedFlower.name}</h4>
<p> PRONOUNCIATION: ${updatedFlower.pronounciation}</p>
<p> FAMILY: ${updatedFlower.family}</p>
<p> NUMBER OF SPECIES: ${updatedFlower.noOfSpecies}</p>
<p> TYPE: ${updatedFlower.type}</p>
<p> EXAMPLE SPECIES: ${updatedFlower.exampleSpecies}</p>
 --%>

<br>
<br> 
<p style="text-align:center"> <a href = "/">Return to homepage</a> </p>


<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
</body>
</html> 