import { useState,useEffect } from "react";
import { useParams } from "react-router-dom";
import "./Hotel_details.css"

function ViewHoteldetails(){
    let { name } = useParams();

    let [hoteldetails,setDetails] = useState({})

    useEffect(()=>{

        let bodyData = { "name":name
        };

        fetch( 'http://localhost:3000/hotels',
            {
                method:"POST",
                body:JSON.stringify(bodyData),
                headers: { 'Content-Type': 'application/json'},
            },
        )

        .then((res)=>{
            res.json().then((val)=>{
                console.log(val)
                setDetails(val[0])
            }
        )})

    },[]);
    return(
        <div>
            <div className="Hotel_name">
                <h1>{hoteldetails.name}</h1>
            </div>
            <div className="Hotel_location">
                <h2>{hoteldetails.city},{hoteldetails.state}</h2>
                {/* <h2>address:{hoteldetails.address}</h2> */}
            </div>
            <div className="Hotel_images">
                <img className="hotel-thumbnail" src={hoteldetails.thumbnail} alt="" />
            </div>
            <div className="pricing-rating-container" >
                <div className="pricing-container">
                    <h1>Starting at {hoteldetails.starting_price}</h1>
                    <button>Book now</button>
                </div>
                <h2>{hoteldetails.rating}</h2>
            </div>
            <div>
                <p>{hoteldetails.description}</p>
            </div>
            
            
            <h1>contact</h1>
            <h2>Phone:{hoteldetails.phone}</h2>
            <h2>Email:{hoteldetails.email}</h2>
        </div>

    );
}

export default ViewHoteldetails;