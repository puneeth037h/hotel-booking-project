import { useState } from "react";
import "./Contactus.css"

function Contactus(){
    let [first_name,setfirst_name]=useState();
    let [last_name,setlast_name]=useState();
    let [email,setemail]=useState();
    let [mobile,setmobile]=useState();
    let [message,setmessage]=useState();
    let [result,setresult]=useState();

    function send(){
        var data = {
            'first_name':first_name,
            'last_name':last_name,
            'email':email,
            'mobile':mobile,
            'message':message
        }

        try{

            fetch('http://localhost:3000/message' ,
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
                            <input onChange={(val) => {setfirst_name(val.target.value)}} type="text" />
                        </div>
                        <div className="input-container">
                            <label>Last name</label>
                            <input onChange={(val) => {setlast_name(val.target.value)}}type="text" />
                        </div>
                        <div className="input-container">
                            <label>Email</label>
                            <input onChange={(val) => {setemail(val.target.value)}}  type="email" />
                        </div>
                        <div className="input-container">
                            <label>Mobile number</label>
                            <input onChange={(val) => {setmobile(val.target.value)}} type="text" />
                        </div>
                        <div className="input-container">
                            <label>Message</label>
                            <input onChange={(val) => {setmessage(val.target.value)}} type="text" />
                        </div>
                    </div>
                    <div className="submit-container">
                        <button  onClick={send} className="submit_button">Submit</button>
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