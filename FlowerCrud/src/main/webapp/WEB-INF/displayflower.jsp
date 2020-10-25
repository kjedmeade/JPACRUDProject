<meta charset="UTF-8">
<title>Home Page</title>
</head>
<body>
<h1> Flowers </h1>

<h1> ${flower.name}</h1>
<p> ${flower.pronounciation}</p>
<p> ${flower.family}</p>
<p> ${flower.noOfSpecies}</p>
<p> ${flower.type}</p>
<p> ${flower.exampleSpecies}</p>

<form action="UpdateFlower.do" method="GET">
<ul>
<li> ID to update<input type="text" name="id" value ="${flower.id}"/></li>
<li> Enter a new Name <input type="text" name="name" required="required" /></li>
<li> Enter a new pronounciation <input type="text" name="pronounciation" required="required"/></li>
<li> Enter a new family <input type="text" name="family" required="required"/></li>
<li> Enter a new Number of Species <input type="text" name="noOfSpecies" required="required"/></li>
<li> Enter a new Type <input type="text" name="type" required="required"/></li>
<li> Enter a new Example Species <input type="text" name="exampleSpecies" required="required"/></li>
 <input type="submit" value="Update" />
  </ul>
 </form>
  
<form action="DeleteGivenFlower.do" method="GET">
  Delete this flower  <input type="radio" name="id"  value ="${flower.id}"/>
  <input type="submit" value="Delete " />

</form> 

</body>
</html> 