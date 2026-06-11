import { useEffect, useState } from "react";
import "../componentsCss/ScrollToTopBTN.css";

export function ScrollToTopButton() {

    const [isVisible, setIsVisible] = useState(false);

    useEffect(()=> {
    function handleBTN(){
        if(window.scrollY>300){
            setIsVisible(true);
        }
        else{
            setIsVisible(false);
        }
    }

    window.addEventListener("scroll", handleBTN);

    return () => {
        window.removeEventListener("scroll", handleBTN);
    };


    }, []);

    function scrollToTop(){
        window.scrollTo({
            top:0,
            behavior: "smooth",
        });
    }



    if(!isVisible) return;

    
    return (
        <button id="top-btn" className="top-btn" onClick={scrollToTop}>
            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" className="bi bi-arrow-up"
                viewBox="0 0 16 16">
                <path fillRule="evenodd"
                    d="M8 15a.5.5 0 0 0 .5-.5V2.707l3.146 3.147a.5.5 0 0 0 .708-.708l-4-4a.5.5 0 0 0-.708 0l-4 4a.5.5 0 1 0 .708.708L7.5 2.707V14.5a.5.5 0 0 0 .5.5" />
            </svg>
        </button>
    );
}