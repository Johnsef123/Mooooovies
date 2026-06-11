import { changeMovieWatchlist } from "../utils/watchlistChanger.js";

export function WatchlistButton({ movie, onMovieUpdated, className = "" }) {

    function handleClick(event) {
        event.preventDefault();
        
        
        const newWatchlistValue = Number(movie.watchlist) === 1 ? 0 : 1;

        changeMovieWatchlist(movie, newWatchlistValue)
            .then((updatedMovie) => {
                onMovieUpdated(updatedMovie);
            })
            .catch((error) => console.error(error));
    }


    return (
        <button
            type="button"
            className={className}
            onClick={handleClick}
        >
            {Number(movie.watchlist) === 1
                ? "Remove from Watchlist"
                : "Add to Watchlist"}
        </button>
    );
}