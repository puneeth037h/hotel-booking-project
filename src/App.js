
import { BrowserRouter } from 'react-router-dom';
import './App.css';
// import Header from './components/Header/Header';
import Nav from './components/Nav/Nav';
// import Herosection from './components/Hero section/Herosection';
// import Features from './components/Features/Features';
import Customroutes from './components/customroutes/customroutes';
// import Contactus from './components/Contactus/Contactus';
// import Signup from './components/Signup/Signup';
import Hotels from './components/Hotels/Hotels';

function App() {
  return (
    <div className="App">
      <BrowserRouter>
        <Nav></Nav>
        <Customroutes></Customroutes>
        <Hotels></Hotels>
      </BrowserRouter>
    </div>
  );
}

export default App;
