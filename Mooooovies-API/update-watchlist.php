<?php
header("Content-Type: application/json");
header("Access-Control-Allow-Origin: *");

require "db.php";

$id = $_POST["id"] ?? null;
$watchlist = $_POST["watchlist"] ?? null;

$sql = "UPDATE movies SET watchlist = ? WHERE id = ?";
$stmt = $pdo->prepare($sql);
$stmt->execute([$watchlist, $id]);

echo json_encode([
    "success" => true,
    "id" => $id,
    "watchlist" => $watchlist
]);
?>