import { Route,Routes } from "react-router-dom";
import Signup from "../Signup/Signup";

function Customroutes(){
    return(
        <Routes>
            <Route path="/Login" Component={<Signup></Signup>} ></Route>
        </Routes>
    );
}
export default Customroutes;