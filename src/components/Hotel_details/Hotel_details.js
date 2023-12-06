import { useState,useEffect } from "react";
import { useParams } from "react-router-dom";
import "./Hotel_details.css";
import arrow from '../../Assets/icons1/right-arrow.png';
import star from '../../Assets/icons1/star.png'
import { Link } from "react-router-dom";

function ViewHoteldetails(){
    let { name } = useParams();

    let [hoteldetails,setDetails] = useState({})
    let [hotelimages,setimages] = useState({})

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
    useEffect(()=>{

        let bodyData = { "name":name
        };

        fetch( 'http://localhost:3000/hotel_images',
            {
                method:"POST",
                body:JSON.stringify(bodyData),
                headers: { 'Content-Type': 'application/json'},
            },
        )

        .then((res)=>{
            res.json().then((val)=>{
                console.log(val)
                setimages(val[0])
            }
        )})

    },[]);
    return(
        <div className="Hotel-details-container">
            <div className="Hotel_name">
                <h2>{hoteldetails.name}</h2>
            </div>
            <div className="Hotel_location">
                <h3>{hoteldetails.city},{hoteldetails.state}</h3>
                {/* <h2>address:{hoteldetails.address}</h2> */}
            </div>
            <div className="Hotel_images">
                <img className="hotel-thumbnail" src={hoteldetails.thumbnail} alt="" />
                <div>
                    <img className="hotel-image1" src={hotelimages.image1} alt="" />
                    <div>
                        <img className="hotel-image2" src={hotelimages.image2} alt="" />
                        <img className="hotel-image3" src={hotelimages.image3} alt="" />
                    </div>
                </div>
                
                       
            </div>
            <div className="pricing-rating-container" >
                <div className="pricing-container">
                    <h2>Starting at {hoteldetails.starting_price} INR/Night</h2>
                    <Link to={'/Booking'}>
                        <button className='Booknow-button'>
                            <span>Book Now</span>
                            <img src={arrow} alt="arrow" />
                        </button>
                    </Link>
                </div>
                {/* <h2>{hoteldetails.rating}</h2> */}
                <h2>Rating:{hoteldetails.rating} <img src={star} className="rating-star"alt="" /></h2>
            </div>
            <div>
                <p>{hoteldetails.description}</p>
            </div>
            
            
            <h2>contact</h2>
            <h3>Phone:{hoteldetails.phone}</h3>
            <h3>Email:{hoteldetails.email}</h3>

            <div>
            <iframe src={hoteldetails.map} width="100%" height="450" style={{ border: '0' }} allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
            </div>
        </div>

    );
}

export default ViewHoteldetails;