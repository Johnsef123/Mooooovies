import { updateWatchlist } from "../API/moviesAPI";

export async function changeMovieWatchlist(movie, newWatchlistValue){
    if(!movie) return null;

    await updateWatchlist(movie.id, newWatchlistValue);

    return{
        ...movie, watchlist: newWatchlistValue,
    };
}