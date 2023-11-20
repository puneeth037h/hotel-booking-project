import Hoteldetails from "../../Assets/Data/Data";
import Cards from "../Hotelcards/Cards";
import './Hotels.css'
import Footer from "../Footer/Footer";

function Hotels(){

    return(
        <div>
        <div className="card-display">
            {Hoteldetails.hotels.map((elm,index)=>{
                return(
                    <div>
                        <Cards hotel={elm}></Cards>
                    </div>
                );
            })}
            
        </div>
        <Footer></Footer>
        </div>

    );
}

export default Hotels;