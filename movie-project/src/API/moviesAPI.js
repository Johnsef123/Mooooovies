const api_url = "http://localhost/Mooooovies-API";

export async function getMovies(){
    const response = await fetch(`${api_url}/movies.php`);

    if(!response.ok){
        throw new Error ("Failed to fetch movies");
    }
    return response.json();
}

export async function getMovieByID(id){
    const response = await fetch(`${api_url}/movie.php?id=${id}`);

    if(!response.ok){
        throw new Error ("Failed to fetch movie");
    }
    return response.json();
}

export async function updateWatchlist(id, watchlist) {
  const formData = new FormData();

  formData.append("id", id);
  formData.append("watchlist", watchlist);

  const response = await fetch(`${api_url}/update-watchlist.php`, {
    method: "POST",
    body: formData,
  });

  if (!response.ok) {
    throw new Error("Failed to update watchlist");
  }

  return response.json();
}