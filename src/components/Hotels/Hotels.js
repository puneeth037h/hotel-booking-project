import Hoteldetails from "../../Assets/Data/Data";
import Cards from "../Hotelcards/Cards";

function Hotels(){

    return(
        <div>
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