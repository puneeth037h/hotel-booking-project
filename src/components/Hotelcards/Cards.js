import './Cards.css'
import arrow from '../../Assets/icons1/right-arrow.png'

function Cards({hotel}){
    
    return(
        <div className='Crad-container'>
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
                        <p>Rating:{hotel.rating}</p>
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