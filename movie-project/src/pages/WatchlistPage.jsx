import { useEffect, useState } from "react";

import { getMovies } from "../API/moviesAPI";

import { Header } from "../components/Header";
import { MovieGrid } from "../components/MovieGridContainer";

export function Watchlist() {

    const title = "Watchlist";
    const [movies, setMovies] = useState([]);

    useEffect(() => {
        getMovies()
            .then((data) => {
                const watchlistMovies = data.filter((movie) => Number(movie.watchlist) === 1);
                setMovies(watchlistMovies);

            })
            .catch((error) => console.error(error));
    });



    if (movies.length === 0) {
        return (
            <>
                <title>{title}</title>
                <Header />
                <div className="home-movies-section" style={{ height: "91vh" }}>
                    <div className="empty-watchlist">Your Watchlist is Empty. Go back and find some Movies to Add</div>
                    <a className="empty-watchlist-btn" href="/HomePage">Back</a>
                </div>
            </>
        );
    }


    return (
        <>
            <title>{title}</title>
            <Header />

            <MovieGrid movies={movies} pageTitle={title} />
        </>

    );
}