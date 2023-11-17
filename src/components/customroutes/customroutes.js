import { Route,Routes } from "react-router-dom";
import Signup from "../Signup/Signup";
import Home from "../Home";
import Contactus from "../Contactus/Contactus";
import Hotels from "../Hotels/Hotels";

function Customroutes(){
    return(
        <Routes>
            <Route path="/" element={<Home></Home>}></Route>
            <Route path="/login/:fullName?" element={<Signup></Signup>} ></Route>
            <Route path="/contact" element={<Contactus></Contactus>}></Route>
            <Route path="/Hotels" element={<Hotels></Hotels>}></Route>
        </Routes>
    );
}
export default Customroutes;