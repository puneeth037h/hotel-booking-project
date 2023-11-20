import { useState,useEffect } from "react";
import { useParams } from "react-router-dom";

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
            <h1>{hoteldetails.city}</h1>
        </div>

    );
}

export default ViewHoteldetails;