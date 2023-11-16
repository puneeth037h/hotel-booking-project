import "./Nav.css"
import { Link } from "react-router-dom";

function Nav(){
    return(
        <div className="Nav_bar">
            <div className="Logo">logo</div>
            <div className="nav-buttons-group">
                <button className="Nav_buttons">Home</button>
                <button className="Nav_buttons">Hotels</button>
                <button className="Nav_buttons">About Us</button>
                <button className="Nav_buttons">Contact Us</button>
                <div className="sign_in-button">
                    <Link to="/Login">
                    <button className="sign_in">
                        <span>Log_in/sign_up</span>
                    </button>
                    </Link>
                </div>
             </div>
            
        </div>
    );
}

export default Nav;