<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Teste REST</title>

    <script src="jquery.js" charset="utf-8"></script>
    <script type="text/javascript">
      function enviar() {
        var op = document.getElementById("operacao").value;
        var url = document.getElementById("url").value;
        $.ajax({
          url: 'http://localhost/rest/api/'+url,
          type: op,
          success: function(result) {
              alert(result);
          }
      });
      }
    </script>
  </head>
  <body>
    <select class="" name="operacao" id="operacao">
      <option value="GET">GET</option>
      <option value="POST">POST</option>
      <option value="DELETE">DELETE</option>
      <option value="PUT">PUT</option>
    </select>
    URL teste: <input type="text" name="url" value="" id="url">
    <button type="button" name="button" onclick="enviar()">Enviar</button>

  </body>
</html>
