import Hoteldetails from "../../Assets/Data/Data";
import Cards from "../Hotelcards/Cards";
import './Hotels.css'

function Hotels(){

    return(
        <div className="card-display">
            {Hoteldetails.hotels.map((elm,index)=>{
                return(
                    <div>
                        <Cards hotel={elm}></Cards>
                    </div>
                );
            })}
        </div>

    );
}

export default Hotels;