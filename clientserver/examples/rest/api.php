<?php
require_once("config.php");
$method = $_SERVER["REQUEST_METHOD"];
$uri = trim($_SERVER['REQUEST_URI'],'/');
$requestArray = explode($API_BASE, $uri);
$data = explode("/",$requestArray[1]);
$resource = $data[1];
$id = null;
if (count($data)>2) {
  $id = $data[2];
}

switch ($method) {
  case 'GET':
    getObject($mysqli, $resource, $id);
    break;
  default:
    echo "Operacao invalida";
    break;
}

function getObject($conn, $table, $id) {

  $sql = "SELECT * FROM $table where id=$id";
  if ($id==null) {
    $sql = "SELECT * FROM $table";
  }
  $result = $conn->query($sql);

	$dbdata = array();

	while( $row = $result->fetch_assoc()) {
		$dbdata[]=$row;
	}
	echo json_encode($dbdata);

}

?>
