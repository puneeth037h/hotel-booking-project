import { Route,Routes } from "react-router-dom";
import Signup from "../Signup/Signin";
import Home from "../Home/Home";
import Contactus from "../Contactus/Contactus";
import Hotels from "../Hotels/Hotels";
import ViewHoteldetails from "../Hotel_details/Hotel_details";

function Customroutes(){
    return(
        <Routes>
            <Route path="/" element={<Home></Home>}></Route>
            <Route path="/login/:fullName?" element={<Signup></Signup>} ></Route>
            <Route path="/contact" element={<Contactus></Contactus>}></Route>
            <Route path="/Hotels" element={<Hotels></Hotels>}></Route>
            <Route path="/view-hotel/:name?" element={<ViewHoteldetails></ViewHoteldetails>}></Route>
        </Routes>
    );
}
export default Customroutes;