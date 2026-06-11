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


    return (
        <>
            <title>{title}</title>
            <Header />

            <MovieGrid movies={movies} pageTitle={title} />
        </>

    );
}