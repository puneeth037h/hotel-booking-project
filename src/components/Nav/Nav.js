import "./Nav.css"
import { Link,Outlet } from "react-router-dom";
import logo from "../../Assets/images/ace hotel black.png"

function Nav(){
    return(
        <div className="Nav_bar">
            <img className="ACE_hote" src={logo}></img>
            <div className="nav-buttons-group">
                <Link to={'/'}><button className="Nav_buttons">Home</button></Link>
                <Link to={'/Hotels'}><button className="Nav_buttons">Hotels</button></Link>
                {/* <button className="Nav_buttons">About Us</button> */}
                <Link to={'/contact'}><button className="Nav_buttons">Contact Us</button></Link>
                <div className="sign_in-button">
                <Link to='/login/Puneeth A'> <button className="sign_in">
                <span>Log_in/sign_up</span>
                </button></Link>
                </div>
             </div>
            <Outlet></Outlet>
        </div>
    );
}

export default Nav;