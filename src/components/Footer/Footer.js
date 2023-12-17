import './Footer.css'

import arrow from '../../Assets/icons1/right-arrow.png'
import { Link, Outlet,useLocation  } from 'react-router-dom'
import { useEffect } from 'react'
import callicon from '../../Assets/icons1/call.png'
import locationicon from '../../Assets/icons1/location.png'
import emailicon from '../../Assets/icons1/mail.png'
import acewhitelogo from '../../Assets/images/ace hotel white.png'

function Footer(){
    const ScrollToTopOnMount = () => {
        const { pathname } = useLocation();
      
        useEffect(() => {
          window.scrollTo(0, 0);
        }, [pathname]);
      
        return null;
      };

    return(

        <div className="footer-container">
            <ScrollToTopOnMount />
            

            <form className="contact-form">
                <div>
                    <h2>Reach To Us</h2>
                </div>
                
                <div className="names-field">
                    <input type="text" id="firstname"  placeholder="first name" className='name-input'/>
                    <input type="text" id="lastname" placeholder="Last name" className='name-input'/>
                </div>

                <input  type="email" placeholder="Email" className="contact-bar"/>
                <input type="number" placeholder="Mobile number" className="contact-bar"/>
                <input type="text" placeholder="Leave a Message"  id='message-bar' className="contact-bar"/>
                <button className='submit-button'>
                    <span>Submit</span>
                    {/* <img src={arrow} alt="arrow" /> */}
                </button>

            </form>

            <div >

                <h2>Quick Links</h2>
                <div className='Quick-links-container' >
                    <Link to='/'> <button className="quick-links">Home</button> </Link>
                    <Link to='/Hotels'>  <button className="quick-links">Hotels</button> </Link>
                    <Link to='/login'> <button className="quick-links"> Login </button> </Link>
                </div>
               
            </div>

            <div className='our-details'>
                <img className='footerlogo' src={acewhitelogo}></img>
                <h2>Ace Hotels</h2>
                <div className='details'> <img src={callicon} alt="mobileno" height={20} />+91 9648759310 </div>
                <div className='details'> <img src={emailicon} alt="email" height={20} /> AceHotels@gmail.com  </div>
                <div className='details'> <img src={locationicon} alt="location" height={20} /> Banglore, Karnataka</div>
            </div>
            <Outlet></Outlet>
        </div>
    );
}

export default Footer;