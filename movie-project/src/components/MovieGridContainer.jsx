import { MovieCard } from "./MovieCard";
import "../componentsCss/MovieGridContainer.css"



export function MovieGrid({ movies, pageTitle, onMovieUpdated }) {

    

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