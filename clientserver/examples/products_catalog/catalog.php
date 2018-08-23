<?php

$mysqli = new mysqli('localhost','root','root','aula3_clientserver');

$op = $_GET["op"];

switch ($op) {
    case "list":
        listar($mysqli);
        break;
    case "filterCode":
        getByCode($mysqli, $_GET["code"]);
        break;
    case "filterPrice":
        getByPrice($mysqli, $_GET["from"],$_GET["to"]);
        break;
	default: 
		echo "Operacao invalida";
		break;
}

function listar($mysqli) {
	$query = "SELECT produto_id, nome, estoque, preco from produto";
	$result = $mysqli->query($query);
	
	$dbdata = array();

	while( $row = $result->fetch_assoc()) {
		$dbdata[]=$row;
	}
	echo json_encode($dbdata);
}

function getByCode($mysqli, $code) {
	$query = "SELECT produto_id, nome, estoque, preco from produto where nome='".$code."'";
	$result = $mysqli->query($query);

	$dbdata = array();
	
	while( $row = $result->fetch_assoc()) {
		$dbdata[]=$row;
	}
	echo json_encode($dbdata);
}

function getByPrice($mysqli, $from, $to) {
	$query = "SELECT produto_id, nome, estoque, preco from produto where preco>=".$from." AND preco<=".$to;
	$result = $mysqli->query($query);

	$dbdata = array();
	
	while( $row = $result->fetch_assoc()) {
		$dbdata[]=$row;
	}
	echo json_encode($dbdata);
}

?>