import "../componentsCss/MovieDetails.css";


export function MovieDetails({ movie }) {

    return (
        <>
            <title>{movie.title}</title>
            <section className="details-content">
                <h2 className="title">{movie.title}</h2>
                <div className="pic-video-container">
                    <div className="img-container">
                        <img src={movie.posterUrl} />
                    </div>
                    <div className="video-container">
                        <iframe src={movie.youtubeUrl} title={`${movie.title} trailer`} allowFullScreen></iframe>
                    </div>
                </div>

                <div className="details-container">

                    <p>{movie.description}</p>
                    <div className="info">
                        <div>
                            <p>Genre: {movie.genre}</p>
                            <p>Duration: {movie.duration}</p>
                        </div>
                        <div>
                            <p>Rating: {movie.rating}</p>
                        </div>

                    </div>
                </div>
            </section>
        </>
    );
}