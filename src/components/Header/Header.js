import "./Header.css"

function Header(){
    return(
        <div className="header_container">
            <p className="Header-font">Ph: +91 8527419630</p>
            <p className="Header-font">Email:something@gmail.com</p>
            {/* <button className="sign_in">sign in/sign up</button> */}
            <button className="sign_in">
                <span>Log_in/sign_up</span>
            </button>
        </div>
    );
}
export default Header;