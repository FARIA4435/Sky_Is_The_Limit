
	<?php
	session_start();
    if(!isset($_SESSION['name']))
    {
        require_once('nav.php');
    }
    elseif (isset($_SESSION['name'])) {
    	
    	require_once('nav2.php');
    }

?>
<!DOCTYPE html>

<html>
<head>
	<title>Contact</title>
		<meta charset="utf-8">
	  <meta name="viewport" content="width=device-width, initial-scale=1">
	  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
	  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
	  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	  <link rel="stylesheet" type="text/css" href="css/index.css">

</head>
<body>


</center>


	<div class="container">
  <h2  style="margin-top: 60px;">MAKE WITH LOVE</h2>

  <div class="row">
  <div class="col-md-4">
      <a href="https://www.facebook.com/profile.php?id=100006320652454&fref=ts" target="_"  class="thumbnail">
 		<h3>Faria Tasnim</h3>
        <img src="img/faria.jpg" alt="seafoodimg" style="width:500px;height:200px">
         	
      </a>
    </div>


<div class="col-md-4">
      <a href="https://www.facebook.com/noor.kibria?fref=ts" target="_" class="thumbnail">
 		<h3>Noor Kibria Tarif</h3>
        <img src="img/tarif.jpg" alt="seafoodimg" style="width:500px;height:200px">
        
      </a>
    </div>

    <div class="col-md-4">
      <a href="https://www.facebook.com/anikanawar.nishi" target="_"  class="thumbnail">
 		<h3>Anika N Nishi</h3>
        <img src="img/anika.jpg" alt="seafoodimg" style="width:400px;height:200px">
         
      </a>
    </div>

</body>
</html>