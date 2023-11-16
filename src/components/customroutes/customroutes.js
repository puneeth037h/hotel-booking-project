import { Route,Routes } from "react-router-dom";
import Signup from "../Signup/Signup";

function Customroutes(){
    return(
        <Routes>
            <Route path="/login" element={<Signup></Signup>} ></Route>
        </Routes>
    );
}
export default Customroutes;