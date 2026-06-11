import { useEffect, useState } from "react";
import { getMovieByID } from "../API/moviesAPI";
import { Header } from "../components/Header";
import { MovieDetails } from "../components/MovieDetails";
import { useParams } from "react-router-dom";



export function MovieDetailsPage() {
    const { id } = useParams();
    const [movie, setMovie] = useState([]);

    useEffect(() => {
        getMovieByID(id)
            .then((data) => {
                console.log(data);
                setMovie(data);
            })
            .catch((error) => console.error(error));
    }, [id]);

    useEffect(() => {
        window.scrollTo(0, 0);
    });

    return (
        <>
            <Header />

            <MovieDetails movie={movie} />
        </>

    );
}