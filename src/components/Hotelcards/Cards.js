import './Cards.css'
// import { useEffect } from 'react';
import arrow from '../../Assets/icons1/right-arrow.png'
import star from '../../Assets/icons1/star.png'
import { Link } from 'react-router-dom';
// import { useParams } from 'react-router-dom';


function Cards({hotel}){
    


    return(

        <div className='card-container'>
            <div  >
                <div className='cardThumbnail-container'>
                    <img src={hotel.thumbnail}  className="cardThumbnail"alt="" />
                </div>
                <div className='card-base'>
                    <div className='card-details'>
                        <h3>{hotel.name}</h3>
                        <p>{hotel.location.city}, {hotel.location.state}</p>
                        {/* <p>{hotel.location.country}</p> */}
                        <p>Starting from :{hotel.startingPrice} INR</p>
                    </div>
                    <div>
                        <p>Rating:{hotel.rating} <img src={star} className="rating-star"alt="" /></p>
                            <Link to={`/view-hotel/${hotel.name}`}>    
                                <button className='card-button'>
                                    <span>View</span>
                                    <img src={arrow} alt="arrow" />
                                </button>
                            </Link>
                    </div>
                    
                </div>
            </div>
            
        </div>
    );
}

export default Cards;