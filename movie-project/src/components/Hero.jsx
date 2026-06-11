import "../componentsCss/Hero.css";
import {Link} from "react-router-dom";
import { WatchlistButton } from "./WatchlistButton";


export function Hero({ HeroMovie, onMovieUpdated}) {

    
    
    if (!HeroMovie) {
        return null;
    }


    

    return (



        <section className="hero-section" style={{ backgroundImage: `url(${HeroMovie.backUrl})` }}>
            <div className="hero-content">
                <div className="hero-title">{HeroMovie.title}</div>
                <div className="hero-bottom">
                    <div className="description">{HeroMovie.description}</div>
                    <div className="hero-btns">
                        <Link to={`/MovieDetails/${HeroMovie.id}`}>View Details</Link>
                        <WatchlistButton movie={HeroMovie} className="add-to-watchlist-btn" onMovieUpdated={onMovieUpdated}/>
                    </div>
                </div>

            </div>

        </section >

    );
}