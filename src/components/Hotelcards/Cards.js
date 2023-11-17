import './Cards.css'

function Cards({hotel}){
    
    return(
        <div className='Crad-container'>
            <div>
                <img src={hotel.thumbnail}  className="cardThumbnail"alt="" />
            </div>
            <div>
                <p>{hotel.name}</p>
                <p>{hotel.location.city}</p>
                <p>{hotel.location.state}</p>
                <p>{hotel.location.country}</p>
            </div>
        </div>
    );
}

export default Cards;