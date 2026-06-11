<?php
header("Content-Type: application/json");
header("Access-Control-Allow-Origin: *");

require "db.php";

$id = $_GET["id"] ?? null;

if (!$id) {
    http_response_code(400);
    echo json_encode(["error" => "Movie ID is required"]);
    exit;
}

$sql = "
SELECT 
  movies.id,
  movies.title,
  genres.name AS genre,
  movies.releaseYear,
  movies.duration,
  movies.watchlist,
  movies.rating,
  movies.posterUrl,
  movies.backUrl,
  movies.youtubeUrl,
  movies.description
FROM movies
LEFT JOIN genres ON movies.genre_id = genres.id
WHERE movies.id = ?
";

$stmt = $pdo->prepare($sql);
$stmt->execute([$id]);

$movie = $stmt->fetch(PDO::FETCH_ASSOC);

if (!$movie) {
    http_response_code(404);
    echo json_encode(["error" => "Movie not found"]);
    exit;
}

echo json_encode($movie);
?>