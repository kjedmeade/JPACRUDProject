<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Flower site</title>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    <link rel="stylesheet" href="css/flowercss.css">
</head>
<body>
<br>
<div class="container-sm">
<div class="container-sm">
<h1 class="text-center gray"> W E L C O M E</h1>
<br>
<img src="images/flowerphoto.png" class="img-fluid" style="border:none;background:none;">
<br>
<h1 class="text-left  gray"> ...explore</h1>
</div>
<br>
<br>


<!-- <form action="getFlowerById.do" method="GET">
Find a Flower by it's id <input type="text" name="fid" />
  <input type="submit" value="Get Info" />
  
 -->
 <div class="container-sm ">
 <div class="container">
  <div class="row">
    <div class="col">
    <br>
    <br>
    
<img src="images/flower2.png" class="img-fluid" height = 500px;  style="border:none;background:none;">
    </div>
    <div class="col">
    
 
<form action="GetFlowerById.do" method="GET">
<table>
<c:forEach var="flowerIndiv" items="${flowerList}">
<tr>
<td> <input type="radio" name = "fid" value= "${flowerIndiv.id}" /> ${flowerIndiv.name}<td>
 </tr>
 <tr>
</c:forEach>
</table>
<br>

<input type="submit" value="Get Info" class="btn btn-light"/>

</form>

    </div>
  </div>
   </div>
    </div>


 
<br>
<br>
 <div class="container-sm ">
<div class ="centered" style="text-align:center"> 
<h1 style="text-align:right; color: gray">create new flower...</h1>
<br>
<br>
<br>
 <div class="row">
    <div class="col">
    
    </div>
  <div class="col">
   
<form action="CreateNewFlower.do" method="GET">
<table>
<tr> <td>NAME  <input list = "names" type="text" name="name" required="required" />
<datalist id="names" >
     <option value="Lavender">
     <option value="Daffodil">
     <option value="Pansy">
     <option value="Amaryllis">
  </datalist></td></tr> 
  
 <tr><td> PRONOUNCIATION  <input type="text" name="pronounciation" required="required" /><td></tr> 
<tr><td> FAMILY <input list = "families" type="text" name="family" required="required"/></td></tr> 
<datalist id="families" >
     <option value="Lamiaceae">
     <option value="Amaryllidaceae">
     <option value="Violaceae">
     <option value="Amaryllidaceae">
    
  </datalist></td></tr> 
  
  <tr><td>SPECIES COUNT  <input type="number" name="noOfSpecies" required="required" />
  </td></tr> 
  <tr><td>TYPE <input list= "type" type="text" name="type" required="required" />
  <datalist id="type" >
     <option value="perennial">
     <option value="annual">
  </datalist></td></tr> 
  <tr><td>EXAMPLE SPECIES  <input type="text" name="exampleSpecies" required="required" /></td></tr> 

  <tr><td> <br>
<br><input type="submit" value="Create" class="btn btn-light"/> </tr></td>
</table>
  </form>
   </div>
    <div class="col">
    </div>
    
  </div>
  <br> 
  <br> 
  <br> 
  <br> 
  <br> 
  <br> 
  </div>
  </div>
  </div>
  
  
 
  
  
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
</body>
</html> 