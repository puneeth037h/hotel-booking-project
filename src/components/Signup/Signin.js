import "./Signin.css"
import { useParams } from 'react-router-dom';
import { useState,useEffect } from "react";

function Signin(){
    // let name = useParams();
        const [username, setUsername] = useState('');
        const [password, setPassword] = useState('');
      
        const handleLogin = async () => {
          // Call your backend authentication API here
          const response = await fetch('http://localhost:3000/hotel-details/user', {
            method: 'POST',
            headers: {
              'Content-Type': 'application/json',
            },
            body: JSON.stringify({ username, password }),
          });
      
          if (response.ok) {
            // Handle successful login
            console.log('Login successful');
          } else {
            // Handle login failure
            console.error('Login failed');
          }
        };

    return(
            <div className="main-container-sigin">
                <div className="Signup-main-container">
                    <div className="signup-side-img">
                        <div className="Quote-container">
                            <h2>"Embark on a journey of comfort and luxury with a single click"</h2>
                        </div>
                    </div>
                    <div className="Main-signin-form">
                        <div className="signin-logo">
                            <h2>Welcome to hotel4rent</h2>
                        </div>
                        <div className="Signin_form">
                            <div className="Username-container">
                                <label>Username</label>
                                <input
                                    type="text"
                                    value={username}
                                    onChange={(e) => setUsername(e.target.value)}
                                />
                            </div>  
                            <div className="Username-container">
                                <label>Password</label>
                                <input
                                    type="password"
                                    value={password}
                                    onChange={(e) => setPassword(e.target.value)}
                                />
                            </div>
                            <div className="signup-checkbox-main-container">
                                <p>Forgot password</p>
                            </div>
                            <div className="signin-buttons">
                                
                                    <button className="Signin_button" onClick={handleLogin}>Sign in</button>
                                    or
                                    <button className="Signin_button">Sign up</button>
                                
                            </div>
                            
                        </div>
                    </div>
                </div>
            </div>
    );
}

export default Signin;