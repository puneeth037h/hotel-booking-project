// import Hoteldetails from "../../Assets/Data/Data";
import Cards from "../Hotelcards/Cards";
import "./Hotels.css";
import Footer from "../Footer/Footer";
import { useEffect, useState } from "react";

function Hotels() {

  let [Hotelslist, Sethotelslist] = useState([]);

  useEffect(() => {
    try {
      fetch("http://localhost:3000/Allhotels", { method: "POST" })
        .then((res) => res.json())
        .then((data) => {Sethotelslist(data); console.log(data)})
        .catch((error) => console.log(error));
    } catch (error) {
      console.log(error);
    }
  }, []);

  let [search, setsearch] = useState("");
  // let [searchloc, setloc] = useState("");
  let [result, setresult] = useState([]);
  let [HotelsFound, setHotelsFound] = useState(true);

  useEffect(() => {

    if (search === '') {
      setresult([]);
      setHotelsFound(true)
    }
      else {
      let data = Hotelslist.filter( Hotel =>
        Hotel.name.toLowerCase().includes(search.toLowerCase())
        ||  Hotel.city.toLowerCase().includes(search.toLowerCase())
        || Hotel.state.toLowerCase().includes(search.toLowerCase())
        // || Hotel.rating.includes(search)
        
      );
      console.log('Filtered data:', data);
      setresult(data);
      setHotelsFound(true);
    }

  }, [search]);

  useEffect(() => {
      if( result.length === 0 && search.length > 1 ){
          setHotelsFound(false)
      }
      else{
          setHotelsFound(true)
      }
  },[search])

  const Hotellist = result.length > 0 ? result : Hotelslist;

  return (
    <div>

      <div className="">
        <h3>Enter Hotel Name</h3>
        <input
          onChange={(val) => setsearch(val.target.value)}
          placeholder="Search something..."
          className="input"
          name="text"
          type="text"
        />
      </div>

      <div className="card-display">

        {HotelsFound ? (

         Hotellist.map((elm, index) => {

            return (
              <div key={index.id}>
                <Cards hotel={elm}></Cards>
              </div>
            );

          })
        ) : (
          <div>
            <p>Sorry : No Hotel Found</p>
          </div>
        )}
      </div>

      <Footer></Footer>

    </div>
  );
}

export default Hotels;
