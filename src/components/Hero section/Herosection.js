import heroimage from "../../Assets/images/main image.jpg"
import "./Herosection.css"
function Herosection(){
    return(
        <div className="herosection">
            <img src={heroimage} alt="" className="heroimage" />
        </div>

    );
}

export default Herosection;