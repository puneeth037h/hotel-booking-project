import './Cards.css'
import { useEffect } from 'react';
import arrow from '../../Assets/icons1/right-arrow.png'
import star from '../../Assets/icons1/star.png'


function Cards({hotel}){

    // useEffect(() => {

    //     const card = document.querySelector('.Crad-container');
    //     const cardImage = document.querySelector('.cardThumbnail');

    //     const handleMouseEnter = () => {
    //       cardImage.style.transform = 'translateY(-40px)';
    //       cardImage.style.boxShadow = ' 0px 14px 12px  rgba(0, 0, 0, 0.8)';
    //     };

    //     const handleMouseLeave = () => {
    //         cardImage.style.transform = 'translateY(0px)';
    //         cardImage.style.boxShadow = 'none';
    //     };

    //     card.addEventListener('mouseenter', handleMouseEnter);
    //     card.addEventListener('mouseleave', handleMouseLeave);
    
        
        
    //     // Cleanup the event listener when the component unmounts
    //     return () => {
    //         card.removeEventListener('mouseenter', handleMouseEnter);
    //         card.removeEventListener('mouseleave', handleMouseLeave);
    //     };
    
    // },[]);



    return(
        
        <div className='card-container'>
            <div >
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
                        <button className='card-button'>
                                <span>View</span>
                                <img src={arrow} alt="arrow" />
                        </button>
                    </div>
                    
                </div>
            </div>
            
        </div>
    );
}

export default Cards;