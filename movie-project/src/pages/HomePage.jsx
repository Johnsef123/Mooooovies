import { useEffect, useState } from "react";

import { Header } from "../components/Header.jsx";
import { Hero } from "../components/Hero.jsx";
import { MovieGrid } from "../components/MovieGridContainer.jsx";

import { getMovies } from "../API/moviesAPI.js";

export function HomePage() {
  const [movies, setMovies] = useState([]);
  const [HeroMovie, setHeroMovie] = useState(null);

  useEffect(() => {
    getMovies()
      .then((data) => {
        setMovies(data);

        const moviesWithBackUrl = data.filter((movie) => movie.backUrl);

        const randomNumber = Math.floor(Math.random() * moviesWithBackUrl.length);
        const randomMovie = moviesWithBackUrl[randomNumber];

        setHeroMovie(randomMovie);

      })
      .catch((error) => console.error(error));
  }, []);


  function handleMovieUpdated(updatedMovie) {
    setMovies((previousMovies) =>
      previousMovies.map((movie) =>
        movie.id === updatedMovie.id ? updatedMovie : movie
      )
    );

    setHeroMovie((previousHeroMovie) =>
      previousHeroMovie && previousHeroMovie.id === updatedMovie.id
        ? updatedMovie
        : previousHeroMovie
    );
  }



  return (

    <>
      <title>HomePage</title>
      <Header />
      <Hero HeroMovie={HeroMovie} onMovieUpdated={handleMovieUpdated} />
      <MovieGrid movies={movies} onMovieUpdated={handleMovieUpdated} pageTitle="All Movies" />
    </>





  );
}