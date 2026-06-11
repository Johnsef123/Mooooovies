import { useEffect, useState } from "react";
import { Header } from "../components/Header";
import { MovieGrid } from "../components/movieGridContainer";
import { getMovies } from "../API/moviesAPI";



export function Popular() {

    const title = "Popular";
    const [movies, setMovies] = useState([]);

    useEffect(() => {
        getMovies()
            .then((data) => {
                const popularMovies = [...data].sort(
                    (a, b) => Number(b.rating) - Number(a.rating)
                );
                setMovies(popularMovies);

            })
            .catch((error)=> console.error(error));
    })

    return (
        <>
            <title>{title}</title>
            <Header />

            <MovieGrid movies={movies} pageTitle={title} />
        </>
    );
}