import Herosection from "../Hero section/Herosection.js";
import Features from "../Features/Features.js";
import Featuredhotel from "../FeaturedHotels/FeaturedHotels.js";
import "./Home.css"
import Footer from "../Footer/Footer.js";
import { Link } from "react-router-dom";
import arrow from '../../Assets/icons1/right-arrow.png'

function Home(){
    return(
        <div>
        <Herosection></Herosection>
        <div className="Featuredhotel-container">
            <h1>Featured Hotel</h1>
            <Featuredhotel></Featuredhotel>
            <Link to={'/Hotels'}>    
                <button className='viewmore-button'>
                    <span>view more</span>
                    <img src={arrow} alt="arrow" />
                </button>
            </Link>
        </div>
        <div className="Hotel_features">
            <h1>Features</h1>
            <Features></Features>
        </div>
        <Footer></Footer>
        </div>
    );
}

export default Home;