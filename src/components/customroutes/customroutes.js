import { Route,Routes } from "react-router-dom";
import Signup from "../Signup/Signup";
import Home from "../Home";
import Contactus from "../Contactus/Contactus";

function Customroutes(){
    return(
        <Routes>
            <Route path="/" element={<Home></Home>}></Route>
            <Route path="/login" element={<Signup></Signup>} ></Route>
            <Route path="/contact" element={<Contactus></Contactus>}></Route>
        </Routes>
    );
}
export default Customroutes;