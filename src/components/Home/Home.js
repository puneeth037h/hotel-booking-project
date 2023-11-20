import Herosection from "../Hero section/Herosection.js";
import Features from "../Features/Features.js";
import Featuredhotel from "../FeaturedHotels/FeaturedHotels.js";
import "./Home.css"
import Footer from "../Footer/Footer.js";

function Home(){
    return(
        <div>
        <Herosection></Herosection>
        <div className="Featuredhotel-container">
            <h1>Featured Hotel</h1>
            <Featuredhotel></Featuredhotel>
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