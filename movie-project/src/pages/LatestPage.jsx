import { useEffect, useState } from "react"
import { Header } from "../components/Header";
import { MovieGrid } from "../components/movieGridContainer";
import { getMovies } from "../API/moviesAPI";


export function Latest() {

    const title = "Latest";
    const [movies, setMovies] = useState([]);


    useEffect(() => {
        getMovies()
            .then((data) => {
                const latestMovies = [...data].sort((a, b) => Number(b.releaseYear) - Number(a.releaseYear));
                setMovies(latestMovies);
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