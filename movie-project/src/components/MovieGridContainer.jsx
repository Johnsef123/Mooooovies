import { MovieCard } from "./MovieCard";
import "../componentsCss/MovieGridContainer.css"



export function MovieGrid({ movies, pageTitle, onMovieUpdated }) {

    if (movies.length === 0) {
        return (
            <>
                <div className="home-movies-section" style={{height:"91vh"}}>
                    <div className="empty-watchlist">Your Watchlist is Empty. Go back and find some Movies to Add</div>
                    <a className="empty-watchlist-btn" href="/HomePage">Back</a>
                </div>
            </>
        );
    }


    return (

        <div className="home-movies-section">
            <div className="home-movies-section-title">{pageTitle}</div>
            <div className="home-movie-grid" id="home-movie-grid">
                {movies.map((movie) => (
                    <MovieCard key={movie.id} movie={movie} onMovieUpdated={onMovieUpdated} />
                ))}
            </div>
        </div>

    );
}