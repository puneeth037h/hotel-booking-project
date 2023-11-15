import "./Features.css"
import booking from '../../Assets/Icons/booking.png'
import room from '../../Assets/Icons/room.png'
import support from '../../Assets/Icons/help-desk.png'
import dining from '../../Assets/Icons/cutlery.png'

function Features(){
    return(
        <div className="Features-container">
            <div className="Features-dual">
                <div className="Features">
                    <img src={booking} alt="" className="features-icon"/>
                    <div>
                        <h2 className="Features-headfont">Online Booking System:</h2>
                        <p className="Features-font">Implement a user-friendly and secure online booking system that allows guests to easily make reservations through the hotel's website or mobile app. Ensure that the process is intuitive, with clear instructions and visuals, making it convenient for guests to choose room types, select dates, and confirm their bookings.</p>
                    </div>
                </div>
                <div className="Features">
                    <img src={room} alt="" className="features-icon"/>
                    <div>
                        <h2 className="Features-headfont">Room Variety and Amenities:</h2>
                        <p className="Features-font">Provide a range of room options to cater to different guest preferences and needs. Clearly showcase the amenities each room type offers, such as free Wi-Fi, air conditioning, in-room entertainment, complimentary toiletries, and other features that contribute to a comfortable stay.</p>
                    </div>
                </div>
            </div>
            <div className="Features-dual">
                <div className="Features">
                    <img src={support} alt="" className="features-icon" />
                    <div>
                        <h2 className="Features-headfont">Customer Service and Concierge Services:</h2>
                        <p className="Features-font">Offer exceptional customer service to attend to guests' needs promptly. Consider implementing a concierge service that can assist with booking local tours, transportation, restaurant reservations, and other activities, providing a seamless and enjoyable stay.</p>
                    </div>
                </div>
                <div className="Features">
                    <img src={dining} alt="" className="features-icon"/>
                    <div>
                        <h2 className="Features-headfont">On-Site Dining Options:</h2>
                        <p className="Features-font">Include on-site dining options, such as a restaurant, café, or room service, offering diverse menus to accommodate different tastes and dietary preferences. Providing quality dining experiences adds convenience for guests who may prefer to dine within the hotel premises.</p>
                    </div>
                </div>
            </div>
        </div>
    );
}

export default Features;