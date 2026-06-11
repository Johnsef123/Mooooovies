import {Routes, Route} from "react-router-dom";

import { HomePage } from "./pages/HomePage";
import { MovieDetailsPage } from "./pages/MovieDetailsPage";
import { Latest } from "./pages/LatestPage";
import {Popular} from "./pages/PopularPage";
import { Watchlist } from "./pages/WatchlistPage";

import "./css/App.css";
import { ScrollToTopButton } from "./components/scrollToTopBTN";
import { Footer } from "./components/Footer";



function App(){
    return(
        <>
            <Routes>
                <Route path="/HomePage" element={<HomePage/>}/>
                <Route path="/MovieDetails/:id" element={<MovieDetailsPage/>}/>
                <Route path="/Latest" element={<Latest/>}/>
                <Route path="/Popular" element={<Popular/>}/>
                <Route path="/Watchlist" element={<Watchlist/>}/>
            </Routes>

            <ScrollToTopButton/>

            <Footer/>
        </>
    );
}

export default App;