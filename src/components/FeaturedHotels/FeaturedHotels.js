import Cards from "../Hotelcards/Cards";
import Featured_hotel from "../../Assets/Data/FeaturedhotelData";

function Featuredhotel(){
    return(
        <div className="card-display">
            {Featured_hotel.hotels.map((elm,index)=>{
                return(
                    <div>
                        <Cards hotel={elm}></Cards>
                    </div>
                );
            })}
        </div>
    );
}

export default Featuredhotel;