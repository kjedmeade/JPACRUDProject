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
<div class="container">
  <div class="row">
    <div class="col">
  
    </div>
    <div class="col-6">
    <br>
    <br>
    <br>
  
     <h3 style="text-align:center"> NEW FLOWER ADDED </h3>
<br>
<h4 style="text-align:center">${createdFlower.name}</h4>
<p> PRONOUNCIATION: ${createdFlower.pronounciation}</p>
<p> FAMILY: ${createdFlower.family}</p>
<p> NUMBER OF SPECIES: ${createdFlower.noOfSpecies}</p>
<p> TYPE: ${createdFlower.type}</p>
<p> EXAMPLE SPECIES: ${createdFlower.exampleSpecies}</p>
<br>
 <a href = "/"><h5 style="text-align:center"> Return to homepage</h5></a>

    </div>
    <div class="col">
     
    </div>
  </div>


<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
</body>
</html> 