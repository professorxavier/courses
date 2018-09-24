<html><head>
<script src="jquery.js"></script>
<script>
	function enviar(){
		
		var valorX = document.getElementById("x");
		var valorY = document.getElementById("y");
		$.post("http://localhost/aula6/servidorPOST.php",{x:valorX.value,y:valorY.value},function(data){
			alert(data);
		});
		
	}
</script>
</head>
<body>
	x: <input type="text" name="x" id="x" value="" /><br>
	y: <input type="text" name="y" id="y" value="" /><br>
	<input type="button" value="enviar" onclick="enviar()" />
</body>
</html>