import "./Nav.css"

function Nav(){
    return(
        <div className="Nav_bar">
            <div className="Logo">logo</div>
            <div>
            <button className="Nav_buttons">Home</button>
            <button className="Nav_buttons">Hotels</button>
            <button className="Nav_buttons">About Us</button>
            <button className="Nav_buttons">Contact Us</button>
            </div>
        </div>
    );
}

export default Nav;