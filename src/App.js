
import { BrowserRouter } from 'react-router-dom';
import './App.css';
// import Header from './components/Header/Header';
import Nav from './components/Nav/Nav';

import ScrollToTop from './components/ScrollToTop/ScrollToTop';
import Customroutes from './components/customroutes/customroutes';
// import Contactus from './components/Contactus/Contactus';
// import Signup from './components/Signup/Signup';
import Hotels from './components/Hotels/Hotels';
import Signup from './components/Signup/Signup';

function App() {
  return (
    <div className="App">
      <BrowserRouter>
        <ScrollToTop />
        <Nav></Nav>
        <Customroutes></Customroutes>
        {/* <Hotels></Hotels> */}
      </BrowserRouter>
    </div>
  );
}

export default App;
