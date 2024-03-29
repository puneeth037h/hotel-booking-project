
import './Booking.css';
import { useParams } from "react-router-dom";
import { useState,useEffect} from 'react';
import Booking_summary from '../booking summary/booking_summary';


function Booking(){ 

    let [customername, setname] = useState('')
    let [hotelSelected,sethotelSelected]=useState('')
    let [mobile, setmobile] = useState('')
    let [email, setemail] = useState('')
    let [location, setlocation] = useState('')
    let [checkin, setdate] = useState('')
    let [time , setpickup] = useState('')
    let [checkout, setdrop] = useState('')
    let [result, setresult] = useState('')
    
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

        sethotelSelected(hoteldetails.name)

    },[]);
    
    function send(){
        var data = {
            'customername':customername,
            'hotelSelected':hotelSelected,
            'mobile':mobile,
            'email':email,
            'location':location,
            'checkin':checkin,
            'time':time,
            'checkout':checkout
        }

        try{

            fetch('http://localhost:3000/hotel-details/customer' ,
            { method :'POST', headers:{'Content-Type' : 'application/json'} ,
                body: JSON.stringify(data) }
            )  .then((res) => res.json())
             .then( (data) => { setresult(data)} )
             .catch((error) => {
                console.error('Error:', error);
            });

            alert('data inserted')
        }
        catch (error){
            console.log(error)
        }
    }
    console.log(hoteldetails);

    
    return(

        <div className='main-booking-container'>
           
            <div className='booking-container'>

                <div className='booking-text'>
                    <div className='bookin-user-details'>
                        <label className='booking-label'>Name</label>
                        <input onChange={(val) => {setname(val.target.value)}} className='booking-inputbar' type="text" placeholder='enter your name' />
                
                        <label className='booking-label'>Mobile</label>
                        <input onChange={(val) => {setmobile(val.target.value)}} className='booking-inputbar' type="number" placeholder='enter your Mobile number' />
                
                        <label className='booking-label'>Email</label>
                        <input  onChange={(val) => {setemail(val.target.value)}} className='booking-inputbar' type="email" placeholder='enter your email' />
                    
                        <label className='booking-label'>location</label>
                        <input  onChange={(val) => {setlocation(val.target.value)}} className='booking-inputbar' type="text" placeholder='enter your address' />
                    </div>
                    <div className='checkin-details'>
                        
                        <label className='booking-label'>checkin</label>
                        <input onChange={(val) => {setdate(val.target.value)}} className='booking-inputbar' type="date" placeholder='enter pickup date' />
                    
                        <label className='booking-label'>checkin  time</label>
                        <input onChange={(val) => {setpickup(val.target.value)}} className='booking-inputbar' type="time" placeholder='enter pickup time' />
                    
                        <label className='booking-label'>checkout</label>
                        <input onChange={(val) => {setdrop(val.target.value)}} className='booking-inputbar' type="date" placeholder='enter droping time' />


                        {/* <h1>{hoteldetails.name}</h1> */}
                        

                    </div>
                </div>
                    <button className='button' type='submit' onClick={send}>Book Now</button>
                <div className='booking-image'>
                    {/* <img src="" alt="booking" /> */}
                </div>
                    

            </div>
            <Booking_summary></Booking_summary>
            
        
        </div>
    );
}

export default Booking;