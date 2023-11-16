import { Route,Routes } from "react-router-dom";
import Signup from "../Signup/Signup";
import Home from "../Home";

function Customroutes(){
    return(
        <Routes>
            <Route path="/" element={<Home></Home>}></Route>
            <Route path="/login" element={<Signup></Signup>} ></Route>
        </Routes>
    );
}
export default Customroutes;