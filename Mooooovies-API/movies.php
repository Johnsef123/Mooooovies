<?php
header("Content-Type: application/json");
header("Access-Control-Allow-Origin: *");

require "db.php";

$sql =
"
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
ORDER BY movies.id
";

$stmt = $pdo->query($sql);
$movies = $stmt->fetchAll(PDO::FETCH_ASSOC);

echo json_encode($movies);
?>