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
 Enter a new Name <li><input type="text" name="name" required="required" /></li>
 Enter a new pronounciation <li><input type="text" name="pronounciation" required="required"/></li>
 Enter a new family <li><input type="text" name="family" required="required"/></li>
 Enter a new Number of Species <li><input type="text" name="noOfSpecies" required="required"/></li>
 Enter a new Type <li><input type="text" name="type" required="required"/></li>
 Enter a new Example Species <li><input type="text" name="exampleSpecies" required="required"/></li>

  <input type="submit" value="Update" />
  </ul>
 </form>
  
<form action="DeleteGivenFlower.do" method="GET">
  Delete this flower  <input type="text" name="id"  value ="${flower.id}"/>
  <input type="submit" value="Delete " />

</form>

</body>
</html> 