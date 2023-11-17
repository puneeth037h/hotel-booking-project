import "./Signup.css"
import { useParams } from 'react-router-dom';

function Signup(){
    // let name = useParams();

    return(
            <div className="main-container-sigin">
                {/* <h1>
                    {
                        name
                    }
                </h1> */}
                <div className="Signup-main-container">
                    <div className="signup-side-img">
                    <div className="Quote-container">
                        <h2>"Embark on a journey of comfort and luxury with a single click"</h2>
                    </div>
                    </div>
                    <div className="Main-signin-form">
                        <div className="signin-logo">
                            <h2>Welcome to</h2>
                        </div>
                        <div className="Signin_form">
                            <div className="Username-container">
                                <label>Username</label>
                                <input type="text" />
                            </div>  
                            <div className="Username-container">
                                <label>Password</label>
                                <input type="password" />
                            </div>
                            <div className="signup-checkbox-main-container">
                                <div  className="signup-checkbox-container">
                                    <input type="checkbox" />
                                    <p>Keep me signed in</p>
                                </div>
                                <p>Forgot password</p>
                            </div>
                            <div className="Signin_button_container">
                                <button className="Signin_button">Sign in</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
    );
}

export default Signup;