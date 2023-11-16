import "./Contactus.css"

function Contactus(){
    return(
        <div className="contactus-outer-container">
            <div className="contactus-main-container">
                <div className="contact-container">
                    <div>
                        <h2>Contact us</h2>
                    </div>
                    <div className="contact_form">
                        <div className="input-container">
                            <label>First name</label>
                            <input type="text" />
                        </div>
                        <div className="input-container">
                            <label>Last name</label>
                            <input type="text" />
                        </div>
                        <div className="input-container">
                            <label>Email</label>
                            <input type="email" />
                        </div>
                        <div className="input-container">
                            <label>Mobile number</label>
                            <input type="text" />
                        </div>
                        <div className="input-container">
                            <label>Message</label>
                            <input type="text" />
                        </div>
                    </div>
                    <div className="submit-container">
                        <button className="submit_button">Submit</button>
                    </div>
                </div>
                <div className="contact-side-image">
                    <div className="contactus-quote-container">
                        <h2>"Reach out to us and turn your travel aspirations into extraordinary stays"</h2>
                    </div>

                </div>


            </div>
        </div>
    );
}
export default Contactus;